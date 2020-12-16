<?php
    $servidor = "mysql:dbname=".DB.";host=".SERVIDOR;

    try {
        $pdo = new PDO($servidor, USUARIO, PASSWORD, array(PDO::MYSQL_ATTR_INIT_COMMAND=>"set names UTF8"));
        // echo "<script>alert('Conexión establecida')</script>";
    } catch(PDOException $e) {
        // echo "<script>alert('Error')</script>";
    }
?>