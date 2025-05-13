<?php
session_start();
include '../../conexion.php';

if ($_SESSION['rol'] != 'admin') {
    header('Location: ../../index.php');
    exit;
}

$sql = "SELECT i.*, u.nombre AS docente FROM incidencia i 
        JOIN usuario u ON i.idUsuarioDocente = u.id 
        WHERE i.estado != 'cerrada'";
$result = $conexion->query($sql);
?>

<h2>Incidencias Pendientes</h2>
<table border="1">
    <tr><th>Docente</th><th>Título</th><th>Estado</th><th>Acción</th></tr>
    <?php while ($row = $result->fetch_assoc()): ?>
        <tr>
            <td><?= $row['docente'] ?></td>
            <td><?= $row['titulo'] ?></td>
            <td><?= $row['estado'] ?></td>
            <td><a href="resolver_incidencia_form.php?id=<?= $row['idIncidencia'] ?>">Resolver</a></td>
        </tr>
    <?php endwhile; ?>
</table>
