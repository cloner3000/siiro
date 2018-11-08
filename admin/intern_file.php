<?php 
$page = 'intern_file';
include "../include/header.php";
// cek akses
cekAdmin($_SESSION['akses_level']);
?>
<div class="w3-container">
   <?php
   	$username = $_SESSION['nama'];
    $xcrud = Xcrud::get_instance();
	$xcrud->table('intern_file');
	$xcrud->relation('nama_intern','intern','name','name');
	$xcrud->table_name('Data File Intern');
	$xcrud->change_type('file', 'file');
    echo $xcrud->render();
	?>
</div>
<?php 
include "../include/footer.php";
?>