document.getElementById("frmAcceso").addEventListener("submit", function(e) {
    e.preventDefault();

        // Seleccionar el botón por su clase
    const submitButton = document.querySelector(".btn.btn-primary.btn-block.btn-flat"); 

    // Deshabilitar el botón de enviar
    submitButton.disabled = true;

    // Añadir un retraso de 5 segundos
    setTimeout(function() {
        submitButton.disabled = false; // Habilitar nuevamente el botón después de 5 segundos
    }, 5000);
    
    const logina = document.getElementById("logina").value.trim();
    const clavea = document.getElementById("clavea").value.trim();

    if (logina === "" || clavea === "") {
        alert("Por favor, completa todos los campos.");
        return;
    }

    const usuarioRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
    if (!usuarioRegex.test(logina)) {
        alert("El nombre de usuario debe ser un correo válido.");
        return;
    }

    if (clavea.length < 2) {
        alert("La contraseña debe tener al menos 6 caracteres.");
        return;
    }

    // Enviar solicitud de login al backend
    fetch('http://api.localhost/api/usuarios/login', { // usa la ruta real de login3
        method: 'POST',
        headers: {
            'Content-Type': 'application/json'
        },
        body: JSON.stringify({
            usuario: logina,
            clave: clavea
        })
    })
    .then(response => response.json())
    .then(data => {
        console.log("Respuesta del login:", data);

        if (data.token) {
            // ✅ Guardar token en localStorage
            localStorage.setItem('jwt_token', data.token);
            localStorage.setItem('usuario', JSON.stringify(data.usuario));

            console.log("Token guardado:", data.token);
            console.log("Usuario:", data.usuario.nom_usuario);

            // ✅ Redireccionar si es necesario
            // window.location.href = "escritorio.php";

            // Realizar solicitud GET a la API de usuarios usando el token
            const token = localStorage.getItem('jwt_token');
            fetch('http://localhost/api/usuarios', {
                method: 'GET',
                headers: {
                    'Authorization': `Bearer ${token}`,
                    'Content-Type': 'application/json'
                }
            })
            .then(response => response.json())
            .then(data => {
                console.log("Datos de la API de usuarios:", data);
            })
            .catch(error => {
                console.error("Error al obtener los datos de usuarios:", error);
            });
        } else {
            bootbox.alert("Usuario y/o contraseña incorrectos", function () {
                document.getElementById("logina").focus();
            });
        }
    })
    .catch(error => {
        console.error("Error en la autenticación:", error);
        bootbox.alert("Error de conexión con el servidor.");
    });
});
