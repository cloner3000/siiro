<?php 
$page = 'arsip_jenis';
include "../include/header.php";
// cek akses
cekAdmin($_SESSION['akses_level']);

?>

<div class="w3-container">
   <?php
   	$username = $_SESSION['nama'];
    $xcrud = Xcrud::get_instance();
	$xcrud->table('arsip_jenis');
    echo $xcrud->render();
	?>

</div>

<?php 
include "../include/footer.php";
?>