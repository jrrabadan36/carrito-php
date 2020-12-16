<?php
    include "global/config.php";
    include "global/conexion.php";
    include "carrito.php";
    include "template/cabecera.php";
?>
<?php
    // $clientId = "ATAyLSGgkwKrplcTkYZpc2zkq1GcIVInGHJEPJqwZ2U6tLxS8XSdcbFlrfZvARhG5wAIRx4LBsbHLTxN";
    // $secret = "EGQDPCNc9xIbnHMZHOMakug35-yUFTPhXFobr_zBIwyJYmsMXP0FWoCpCB-QM4G00Akb8EgBpFLmVTIx";

    // Obtener el token por medio de las credenciales
    $login = curl_init(LINKAPI."/v1/oauth2/token");
    curl_setopt($login, CURLOPT_RETURNTRANSFER, TRUE);
    curl_setopt($login, CURLOPT_USERPWD, CLIENTID.":".SECRET);
    curl_setopt($login, CURLOPT_POSTFIELDS, "grant_type=client_credentials");
    $respuesta = curl_exec($login);

    $objRespuesta = json_decode($respuesta);
    $accessToken = $objRespuesta->access_token;

    // Obtener informaciónd e la venta (para contrastar)
    $venta = curl_init(LINKAPI."/v1/payments/payment/".$_GET["paymentID"]);
    curl_setopt($venta, CURLOPT_HTTPHEADER, array("Content-Type: application/json", "Authorization: Bearer ".$accessToken));
    curl_setopt($venta, CURLOPT_RETURNTRANSFER, TRUE);
    $respuestaVenta = curl_exec($venta);

    $objDatosTransaccion = json_decode($respuestaVenta); // Lo conbierto de json a objeto para obtener la información
    $state = $objDatosTransaccion->state;
    $email = $objDatosTransaccion->payer->payer_info->email;

    $total = $objDatosTransaccion->transactions[0]->amount->total;
    $currency = $objDatosTransaccion->transactions[0]->amount->currency;
    $custom = $objDatosTransaccion->transactions[0]->custom;

    $clave = explode("#", $custom);

    $SID = $clave[0];
    $claveVenta = openssl_decrypt($clave[1], COD, KEY);

    curl_close($venta);
    curl_close($login);

    if ($state == "approved") {
        $mensajePaypal = "<h3>Pago aprobado.</h3>";

        $sentencia = $pdo->prepare("UPDATE `tblventas` 
                                        SET `PaypalDatos` = :PAYPALDATOS, `status` = 'aprobado' 
                                        WHERE `tblventas`.`ID` = :ID;");
        $sentencia->bindParam(":ID", $claveVenta);
        $sentencia->bindParam(":PAYPALDATOS", $respuestaVenta);
        $sentencia->execute();

        $sentencia = $pdo->prepare("UPDATE `tblventas` SET `status` = 'completo' 
                                        WHERE `ClaveTransaccion` = :CLAVETRANSACCION
                                        AND Total= :TOTAL
                                        AND ID = :ID");

        $sentencia->bindParam(":CLAVETRANSACCION", $SID);
        $sentencia->bindParam(":TOTAL", $total);
        $sentencia->bindParam(":ID", $claveVenta);
        $sentencia->execute();

        $completado = $sentencia->rowCount(); // Para saber cuantos registros se han modificado, es una manera de saber que han sido afectados con la ultima sentencia ejecutada que seria la del status completado
        session_destroy();
    } else {
        $mensajePaypal = "<h3>Hay un problema con el pago de PayPal.</h3>";
    }

    // echo $mensajePaypal;
?>

<div class="jumbotron">
    <h1 class="display-4">!Listo¡</h1>
    <hr class="my-4">
    <p class="lead"><?php echo $mensajePaypal; ?></p>
    <p>
        <?php 
            if ($completado >= 1) {
                $sentencia = $pdo->prepare("SELECT * FROM tbldetalleventa, tblproductos 
                                    WHERE tbldetalleventa.IDPRODUCTO = tblproductos.ID 
                                    AND tbldetalleventa.IDVENTA = :ID");

                $sentencia->bindParam(":ID", $claveVenta);
                $sentencia->execute();

                $listaProductos = $sentencia->fetchAll(PDO::FETCH_ASSOC);
                // print_r($listaProductos);
            }
        ?>
        <div class="row">
            <?php foreach ($listaProductos as $producto) { ?>
                <div class="col-2">
                    <div class="card">
                        <img class="card-img-top" src="<?php echo $producto['Imagen']; ?>" alt="">
                        <div class="card-body">
                            <p class="card-text"><?php echo $producto['Nombre']; ?></p>

                            <?php if ($producto['DESCARGADO'] < DESCARGASPERMITIDAS) { ?>
                                <form action="descargas.php" method="POST">
                                    <input type="hidden" name="IDVENTA" id="" value="<?php echo openssl_encrypt($claveVenta, COD, KEY); ?>">
                                    <input type="hidden" name="IDPRODUCTO" id="" value="<?php echo openssl_encrypt($producto['IDPRODUCTO'], COD, KEY); ?>">
                                    <button class="btn btn-success" type="submit">Descargar</button>
                                </form>
                            <?php } else { ?>
                                <button class="btn btn-success" type="button" disabled>Descargar</button>
                            <?php } ?>
                        </div>
                    </div>
                </div>
            <?php } ?>
        </div>
    </p>
</div>

<?php include "template/pie.php"; ?>