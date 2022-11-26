<?php
include './conect.cfg';
session_start();

$nomeTela = $_POST['username'];
$senha = $_POST['senha'];

$sql_usuarios = "SELECT * FROM usuario WHERE nomeTela = '$nomeTela' AND senha = '$senha'";



$res_usuarios = mysqli_query($con, $sql_usuarios);


if (mysqli_num_rows($res_usuarios) == 1){
  $row = mysqli_fetch_array($res_usuarios);

  $_SESSION["id_user"] = $row["id_user"];
  $_SESSION["nome"] = $row["nome"];
  $_SESSION["nomeTela"] = $row["nomeTela"];

  header('Location: ../script/painel.php');
} else {
  echo "<script>alert ('Email ou Senha Invalidos!'); location.href='index.php';</script>";
};
?>