<?php
include("conexion.php");
$usuarios = mysql_query("SELECT MAX(folio) FROM usuarios ");
$usuario_folio = mysql_fetch_array($usuarios);
$folio = $usuario_folio[0]+1;
$documentos = mysql_query("SELECT MAX(folio) FROM ponencias ");
$documentos_folio = mysql_fetch_array($documentos);
$folio_documento = $documentos_folio[0]+1;
$nombre2=$_POST['nombre2'];
$nombre3=$_POST['nombre3'];
$nombre=$_POST['nombre'];
$apellido=$_POST['apellido'];
$correo=$_POST['correo'];
$pass=$_POST['pass'];
$telefono=$_POST['telefono'];
$ciudad=$_POST['ciudad'];
$estado=$_POST['estado'];
$pais =$_POST['pais'];
$universidad=$_POST['universidad'];
$nivel=$_POST['nivel'];
$asistente=$_POST['asistente'];
$titulo=$_POST['titulo'];
$eje=$_POST['eje'];
$nombresin= str_replace(' ', '', $correo);
$usuario=$nombresin;
$nombre = strtoupper($nombre);
$apellido = strtoupper($apellido);
$nombre2 = strtoupper($nombre2);
$nombre3 = strtoupper($nombre3);
$nombre4 = strtoupper($nombre4);
$titulo = strtoupper($titulo);
$eje = strtoupper($eje);
$universidad = strtoupper($universidad);

mysql_query("INSERT INTO participantes VALUES ('".$folio."','".$nombre."','".$apellido."','".$correo."','".$universidad."','".$nivel."','".$telefono."','".$asistente."','".$ciudad."','".$estado."','".$pais."')");
mysql_query("INSERT INTO usuarios VALUES ('".$folio."','".$usuario."','".$pass."','0',NOW())");
if($asistente=='Ponente')
{
mysql_query("INSERT INTO ponencias VALUES ('".$folio."', '".$titulo."', '".$eje."', '', '', '', '', '', '')");
mysql_query("INSERT INTO autores VALUES ('".$folio."','".$nombre2."', '".$nombre3."','".$nombre4."')");
mysql_query("INSERT INTO ponencia_participante VALUES ('".$folio."','".$folio."')");
}
$asunto = 'Registro en Coloquio ANFECA 2016';
//datos
$cabeceras = "From: " . strip_tags($_POST['req-email']) . "\r\n";
$cabeceras .= "Reply-To: ". strip_tags($_POST['req-email']) . "\r\n";
$cabeceras .= "CC: anfeca.fcamxl@uabc.edu.mx\r\n";
$cabeceras .= "MIME-Version: 1.0\r\n";
$cabeceras .= "Content-Type: text/html; charset=UTF-8\r\n";
//mensaje
$mensaje ='<head>';
$mensaje .='<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />';
$mensaje .='<title>Documento sin titulo</title>';
$mensaje .='</head><body>';
$mensaje .='<p>Estimado(a):'.$nombre.' '.$apellido.'<br /> <br />Le informamos que su registro en línea para asistir al IV COLOQUIO DE POSGRADOS ANFECA 2016 se ha realizado con &eacute;xito con el folio No.'.$folio.' .<br /><br />';
if($asistente=='Ponente')
{
$mensaje .='Es necesario que entres a la p&aacute;gina del congreso <a href="http://fcauabc.com/coloquiosanfeca">http://fcauabc.com/coloquiosanfeca/</a> para verificar tus datos y subir los archivos de tu ponencia, resumen y portada con los siguientes accesos.<br><br />';
}
$mensaje .='<strong>Usuario:</strong> '.$usuario.'<br>';
$mensaje .='<strong>Contrase&ntilde;a:</strong> '.$pass.'<br><br />';
$mensaje .='Si requiere mayor informaci&oacute;n acerca de su inscripci&oacute;n al Congreso, manda un correo a <a href="mailto:anfeca.fcamxl@uabc.edu.mx">anfeca.fcamxl@uabc.edu.mx</a><br /><br />';
$mensaje .='Si tiene Problemas con la contraseña, manda un correo a <a href="mailto:anfeca.fcamxl@uabc.edu.mx"> anfeca.fcamxl@uabc.edu.mx</a><br /><br />';
$mensaje .='Gracias y &eacute;xito</p>';
$mensaje .='</body></html>';
mail($correo, $asunto, $mensaje, $cabeceras);
header("location:registro_completo.html");
exit();
?>