<?php
    session_start();
    $mensaje = "";

    if (isset($_POST["btnAccion"])) {
        switch ($_POST["btnAccion"]) {
            case "Agregar":
                if (is_numeric(openssl_decrypt($_POST["id"], COD, KEY))) {
                    $ID = openssl_decrypt($_POST["id"], COD, KEY);
                    $mensaje .= "OK ID correcto ".$ID."<br>";
                } else {
                    $mensaje .= "Error ID incorrecto ".$ID."<br>";
                }

                if (is_string(openssl_decrypt($_POST["nombre"], COD, KEY))) {
                    $NOMBRE = openssl_decrypt($_POST["nombre"], COD, KEY);
                    $mensaje .= "OK nombre correcto ".$NOMBRE."<br>";
                } else {
                    $mensaje .= "Error nombre incorrecto ".$NOMBRE."<br>";
                }

                if (is_numeric(openssl_decrypt($_POST["cantidad"], COD, KEY))) {
                    $CANTIDAD = openssl_decrypt($_POST["cantidad"], COD, KEY);
                    $mensaje .= "OK cantidad correcto ".$CANTIDAD."<br>";
                } else {
                    $mensaje .= "Error cantidad incorrecto ".$CANTIDAD."<br>";
                }

                if (is_numeric(openssl_decrypt($_POST["precio"], COD, KEY))) {
                    $PRECIO = openssl_decrypt($_POST["precio"], COD, KEY);
                    $mensaje .= "OK precio correcto ".$PRECIO."<br>";
                } else {
                    $mensaje .= "Error precio incorrecto ".$PRECIO."<br>";
                }

                if (!isset($_SESSION["CARRITO"])) {
                    $producto = array(
                        "ID" => $ID,
                        "NOMBRE" => $NOMBRE,
                        "CANTIDAD" => $CANTIDAD,
                        "PRECIO" => $PRECIO
                    );
                    $_SESSION["CARRITO"][0] = $producto;
                    $mensaje = "Producto agregado al carrito";
                } else {
                    $idProductos = array_column($_SESSION["CARRITO"], "ID");

                    if (in_array($ID, $idProductos)) {
                        echo "<script>alert('El producto ya ha sido seleccionado...');</script>";
                        $mensaje = "";
                    } else {
                        $numeroProductos = count($_SESSION["CARRITO"]);
                        $producto = array(
                            "ID" => $ID,
                            "NOMBRE" => $NOMBRE,
                            "CANTIDAD" => $CANTIDAD,
                            "PRECIO" => $PRECIO
                        );
                        $_SESSION["CARRITO"][$numeroProductos] = $producto;
                        $mensaje .= "Producto agregado al carrito";
                    }
                }
                // $mensaje = print_r($_SESSION, true);
            break;

            case "Eliminar":
                if (is_numeric(openssl_decrypt($_POST["id"], COD, KEY))) {
                    $ID = openssl_decrypt($_POST["id"], COD, KEY);

                    foreach ($_SESSION["CARRITO"] as $indice=>$producto) {
                        if ($producto["ID"] == $ID) {
                            unset($_SESSION["CARRITO"][$indice]);
                            echo "<script>alert('Elemento borrado...');</script>";
                        }
                    }
                } else {
                    $mensaje .= "Error.. ID incorrecto ".$id."<br>";
                }
            break;
        }
    }

?>