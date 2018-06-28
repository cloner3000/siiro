<?php 
$page = 'ais_pulang';
include "../include/header.php";
?>

<div class="w3-container">

<div class="w3-padding w3-green">
	Periode Tahun : <b><?php echo $_SESSION['ais_periode_tahun']; ?></b>
</div>
<br>
   <?php
   	$username = $_SESSION['nama'];
    $xcrud = Xcrud::get_instance();
	$xcrud->table('ais_pulang');
	$xcrud->relation('ketua','ais_peserta','id','nama','periode_tahun = '.$_SESSION['ais_periode_tahun'],'',true);
	$xcrud->relation('anggota','ais_peserta','id','nama','periode_tahun = '.$_SESSION['ais_periode_tahun'],'',true);
	if (isset($_SESSION['ais_periode_tahun'])) {
	$xcrud->where('periode_tahun =', $_SESSION['ais_periode_tahun']);
	$xcrud->pass_default('periode_tahun', $_SESSION['ais_periode_tahun']);
	}
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

</div>

<?php 
include "../include/footer.php";
?>