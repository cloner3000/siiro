<?php 
$title = 'Cetak Sertifikat Conference';
include "../include/header.php";
// cek akses
cekAdmin($_SESSION['akses_level']);

?>
<div class="w3-container">
<?php  
$xcrud->table('sertifikat_conference');
$xcrud->button('sertifikat_conference_action.php?id={id_sertifikat}', 'bootstrap theme');
echo $xcrud->render();
?>
</div>
<?php 
include "../include/footer.php";
?>