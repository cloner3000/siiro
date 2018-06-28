<?php 
include '../include/header.php';
?>
<div class="w3-container">
<?php 
// notif pesan sukses
if (!empty($_SESSION['pesan'])) { ?>
	<div class="w3-green w3-large w3-padding">
		<i class="fa fa-check"></i> <?php echo $_SESSION['pesan']; ?>
	</div>
	<br>
	<?php 
	$_SESSION['pesan'] = '';
} 

// notif pesan error
if (!empty($_SESSION['error'])) { ?>
	<div class="w3-red w3-large w3-padding">
		<i class="fa fa-warning"></i> <?php echo $_SESSION['error']; ?>
	</div>
	<br>
	<?php 
	$_SESSION['error'] = '';
}

?>
</div>
<div class="w3-row">

	<div class="w3-half">
		<div class="w3-card w3-margin">
			<div class="w3-padding w3-theme w3-large">
				Backup Database
			</div>
			<div class="w3-padding">
				<p>Klik button backup untuk memproses</p>
				<a class="w3-button w3-large w3-pale-green" href="setting_backup_action.php"><i class="fa fa-refresh"></i> Backup Sekarang</a>
			</div>
		</div>

		<div class="w3-card w3-margin">
			<div class="w3-padding w3-theme w3-large">
				Restore
			</div>
			<div class="w3-padding">
				<p>Pilih file backup yang akan di restore</p>
				<form method="post" enctype="multipart/form-data">
					<input class="w3-input w3-border w3-section" type="file" name="file_backup" required>
					<button class="w3-button w3-pale-red" type="submit" name="submit_restore"><i class="fa fa-upload"></i> Restore</button>
				</form>
			</div>
		</div>
	</div>

	<div class="w3-half">

		<div class="w3-card w3-margin">
			<div class="w3-padding w3-theme w3-large">
				List Backup
			</div>
			<div class="">

				<?php
				$thelist = '';
				if ($handle = opendir('myphp-backup-files/')) {
					while (false !== ($file = readdir($handle))) {
						if ($file != "." && $file != "..") {
							$thelist .= '<li>'.$file.' <a  class="w3-button w3-green" href="myphp-backup-files/'.$file.'"><i class="fa fa-download"></i></a> <a href="setting_backup_delete.php?file='.$file.'" class="w3-button w3-red" onclick="return confirm(\'Yakin Menghapus file '.$file.'?\')"><i class="fa fa-trash"></i></a></li>';
						}
					}
					closedir($handle);
				}
				?>

				<ul class="w3-ul w3-border"><?php echo $thelist; ?></ul>

			</div>
		</div>
		
	</div>

	
</div>


<?php  
if(isset($_POST["submit_restore"])) {
	// setting sebelum upload
	$target_dir = "myphp-restore-files/";
	$target_file = $target_dir . basename($_FILES["file_backup"]["name"]);
	$imageFileType = pathinfo($target_file,PATHINFO_EXTENSION);

	// cek file di isi
	if(!empty($_FILES["file_backup"]["name"])){
		// Check file size
		if ($_FILES["file_backup"]["size"] > 30000000) {
			$_SESSION['error'] = 'File Terlalu Besar Max 30MB';
			echo '<meta http-equiv="refresh" content="0; URL=\'setting_backup.php\'"/>';
		}else{
			// cek format file
			if($imageFileType != "gz" && $imageFileType != "zip") {
				$_SESSION['error'] = 'Format File Tidak di izinkan!';
				echo '<meta http-equiv="refresh" content="0; URL=\'setting_backup.php\'"/>';

		}else{

				// proses upload dan simpan ke db
			if (move_uploaded_file($_FILES["file_backup"]["tmp_name"], $target_file)) {
				$_SESSION['pesan'] = 'Sukses Menguploadd file'.$_FILES["file_backup"]["name"];
				echo '<meta http-equiv="refresh" content="0; URL=\'setting_backup_restore.php?file='.$_FILES["file_backup"]["name"].'\'"/>';
	

			} else {
				// kesalahan upload
				$_SESSION['error'] = 'Ada kesalahan dalam Upload';
				echo '<meta http-equiv="refresh" content="0; URL=\'setting_backup.php\'"/>';
			}
		}
	}
}else{
	echo "File tidak ada";
}
}
?>

<?php 
include '../include/footer.php';
?>