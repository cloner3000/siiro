<?php
include '../include/auth.php';
// cek akses
cekAdmin($_SESSION['akses_level']);


// aksi edit
if(isset($_POST['submit'])){
	$ikut_travel		= $_POST['ikut_travel'];
	$sudah_pembayaran	= $_POST['sudah_pembayaran'];
	$id					= $_POST['id'];
	// $pembayaran_tanggal	= $_POST['pembayaran_tanggal'];
	mysqli_query($conn,"
		UPDATE ais_peserta SET ikut_travel='$ikut_travel',pembayaran='$sudah_pembayaran' 
		WHERE id='$id' ");

	// kirim notif
	session_start();
	$_SESSION['pesan'] = 'Berhasil Merubah';

	// redirect 
	header("Location: ais_pembayaran.php");
}

?>