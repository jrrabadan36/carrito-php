<?php
    include "global/config.php";
    include "global/conexion.php";
    include "carrito.php";
    include "template/cabecera.php";
?>
        <br>
        <?php if ($mensaje != "") { ?>
            <div class="alert alert-success" role="alert">
                <?php echo $mensaje; ?>
                <a href="mostrarCarrito.php" class="badge badge-success">Ver carrito</a>
            </div>
        <?php  }  ?>

        <div class="row">

            <?php
                $sentencia = $pdo->prepare("SELECT * FROM tblproductos;");
                $sentencia->execute();
                $listaProductos = $sentencia->fetchAll(PDO::FETCH_ASSOC);
                // var_export($listaProductos); 
            ?>

            <?php foreach($listaProductos as $producto) { ?>
                <div class="col-3">
                    <div class="card">
                        <img class="card-img-top" 
                            title="<?php echo $producto['Nombre']; ?>" 
                            src="<?php echo $producto['Imagen']; ?>"
                            alt="<?php echo $producto['Nombre']; ?>"
                            data-toggle="popover" 
                            data-trigger="hover"
                            data-content="<?php echo $producto['Descripcion']; ?>"
                            height="317px"
                        >
                        <div class="card-body">
                            <span><?php echo $producto['Nombre']; ?></span>
                            <h5 class="card-title">€<?php echo $producto['Precio']; ?></h5>
                            <p class="card-text">Descripción</p>

                            <form action="" method="POST">
                                <input type="hidden" name="id" id="id" value="<?php echo openssl_encrypt($producto['ID'], COD, KEY); ?>">
                                <input type="hidden" name="nombre" id="nombre" value="<?php echo openssl_encrypt($producto['Nombre'], COD, KEY); ?>">
                                <input type="hidden" name="precio" id="precio" value="<?php echo openssl_encrypt($producto['Precio'], COD, KEY); ?>">
                                <input type="hidden" name="cantidad" id="cantidad" value="<?php echo openssl_encrypt(1, COD, KEY); ?>">
                                <button class="btn btn-primary" name="btnAccion" value="Agregar" type="submit">
                                    Agregar al carrito
                                </button>
                            </form>
                        </div>
                    </div>
                </div>
            <?php } ?>
            
        </div>
        
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
        <script>
            $(function () {
                $('[data-toggle="popover"]').popover()
            })
        </script>

  <?php include "template/pie.php"; ?>