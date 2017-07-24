<?php

require ("lib.php");
$conex_mysql = new ConectorBD();

if ($conex_mysql->initConexion("agenda")=="OK"){
    echo "<p>Conexion ok, con la Base de Datos</p><br>";
}else {
    die("<p>Ups..!!!!   Error en Conexion</p><br>");
}

$result = $conex_mysql->ejecutarQuery("TRUNCATE users");
$result = $conex_mysql->ejecutarQuery("TRUNCATE events");

$user1 = "INSERT INTO users (username, name, password, birthday) VALUES ('juanperez@gmail.com', 'Juan Perez', '". password_hash("12345", PASSWORD_DEFAULT)  ."', '1982-05-17')";
$user2 = "INSERT INTO users (username, name, password, birthday) VALUES ('pedrogomez@hotmail.com', 'Pedro Gomez', '". password_hash("12345", PASSWORD_DEFAULT)  ."', '1982-05-17')";
$user3 = "INSERT INTO users (username, name, password, birthday) VALUES ('robertolopez@gmail.com', 'Roberto Lopez', '". password_hash("12345", PASSWORD_DEFAULT)  ."', '1982-05-17')";

$conex_mysql->ejecutarQuery($user1);
$conex_mysql->ejecutarQuery($user2);
$conex_mysql->ejecutarQuery($user3);

echo "<p> Usuarios Insertados con Exito</p><br>";
