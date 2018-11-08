<?php
$page = 'mou';
include "../include/header.php";
// cek akses
cekAdmin($_SESSION['akses_level']);
?>

<div class="w3-container">
   <?php
   	$username = $_SESSION['nama'];
    $xcrud = Xcrud::get_instance();
	$xcrud->table('mou');
	$xcrud->table_name('Data MOU');
	$xcrud->change_type('scan', 'image');
	$xcrud->validation_required('document_id,partner');
	$xcrud->fields('id_user,tanggal_input', true, false, 'create');
	$xcrud->columns('id_user,tanggal_input', true);
	$xcrud->pass_var('id_user', $username);
	$xcrud->label('id_user','Operator');
    echo $xcrud->render();
	?>
</div>
<?php 
include "../include/footer.php";
?>