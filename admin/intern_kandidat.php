<?php 
$title = 'Kandidat';
include "../include/header.php";
// cek akses
cekAdmin($_SESSION['akses_level']);
?>
<div class="w3-container">
<?php
$xcrud = Xcrud::get_instance();
$xcrud->table('intern_kandidat');
$xcrud->table_name('Kandidat Intern');
$xcrud->columns('sumber,nama,kebangsaan,tanggal_lahir,status');
$xcrud->validation_required('name');
echo $xcrud->render();
?>
</div>
<?php 
include "../include/footer.php";
?>