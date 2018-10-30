<?php 
include "../include/header.php";
?>

<div class="w3-container">
   <?php
	$ais_periode_tahun = $_SESSION['ais_periode_tahun'];
   	$username = $_SESSION['nama'];
    $xcrud = Xcrud::get_instance();
    $jenis = 'bukti_transfer';
    $nama = 'bukti_transfer';
	$xcrud->table('arsip');
	$xcrud->where('jenis_arsip =','bukti_transfer');
	$xcrud->table_name('Data Bukti Transfer');
    $xcrud->columns('pemilik,file,keterangan');
    $xcrud->fields('pemilik,file,keterangan');
	$xcrud->relation('pemilik','ais_peserta','id','nama','ais_peserta.periode_tahun = '.$ais_periode_tahun);
    $xcrud->change_type('file', 'file');
	$xcrud->pass_var('jenis_arsip', 'bukti_transfer');
    echo $xcrud->render();
    ?>
</div>

<?php 
include "../include/footer.php";
?>