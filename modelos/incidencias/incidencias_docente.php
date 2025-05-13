<?php
session_start();
include '../../conexion.php';

$id = $_SESSION['idUsuario'];
$desde = $_GET['desde'] ?? '2000-01-01';
$hasta = $_GET['hasta'] ?? date('Y-m-d');

$sql = "SELECT * FROM incidencia WHERE idUsuarioDocente = ? AND fecha_registro BETWEEN ? AND ?";
$stmt = $conexion->prepare($sql);
$stmt->bind_param("iss", $id, $desde, $hasta);
$stmt->execute();
$resultado = $stmt->get_result();
?>

<form method="GET">
    Desde: <input type="date" name="desde" value="<?= $desde ?>">
    Hasta: <input type="date" name="hasta" value="<?= $hasta ?>">
    <button type="submit">Filtrar</button>
</form>

<table border="1">
    <tr><th>Título</th><th>Estado</th><th>Fecha</th></tr>
    <?php while ($row = $resultado->fetch_assoc()): ?>
        <tr>
            <td><?= $row['titulo'] ?></td>
            <td><?= $row['estado'] ?></td>
            <td><?= $row['fecha_registro'] ?></td>
        </tr>
    <?php endwhile; ?>
</table>
