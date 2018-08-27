<?php 

// set varuable dari value form
$nomor_sertifikat 	= $_POST['nomor_sertifikat'];
$nama 				= $_POST['nama'];
$status 			= $_POST['status'];

if(isset($nama)){


// Set the content-type
header('Content-Type: image/jpg');

// Create the image
$gambar = '../uploads/sertifikat/icced2018.png';
// $im = imagecreatetruecolor(400, 30);
$im = imagecreatefromjpeg($gambar);

// Create some colors
$white = imagecolorallocate($im, 255, 255, 255);
$grey = imagecolorallocate($im, 128, 128, 128);
$black = imagecolorallocate($im, 0, 0, 0);
// imagefilledrectangle($im, 0, 0, 399, 29, $white);

// Barcode
include '../include/barcode.php';
$nomor_hash = sha1($nomor_sertifikat);
$url = 'http://localhost/siiro/include/barcode.php?f=png&s=qr&d=http://check.nusaputra.ac.id/check.php?no='.$nomor_hash;
$img = str_replace(' ','_',strtolower($nama).'.png');
file_put_contents('../uploads/sertifikat/barcode/'.$img, file_get_contents($url));

// nama barcode susuai dengan orang
$bar = '../uploads/sertifikat/barcode/'.$img;
$barcode = imagecreatefrompng($bar);

// The text to draw
$text = 'Testing...';
// Replace path by your own font path
$font = '../assets/font/arial.ttf';

// Add some shadow to the text
imagettftext($im, 55, 0, 850, 760, $black, $font, $nama);
imagettftext($im, 40, 0, 1250, 850, $black, $font, $status);
imagettftext($im, 25, 0, 10, 50, $black, $font, $nomor_sertifikat);

// define position of barcode
$marge_right = 10;
$marge_bottom = 20;
$sx = imagesx($barcode);
$sy = imagesy($barcode);

// width to calculate positioning of the barcode. 
imagecopy($im, $barcode, 20, imagesy($im) - $sy - $marge_bottom, 0, 0, imagesx($barcode), imagesy($barcode));

// Using imagepng() results in clearer text compared with imagejpeg()
imagepng($im);
imagedestroy($im);

// simpan kedatabase dokumen online
// include database2
include '../include/database2.php';
$query = mysqli_query($conn2, "SELECT * FROM sertifikat_ais WHERE nomor = '$nomor_sertifikat' ");
// cek jika nomor surat sudah ada 
if(mysqli_num_rows($query) !== 1 ){
	// menyimpan ke database
	mysqli_query($conn2, "INSERT INTO sertifikat_ais (nomor,nomor_hash,nama,sebagai) VALUES ('$nomor_sertifikat','$nomor_hash','$nama','$status')");

}

}else{
	header('Location: conference_sertifikat.php');
}
?>