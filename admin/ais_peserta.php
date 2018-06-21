<?php 
$page = 'ais_peserta';
include "../include/header.php";
$ais_periode_tahun = $_SESSION['ais_periode_tahun'];
?>
<div class="w3-padding w3-green">
	Periode Tahun : <b><?php echo $_SESSION['ais_periode_tahun']; ?></b>
</div>
<br>

<?php
$xcrud->table('ais_peserta');
$xcrud->order_by('id','desc');
$xcrud->where('status =', 'Peserta');
$xcrud->where('periode_tahun =', $ais_periode_tahun);

// pass default and hide
$xcrud->fields('status', true);
$xcrud->pass_var('status', 'Peserta');

// pass periode tahun
$xcrud->pass_default('periode_tahun', $ais_periode_tahun);

// kelompok
$xcrud->relation('kelompok','ais_kelompok','id','nama','periode_tahun = '.$ais_periode_tahun,'',false);

// jurusan
$xcrud->change_type('jurusan','select','','Desain Komunikasi Visual,Sistem Inforamsi,Teknik Informatika,Teknik Sipil,Teknik Elektro,Teknik Mesin');

// custom kolom
$xcrud->columns('kelompok,nama,email,nomor_paspor,scan_paspor');
// $xcrud->change_type('status','select','','Peserta,Pembimbing,Panitia');

// trvel
$xcrud->change_type('ikut_travel','select','','Tidak,Ya');

// harus diisi
$xcrud->validation_required('nama,kelompok');

echo $xcrud->render();
?>

<link href="../assets/css/select2.min.css" rel="stylesheet" />
<script src="../assets/js/select2.min.js"></script>
<script type="text/javascript">
    jQuery(document).on("xcrudbeforerequest", function(event, container) {
        if (container) {
            jQuery(container).find("select").select2("destroy");
        } else {
            jQuery(".xcrud").find("select").select2("destroy");
        }
    });
    jQuery(document).on("ready xcrudafterrequest", function(event, container) {
        if (container) {
            jQuery(container).find("select").select2();
        } else {
            jQuery(".xcrud").find("select").select2();
        }
    });
    jQuery(document).on("xcrudbeforedepend", function(event, container, data) {
        jQuery(container).find('select[name="' + data.name + '"]').select2("destroy");
    });
    jQuery(document).on("xcrudafterdepend", function(event, container, data) {
        jQuery(container).find('select[name="' + data.name + '"]').select2();
    });
</script>

<?php 
include "../include/footer.php";
?>