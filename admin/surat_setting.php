<?php 
$title = 'Setting Surat';
include "../include/header.php";
?>

<div class="w3-container">
<?php
$xcrud->table('surat_setting');
$xcrud->columns('format_surat',true);
$xcrud->fields('format_surat');
$xcrud->unset_add();
$xcrud->unset_remove();
echo $xcrud->render();
?>
</div>

<?php 
include "../include/footer.php";
?>