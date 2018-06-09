<?php 
$page = 'intern';
include "../include/header.php";
?>
   <?php
   	$username = $_SESSION['nama'];
    $xcrud = Xcrud::get_instance();
	$xcrud->table('intern');
	$xcrud->table_name('Data Intern');
	$xcrud->columns('periode_tahun,photo,name,contry,start_internship,end_internship');
	$xcrud->change_type('photo', 'image');
	$xcrud->validation_required('name,periode_tahun');
	$xcrud->change_type('periode_tahun', 'int');
	$xcrud->change_type('passport_scan', 'file');
	$xcrud->change_type('visa_scan', 'file');
    echo $xcrud->render();
	?>
<?php 
include "../include/footer.php";
?>