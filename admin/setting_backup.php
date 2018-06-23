<?php 
include '../include/header.php';
 ?>
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

<div class="w3-row">
	<div class="w3-half">
		<div class="w3-card w3-margin">
			<div class="w3-padding w3-theme w3-large">
				Backup Database
			</div>
			<div class="w3-padding">
				<a class="w3-button w3-large w3-pale-green" href="setting_backup_action.php"><i class="fa fa-refresh"></i> Backup Sekarang</a>
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
include '../include/footer.php';
  ?>