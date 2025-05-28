<?php
ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);

session_start();
header('Content-Type: application/json');

header('Access-Control-Allow-Origin: https://tu-dominio.com');
header('Access-Control-Allow-Credentials: true');

// Lee la entrada JSON
$input = json_decode(file_get_contents("php://input"), true);

// DEBUG: escribe el input bruto en un archivo para inspección
file_put_contents(__DIR__ . '/debug_input.txt', file_get_contents("php://input"));

if (!$input || !isset($input['token'])) {
    echo json_encode(["status" => "error", "msg" => "Token no proporcionado"]);
    exit;
}

$token = $input['token'];
$_SESSION['jwt_token'] = $token;

// Ejemplo: consumir el endpoint con el token
$opts = [
    "http" => [
        "method" => "GET",
        "header" => "Authorization: Bearer $token"
    ]
];
$context = stream_context_create($opts);
$response = file_get_contents("http://api.localhost/api/permisos", false, $context);
$data = json_decode($response, true);

// Validar si $data es válido
if (!$data) {
    echo json_encode(["status" => "error", "msg" => "Respuesta inválida de /api/permisos"]);
    exit;
}

// Después de validar y consumir /api/permisos…
$_SESSION['idusuario']  = $data['idusuario'];
$_SESSION['nombre']     = $data['nombre'];   // ojo: es 'usuario' o 'nombre' según tu JSON
$_SESSION['imagen']     = $data['imagen'];
$_SESSION['login']      = $data['login'];
$_SESSION['cargo']      = $data['cargo'];

// y los permisos, tal como lo hacías con el array de permisos
$_SESSION['permisos'] = array_map(fn($p)=> $p['id_permiso'], $data['permisos']);
$_SESSION['escritorio'] = in_array(1, $_SESSION['permisos']) ? 1 : 0;
$_SESSION['grupos']     = in_array(2, $_SESSION['permisos']) ? 1 : 0;
$_SESSION['acceso']     = in_array(3, $_SESSION['permisos']) ? 1 : 0;


// Todo bien
echo json_encode(["status" => "ok"]);
