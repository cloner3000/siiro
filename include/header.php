<?php
include '../include/auth.php';
include "../operator/xcrud.php";
$xcrud = Xcrud::get_instance();

// active menu
$url = $_SERVER['REQUEST_URI'];
$parts = parse_url($url);
$page_name = basename($parts['path']);
?>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>SIIRO</title>

    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <link rel="stylesheet" href="../assets/css/w3.css">
  <link rel="stylesheet" href="../assets/css/custom.css">
  <link rel="stylesheet" href="../assets/css/font-awesome.css">
</head>
<body>
<?php include 'nav.php'; ?>