<?php 
$title = 'Sertifikat Conference';
include "../include/header.php";
?>

<div class="w3-container">
<?php  
$xcrud->table('sertifikat_conference');
echo $xcrud->render();
?>
</div>

<?php 
include "../include/footer.php";
?>