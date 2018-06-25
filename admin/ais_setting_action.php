<?php
include '../include/database.php';

if(isset($_POST['submit'])){
	session_start();
	// set tahun dari pilihan
	$_SESSION['ais_periode_tahun'] = $_POST['ais_periode_tahun'];
	$_SESSION['pesan'] = 'Suksek mengganti periode tahun !';
	header("Location: ais_setting.php");
	// echo $_SESSION['ais_periode_tahun'];
}

if(isset($_POST['submit_update'])){
	$tahun 				= $_POST['tahun'];
	$nama				= $_POST['nama'];
	$negara				= $_POST['negara'];
	$tanggal			= $_POST['tanggal'];
	$biaya_conference	= $_POST['biaya_conference'];
	$biaya_travel		= $_POST['biaya_travel'];
	$keterangan			= $_POST['keterangan'];

	mysqli_query($conn,"UPDATE ais_setting SET nama='$nama',negara='$negara',tanggal='$tanggal',biaya_conference='$biaya_conference',biaya_travel='$biaya_travel',keterangan='$keterangan' WHERE tahun='$tahun' ");

	// kirim notif
	session_start();
	$_SESSION['pesan'] = 'Sukses mengatur Setting untuk AIS periode tahun <strong>'.$tahun.'</strong>';

	// redirect 
	header("Location: ais_setting.php");

}
?>