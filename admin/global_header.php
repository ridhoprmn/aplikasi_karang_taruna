<?php
session_start();
include '../koneksi.php';
if (!isset($_SESSION["username"])) {
  echo "<script> document.location.href='../login-admin'; </script>";
}

$user = $_SESSION['username'];
$level = $_SESSION['level'];
$namalengkap = $_SESSION['nama_lengkap'];
$gambar = $_SESSION['gambar'];

$query = $koneksi->query("SELECT * FROM tb_user WHERE username = '$user'");
$row = $query->fetch_array();
//jika akun berlevel peserta mengakses page admin
if ($level === "Karyawan") {
  echo "<script> document.location.href='../user/index'; </script>";
  // echo "<script> alert('anda tidak memiliki akses untuk halaman ini!');window.location= '../user/index';</script>";
}
?>
<!doctype html>
<!--
* Tabler - Premium and Open Source dashboard template with responsive and high quality UI.
* @version 1.0.0-alpha.23
* @link https://tabler.io
* Copyright 2018-2021 The Tabler Authors
* Copyright 2018-2021 codecalm.net Paweł Kuna
* Licensed under MIT (https://github.com/tabler/tabler/blob/master/LICENSE)
-->
<html lang="en">

<head>
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1, viewport-fit=cover" />
  <meta http-equiv="X-UA-Compatible" content="ie=edge" />
  <link rel="icon" href="../favicon.png" type="image/x-icon" />
  <title>Dashboard - Aplikasi Informasi Karang Taruna Desa Cicadas.</title>
  <!-- CSS files -->
  <link href="../assets/dist/css/tabler.min.css" rel="stylesheet" />
  <link href="../assets/dist/css/tabler-flags.min.css" rel="stylesheet" />
  <link href="../assets/dist/css/tabler-payments.min.css" rel="stylesheet" />
  <link href="../assets/dist/css/tabler-vendors.min.css" rel="stylesheet" />
  <link href="../assets/dist/css/demo.min.css" rel="stylesheet" />
  <link rel="stylesheet" href="./assets/plugins/datatables-bs4/css/dataTables.bootstrap4.min.css">
  <link rel="stylesheet" href="./assets/plugins/datatables-responsive/css/responsive.bootstrap4.min.css">
  <link rel="stylesheet" href="./assets/dist/css/style.css">

</head>

<body class="antialiased">
  <div class="page">
    <aside class="navbar navbar-vertical navbar-expand-lg navbar-dark">
      <div class="container-fluid">
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbar-menu">
          <span class="navbar-toggler-icon"></span>
        </button>
        <h1 class="navbar-brand navbar-brand-autodark">
          <a href="./index">
            <img src="../img/logoktcpkf.png" width="400" height="100" alt="Sibumdes" class="navbar-brand-image">
          </a>
        </h1>
        <?php include 'global_navigasi.php'; ?>