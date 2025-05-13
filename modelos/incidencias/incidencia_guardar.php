<?php
session_start();
include '../../conexion.php';

$titulo = $_POST['titulo'];
$descripcion = $_POST['descripcion'];
$idUsuarioDocente = $_SESSION['idUsuario'];

$sql = "INSERT INTO incidencia (titulo, descripcion, idUsuarioDocente) VALUES (?, ?, ?)";
$stmt = $conexion->prepare($sql);
$stmt->bind_param("ssi", $titulo, $descripcion, $idUsuarioDocente);
$stmt->execute();

header("Location: incidencias_docente.php");
