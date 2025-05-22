<?php 
session_start();
		//validar si el usuario tiene acceso al sistema

		$fetch=$rspta->fetch_object();

		if (isset($fetch)) 
		{
			# Declaramos la variables de sesion
			$_SESSION['idusuario']=$fetch->idusuario;
			$_SESSION['nombre']=$fetch->nombre;
			$_SESSION['imagen']=$fetch->imagen;
			$_SESSION['login']=$fetch->login;
			$_SESSION['cargo']=$fetch->cargo;

			//obtenemos los permisos
			$marcados = $usuario->listarmarcados($fetch->idusuario);

			//declaramos el array para almacenar todos los permisos
			$valores=array();

			//almacenamos los permisos marcados en al array
			while ($per = $marcados->fetch_object()) 
			{
				array_push($valores, $per->idpermiso);
			}

			//determinamos lo accesos al usuario
			in_array(1, $valores)?$_SESSION['escritorio']=1:$_SESSION['escritorio']=0;
			in_array(2, $valores)?$_SESSION['grupos']=1:$_SESSION['grupos']=0;
			in_array(3, $valores)?$_SESSION['acceso']=1:$_SESSION['acceso']=0;
		}
?>