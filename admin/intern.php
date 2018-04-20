<?php 
$page = 'intern';
include "../include/header.php";
?>
<div class="col-lg-12">
   <?php
   	$username = $_SESSION['nama'];
    $xcrud = Xcrud::get_instance();
	$xcrud->table('intern');
	$xcrud->table_name('Data Intern');
	$xcrud->change_type('photo', 'image');
	$xcrud->change_type('passport_scan', 'file');
	$xcrud->change_type('visa_scan', 'file');
    echo $xcrud->render();
	?>
</div>
<?php 
include "../include/footer.php";
?>