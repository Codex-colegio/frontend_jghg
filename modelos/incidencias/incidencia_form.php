<?php
session_start();
include '../../conexion.php'; // ajusta la ruta a tu conexión

if ($_SESSION['rol'] != 'docente') {
    header('Location: ../../index.php');
    exit;
}
?>

<h2>Registrar Incidencia</h2>
<form method="POST" action="incidencia_guardar.php">
    <label>Título:</label>
    <input type="text" name="titulo" required><br>

    <label>Descripción:</label>
    <textarea name="descripcion" required></textarea><br>

    <button type="submit">Enviar</button>
</form>
