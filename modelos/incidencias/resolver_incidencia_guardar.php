<?php
session_start();
include '../../conexion.php';

$idIncidencia = $_POST['idIncidencia'];
$detalle = $_POST['detalle_solucion'];
$idAdmin = $_SESSION['idUsuario'];
$fecha = date("Y-m-d H:i:s");

$sql = "INSERT INTO detalle_incidencia (idIncidencia, fecha_solucion, detalle_solucion, idUsuarioAdmin) 
        VALUES (?, ?, ?, ?)";
$stmt = $conexion->prepare($sql);
$stmt->bind_param("sssi", $idIncidencia, $fecha, $detalle, $idAdmin);
$stmt->execute();

// Cambiar estado de incidencia
$conexion->query("UPDATE incidencia SET estado = 'cerrada' WHERE idIncidencia = $idIncidencia");

header("Location: incidencias_admin.php");
