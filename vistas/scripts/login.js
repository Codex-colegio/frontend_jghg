document.getElementById("frmAcceso").addEventListener("submit", function (e) {
    e.preventDefault();

    const submitButton = document.querySelector(".btn.btn-primary.btn-block.btn-flat");
    const inputUsuario = document.getElementById("logina");
    const inputClave = document.getElementById("clavea");

    const usuario = inputUsuario.value.trim();
    const clave = inputClave.value.trim();

    submitButton.disabled = true;
    setTimeout(() => { submitButton.disabled = false; }, 5000);

    if (!usuario || !clave) {
        alert("Por favor, completa todos los campos.");
        return;
    }

    const emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
    if (!emailRegex.test(usuario)) {
        alert("El nombre de usuario debe ser un correo electrónico válido.");
        return;
    }

    if (clave.length < 2) { // corregí el mínimo de caracteres a 6
        alert("La contraseña debe tener al menos 6 caracteres.");
        return;
    }

    fetch(`${CONFIG.API_URL}${ROUTES.LOGIN}`, {
        method: 'POST',
        headers: {
            'Content-Type': 'application/json'
        },
        body: JSON.stringify({ usuario, clave })
    })
    .then(response => {
        if (!response.ok) throw new Error("Credenciales incorrectas o error de servidor");
        return response.json();
    })
    .then(data => {
        console.log('Respuesta login:', data); // ¡Confirma que data.token existe!
        if (!data.token) {
            bootbox.alert("Usuario y/o contraseña incorrectos", () => {
                inputUsuario.focus();
            });
            return;
        }
        sessionStorage.setItem('jwt_token', data.token);
                                
        // const token = data.token;
        // const session = {
        //     idUsuario: data.session?.idUsuario ?? null,
        //     nombre: data.session?.nombre ?? data.usuario,
        //     cargo: data.session?.cargo ?? data.cargo,
        //     estado: data.session?.estado ?? null,
        //     permisos: data.session?.permisos ?? data.permisos
        // };

        // sessionStorage.setItem('jwt_token', token);
        // sessionStorage.setItem('nombre', JSON.stringify(session.nombre));
        // sessionStorage.setItem('cargo', session.cargo);
        // sessionStorage.setItem('estado', session.estado);
        // sessionStorage.setItem('idUsuario', session.idUsuario);
        // sessionStorage.setItem('permisos', JSON.stringify(session.permisos.map(p => p.idPermiso)));

        // console.log("Login exitoso, redirigiendo...");
        // window.location.href = "escritorio.php";

        // Paso extra: enviar el token al archivo PHP para guardar en $_SESSION
        fetch("/config/login_seguro.php", {
            method: "POST",
            headers: { "Content-Type": "application/json" },
            credentials: "include",
            body: JSON.stringify({ token: data.token })  // envías el token aquí
        })
        .then(res => res.json())
        .then(res => {
            console.log("login_seguro:", res); // verifica que res.status === "ok"
            if (res.status === "ok") {
                // Ahora sí redirigimos, ya con la sesión PHP activa
                window.location.href = "escritorio.php";
            } else {
                bootbox.alert("Error al guardar sesión: " + (res.msg ?? "Desconocido"));
            }
        })
        .catch(err => {
            console.error("Error en login_seguro.php:", err);
            bootbox.alert("Ocurrió un error al establecer la sesión2.");
        });

    })
    .catch(error => {
        console.error("Error en la autenticación:", error);
        bootbox.alert("Usuario o contraseña incorrectos.");
    });
});
