<?php 
$page = 'ais_pulang';
include "../include/header.php";
?>
<div class="w3-padding w3-green">
	Periode Tahun : <b><?php echo $_SESSION['ais_periode_tahun']; ?></b>
</div>
<br>
   <?php
   	$username = $_SESSION['nama'];
    $xcrud = Xcrud::get_instance();
	$xcrud->table('ais_pulang');
	if (isset($_SESSION['ais_periode_tahun'])) {
	$xcrud->where('periode_tahun =', $_SESSION['ais_periode_tahun']);
	$xcrud->pass_default('periode_tahun', $_SESSION['ais_periode_tahun']);
	}
    echo $xcrud->render();
	?>
<?php 
include "../include/footer.php";
?>