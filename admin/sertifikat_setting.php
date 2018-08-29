<?php 
$title = 'Sertifikat Setting';
include "../include/header.php";
$ais_periode_tahun = $_SESSION['ais_periode_tahun'];
?>
<div class="w3-container">

<div class="w3-padding w3-green">
	Periode Tahun : <b><?php echo $_SESSION['ais_periode_tahun']; ?></b>
</div>
<br>


<?php
$xcrud->table('sertifikat');
echo $xcrud->render();
?>


<?php 
include "../include/footer.php";
?>