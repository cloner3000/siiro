<?php 

// Set the content-type
header('Content-Type: image/png');

// Create the image
$gambar = '../uploads/sertifikat/icced2018.png';
$bar = '../uploads/sertifikat/barcode.png';
// $im = imagecreatetruecolor(400, 30);
$im = imagecreatefromjpeg($gambar);
$barcode = imagecreatefrompng($bar);

// Create some colors
$white = imagecolorallocate($im, 255, 255, 255);
$grey = imagecolorallocate($im, 128, 128, 128);
$black = imagecolorallocate($im, 0, 0, 0);
// imagefilledrectangle($im, 0, 0, 399, 29, $white);

// set varuable dari value form
$nomor_sertifikat = $_POST['nomor_sertifikat'];
$nama = $_POST['nama'];
$status = $_POST['status'];

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
?>