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
   	$username = $_SESSION['nama'];
	$xcrud->table('ais_peserta');
	$xcrud->order_by('id','desc');
	if (isset($ais_periode_tahun)) {
	$xcrud->where('periode_tahun =', $ais_periode_tahun);
	$xcrud->pass_default('periode_tahun', $ais_periode_tahun);
	$xcrud->relation('kelompok','ais_kelompok','id','nama','periode_tahun = '.$ais_periode_tahun,'',true);
	}
	$xcrud->columns('kelompok,status,nama,email,nomor_paspor,scan_paspor');
	$xcrud->change_type('status','multiselect','','Peserta,Pembimbing,Panitia');
	$xcrud->validation_required('nama');
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