<?php 
include "../include/header.php";
// cek akses
cekAdmin($_SESSION['akses_level']);
?>
<div class="w3-container">
   <?php
	$xcrud->table('user');
	$xcrud->table_name('Data User');
	$xcrud->change_type('password', 'password', 'sha1', array('placeholder'=>'Masukan password'));
	$xcrud->change_type('foto', 'image');
	$xcrud->columns('foto,nama_user,username,akses_level');
	$xcrud->fields('foto,nama_user,username,akses_level,password');
    echo $xcrud->render();

	?>
</div>
<?php 
include "../include/footer.php";
?>