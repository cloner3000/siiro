<?php 
$page = 'arsip';
include "../include/header.php";
?>

<div class="w3-container">
   <?php
   	$username = $_SESSION['nama'];
    $xcrud = Xcrud::get_instance();
	$xcrud->table('arsip');
	$xcrud->relation('jenis_arsip','arsip_jenis','nama_jenis','nama_jenis');
    $xcrud->change_type('file', 'file');
    $xcrud->columns('pemilik',true);
    $xcrud->fields('pemilik',true);
    echo $xcrud->render();
	?>

</div>

<?php 
include "../include/footer.php";
?>