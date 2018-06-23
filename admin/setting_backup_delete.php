<?php 
session_start();

if($_GET['file']){
	// get nama file
	$file = $_GET['file'];

	// cek keberhasilan mengunakan if
	if(unlink('myphp-backup-files/'.$file)){
		$_SESSION['pesan'] = 'Berhasil menghapus file '.$file;
		header("Location: setting_backup.php");
	}else{
		$_SESSION['error'] = 'Gagal menghapus';
		header("Location: setting_backup.php");
	}

}else{
	// redirect jika tidak ada file yang di delete
	header('Location: setting_backup.php');
	$_SESSION['error'] = 'Tidak di izninkan mengakses';
}
?>
