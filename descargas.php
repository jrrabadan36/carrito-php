<?php
    include "global/config.php";
    include "global/conexion.php";
    include "carrito.php";
?>

<?php 
    if ($_POST) {
        $IDVENTA = openssl_decrypt($_POST["IDVENTA"], COD, KEY);
        $IDPRODUCTO = openssl_decrypt($_POST["IDPRODUCTO"], COD, KEY);

        $sentencia = $pdo->prepare("SELECT * from `tbldetalleventa`
                                    WHERE IDVENTA = :IDVENTA
                                    AND IDPRODUCTO = :IDPRODUCTO
                                    AND DESCARGADO<".DESCARGASPERMITIDAS);

        $sentencia->bindParam(":IDVENTA", $IDVENTA);
        $sentencia->bindParam(":IDPRODUCTO", $IDPRODUCTO);
        $sentencia->execute();

        $listaProductos = $sentencia->fetchAll(PDO::FETCH_ASSOC);
        print_r($listaProductos);

        if ($sentencia->rowCount()) {
            echo "Archivo en descarga...";

            $nombreArchivo = "archivos/".$listaProductos[0]['IDPRODUCTO'].".pdf";
            $nuevoNombreArchivo = $_POST['IDVENTA'].$_POST['IDPRODUCTO'].".pdf";
            echo $nuevoNombreArchivo;

            header("Content-Transfer-Encoding: binary");
            header("Content-type: application/force-download");
            header("Content-Disposition: attachment; filename=$nuevoNombreArchivo");
            readfile("$nombreArchivo");

            $sentencia = $pdo->prepare("UPDATE `tbldetalleventa` SET DESCARGADO = DESCARGADO + 1
                                    WHERE IDVENTA = :IDVENTA
                                    AND IDPRODUCTO = :IDPRODUCTO");

            $sentencia->bindParam(":IDVENTA", $IDVENTA);
            $sentencia->bindParam(":IDPRODUCTO", $IDPRODUCTO);
            $sentencia->execute();
        } else {
            include "template/cabecera.php";
            echo "<br><br><br><br><h2>Tus descargas se agotaron </h2>";
            include "template/pie.php"; 
        }
    }
?>