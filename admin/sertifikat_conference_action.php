<?php 

// set varuable dari value form
$id = $_GET['id'];


if(isset($id)){
header('Content-Type: image/jpg');

include '../include/database.php';
$sertifikat = mysqli_fetch_assoc(mysqli_query($conn, "SELECT * FROM sertifikat_conference WHERE id_sertifikat = '$id' "));

$author = $sertifikat['author'];
$judul = $sertifikat['judul'];
$nomor_sertifikat = $sertifikat['nomor'];

// Set the content-type

// Create the image
$gambar = '../uploads/sertifikat/sertifikat_conference2018_author.jpg';
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
$url = 'http://localhost/siiro/include/barcode.php?f=png&s=qr&d=http://check.nusaputra.ac.id/check.php?no='.$nomor_hash.'&w=500&h=500';
$img = str_replace(' ','_',strtolower($author).'.png');
file_put_contents('../uploads/sertifikat/barcode/'.$img, file_get_contents($url));

// nama barcode susuai dengan orang
$bar = '../uploads/sertifikat/barcode/'.$img;
$barcode = imagecreatefrompng($bar);

// Replace path by your own font path
$font = '../assets/font/arial_bold.ttf';

// Add some shadow to the text
imagettftext($im, 40, 0, 650, 968, $black, $font, $author);
imagettftext($im, 40, 0, 1010, 1205, $black, $font, $judul);

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

// simpan ke database
mysqli_query($conn, "UPDATE sertifikat_conference SET nomor_hash = '$nomor_hash' WHERE id_sertifikat = '$id' ");

}else{
	header('Location: conference_sertifikat.php');
}
?>