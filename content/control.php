<?php
include("conexion.php");

session_start();
$usuario=$_POST['usuario'];
$password=$_POST['pass'];
//$pass=md5($password);

$resultado=mysql_query("select usuario, folio, tipo_usuario from usuarios where usuario='$usuario' and pass='$password' ",$conexion);
$filas=mysql_num_rows($resultado);
$datos=mysql_fetch_array($resultado);
if($filas==1){
$_SESSION['autentificado']="1";
$_SESSION['user']=$_POST['usuario'];
$_SESSION['folio']=$datos[1];
$_SESSION['tipo']=$datos[2];
//$_SESSION['pass']=$password;
if ($datos[2]==0)
	{
		if ($_POST['foro']==1)
		{
			header("location: registro/foros.php");
		}
		if ($_POST['foro']==0)
		{
			header("location: registro/inicio.php");
		}
		else
		{
			header("location: registro/foroevaludador.php");
		}
	}
else
{
	header("location:registro/admin.php");}
}
else{
	header("location:index.html");
}
?>