<?php
// $periode_tahun = $_GET['tahun']; 
$page = 'ais_kelompok';
include "../include/header.php";
?>

<div class="w3-padding w3-green">
	Periode Tahun : <b><?php echo $_SESSION['ais_periode_tahun']; ?></b>
</div>
<br>

<?php
$username = $_SESSION['nama'];
$xcrud = Xcrud::get_instance();
$xcrud->table('ais_kelompok');
if (isset($_SESSION['ais_periode_tahun'])) {
	$xcrud->where('periode_tahun =', $_SESSION['ais_periode_tahun']);
	$xcrud->pass_default('periode_tahun', $_SESSION['ais_periode_tahun']);
}
$xcrud->columns('periode_tahun,jenis',true);
$xcrud->validation_required('nama');
$xcrud->unset_remove();

echo $xcrud->render();
?>
<?php 
include "../include/footer.php";
?>