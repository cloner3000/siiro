<?php 
$page = 'ais_berangkat';
include "../include/header.php";
// cek akses
cekAdmin($_SESSION['akses_level']);
?>

<div class="w3-container">

<div class="w3-padding w3-green">
	Periode Tahun : <b><?php echo $_SESSION['ais_periode_tahun']; ?></b>
</div>
<br>

<?php
$username = $_SESSION['nama'];
$xcrud = Xcrud::get_instance();
$xcrud->table('ais_berangkat');
$xcrud->relation('ketua','ais_peserta','id','nama','periode_tahun = '.$_SESSION['ais_periode_tahun'],'',true);
$xcrud->relation('anggota','ais_peserta','id','nama','periode_tahun = '.$_SESSION['ais_periode_tahun'],'',true);
if (isset($_SESSION['ais_periode_tahun'])) {
$xcrud->where('periode_tahun =', $_SESSION['ais_periode_tahun']);
$xcrud->pass_default('periode_tahun', $_SESSION['ais_periode_tahun']);
}
$xcrud->relation('ketua','ais_peserta','nama','nama');
echo $xcrud->render();
?>

</div>
<?php 
include "../include/footer.php";
?>