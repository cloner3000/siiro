<?php

$servername = "localhost";
$username = "root";
$password = "";
$database = "dokumen_online";

// Membuat Koneksi
$conn2 = mysqli_connect($servername,$username,$password,$database);

// mengecek Koneksi

if(!$conn2){
	die("Gagal Koneksi ke database". mysqli_connect_error());
}

?>