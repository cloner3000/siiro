<?php 
$page = 'ais_kelompok_detail';
$title = 'AIS Kelompok Detail';

include "../include/header.php";

// cek akses
cekAdmin($_SESSION['akses_level']);


$ais_periode_tahun = $_SESSION['ais_periode_tahun'];

// get id
$kelompok_id = $_GET['kelompok'];

// kelompok
$kelompok = mysqli_fetch_assoc(mysqli_query($conn,"SELECT * FROM ais_kelompok WHERE id = '$kelompok_id'"));

?>

<div class="w3-container">

<div class="w3-padding w3-green">
	Periode Tahun : <b><?php echo $_SESSION['ais_periode_tahun']; ?></b>
</div>
<?php 
// query setting ais
$ais_setting    = mysqli_fetch_assoc(mysqli_query($conn,"SELECT * FROM ais_setting WHERE tahun = '$ais_periode_tahun'"));
 ?>
<div class="w3-row">
    <div class="w3-half w3-padding w3-pale-green">
        <h4>Biaya Conference : <b>Rp. <span class="uang"><?php echo $ais_setting['biaya_conference']; ?></span></b></h4>
    </div>
    <div class="w3-half w3-padding w3-pale-blue">
        <h4>Biaya Travel : <b>Rp. <span class="uang"><?php echo $ais_setting['biaya_travel']; ?></span></b></h4>
    </div>
</div>

	

<div class="w3-row">
	<div class="w3-col l1 s2">
		<a class="w3-button w3-red w3-block" href="ais_kelompok_list.php"><i class="fa fa-arrow-left"></i></a>
	</div>
	<div class="w3-rest">
		<div class="w3-green w3-padding">
			Kelompok : <b><?php echo $kelompok['nama']; ?></b>
		</div>
	</div>
</div>


<?php

// database
$xcrud->table('ais_peserta');
$xcrud->where('periode_tahun =', $ais_periode_tahun);
$xcrud->where('FIND_IN_SET('.$kelompok_id.',kelompok)');
$xcrud->order_by('status');
$xcrud->limit(20);

// kolom
$xcrud->columns('kelompok',true);

// fields
$xcrud->fields('kelompok',true);

// readonly
$xcrud->readonly('status');

// hide title
$xcrud->unset_title();
$xcrud->unset_remove();
$xcrud->unset_add();
$xcrud->unset_pagination();
$xcrud->unset_limitlist();

// jurusan
$xcrud->change_type('jurusan','select','',',Desain Komunikasi Visual,Sistem Inforamsi,Teknik Informatika,Teknik Sipil,Teknik Elektro,Teknik Mesin');

// trvel
$xcrud->change_type('ikut_travel','select','','Tidak,Ya');

// upload
$xcrud->change_type('scan_ktp','image');
$xcrud->change_type('scan_paspor','image');

// menghitung sisa pembayaran
$xcrud->subselect('Sisa Pembayaran','SELECT IF({ikut_travel} = "Ya" , biaya_conference + biaya_travel - {pembayaran}, biaya_conference - {pembayaran}) FROM ais_setting WHERE tahun = '.$ais_periode_tahun.'');

// menmbah label RP.
$xcrud->change_type('pembayaran', 'price', '0', array('prefix'=>'Rp. '));
$xcrud->change_type('Sisa Pembayaran', 'price', '0', array('prefix'=>'Rp. '));

echo $xcrud->render();

?>

</div>

<script type="text/javascript" src="../assets/js/number-divider.min.js"></script>
<script>
	$('.uang').divide();
</script>
	
<?php 
include "../include/footer.php";
?>