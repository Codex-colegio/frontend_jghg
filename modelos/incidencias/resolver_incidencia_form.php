<?php
session_start();
include '../../conexion.php';

$idIncidencia = $_GET['id'];
$sql = "SELECT * FROM incidencia WHERE idIncidencia = ?";
$stmt = $conexion->prepare($sql);
$stmt->bind_param("i", $idIncidencia);
$stmt->execute();
$row = $stmt->get_result()->fetch_assoc();
?>

<h2>Resolver Incidencia</h2>
<p><strong>Título:</strong> <?= $row['titulo'] ?></p>
<p><strong>Descripción:</strong> <?= $row['descripcion'] ?></p>

<form method="POST" action="resolver_incidencia_guardar.php">
    <input type="hidden" name="idIncidencia" value="<?= $idIncidencia ?>">
    <label>Detalle de solución:</label><br>
    <textarea name="detalle_solucion" required></textarea><br>
    <button type="submit">Guardar solución</button>
</form>
