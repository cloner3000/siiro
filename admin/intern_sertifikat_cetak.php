<?php 
include '../include/auth.php';
// cek akses
cekAdmin($_SESSION['akses_level']);

// jika ada id yang di GET
if($_POST['id']){

	// simpan id 
	$id 					= $_POST['id'];
	$nomor_sertifikat 		= $_POST['nomor_sertifikat'];
	$nama 					= $_POST['nama'];
	$negara 				= $_POST['negara'];
	$mulai_internship 		= $_POST['mulai_internship'];
	$selesai_internship 	= $_POST['selesai_internship'];


	// query mendapatkan detail intern
	$intern = mysqli_fetch_assoc(mysqli_query($conn,"
		SELECT * 
		FROM intern 
		WHERE id = '$id'"));

	// setting sertifikat gambar
	$gambar = "../uploads/sertifikat/intern_sertifikat.jpg";
	$image = imagecreatefromjpeg($gambar);
	$white = imageColorAllocate($image, 255, 255, 255);
	$black = imageColorAllocate($image, 0, 0, 0);
	$font = "../assets/font/arial.ttf";

	imagettftext($image, 110, 0, 1870, 1570, $black, $font, $nama);

	//tampilkan di browser
	header("Content-type:  image/jpeg");
	imagejpeg($image);
	imagedestroy($image);

// jika tidak ada id di get redirext
}else{
	header('Location: intern_sertifikat.php');
}
?>