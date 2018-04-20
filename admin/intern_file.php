<?php 
$page = 'intern_file';
include "../include/header.php";
?>
<div class="col-lg-12">
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