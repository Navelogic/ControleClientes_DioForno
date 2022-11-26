<?php
session_start();
if(!$_SESSION['id_user']){
  header('Location: ../index.php');
};
include '../pages/header.html';
include '../pages/navbar.php';
include '../pages/contentOperador.html';









include '../pages/footer.html';


?>
