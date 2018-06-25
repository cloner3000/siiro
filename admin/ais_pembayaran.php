<?php 
$page = 'ais_pembayaran';
$title = 'AIS Pembayaran';

include "../include/header.php";
$ais_periode_tahun = $_SESSION['ais_periode_tahun'];
?>
<div class="w3-padding w3-green">
	Periode Tahun : <b><?php echo $_SESSION['ais_periode_tahun']; ?></b>
</div>
<br>

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


<?php
$xcrud->table('ais_peserta');
$xcrud->where('status =', 'Peserta');
$xcrud->where('periode_tahun =', $ais_periode_tahun);
$xcrud->limit(20);

// mengilangkan judul tabel
$xcrud->unset_title();

// hilangkan fungsi
$xcrud->unset_add();
$xcrud->unset_remove();

// kolom yang di tampilkan
$xcrud->columns('kelompok,nama,ikut_travel,pembayaran,Sisa Pembayaran');

// field yang di tampilkan
$xcrud->fields('ikut_travel,pembayaran,Sisa Pembayaran');

// menganti label
$xcrud->label('pembayaran','Yang sudah di bayar');

// relasi kelompok
$xcrud->relation('kelompok','ais_kelompok','id','nama','periode_tahun = '.$ais_periode_tahun,'',false);

// menghitung sisa pembayaran
$xcrud->subselect('Sisa Pembayaran','SELECT IF({ikut_travel} = "Ikut" , biaya_conference + biaya_travel - {pembayaran}, biaya_conference - {pembayaran}) FROM ais_setting');

// menmbah label RP.
$xcrud->change_type('pembayaran', 'price', '0', array('prefix'=>'Rp. '));
$xcrud->change_type('Sisa Pembayaran', 'price', '0', array('prefix'=>'Rp. '));

// mewarnai berdasarkan pembayaran
$xcrud->highlight_row('Sisa Pembayaran', '>', 0, '#ffc9c4');
$xcrud->highlight_row('Sisa Pembayaran', '<=', 0, '#c1ffc6');

// melihat total jumlah pendapatan
$xcrud->sum('pembayaran');
echo $xcrud->render();
?>

<?php 
include "../include/footer.php";
?>