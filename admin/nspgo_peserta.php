<?php 
$title = 'NSPGO peserta';
include '../include/header.php';
// cek akses
cekAdmin($_SESSION['akses_level']);
?>

<div class="w3-container">
<?php
$xcrud = Xcrud::get_instance();

$xcrud->table('nspgo_peserta');
$xcrud->table_name('NSPGO Peserta');

// hide
$xcrud->columns('poin','poin_dari',true);
$xcrud->fields('poin_dari',true);

// jurusan
$xcrud->change_type('jurusan','select','',',Desain Komunikasi Visual,Sistem Inforamsi,Teknik Informatika,Teknik Sipil,Teknik Elektro,Teknik Mesin');

// relasi
$xcrud->relation('poin','nspgo_peserta','id','nama','','',true);

// menghitung poin
$xcrud->subselect('Jumlah Poin','SELECT IF({poin}, LENGTH({poin}) - LENGTH(REPLACE({poin}, ",", "")) + 1, 0)');

echo $xcrud->render();

?>
</div>

<link href="../assets/css/select2.min.css" rel="stylesheet" />
<script src="../assets/js/select2.min.js"></script>
<script type="text/javascript">
    jQuery(document).on("xcrudbeforerequest", function(event, container) {
        if (container) {
            jQuery(container).find("select").select2("destroy");
        } else {
            jQuery(".xcrud").find("select").select2("destroy");
        }
    });
    jQuery(document).on("ready xcrudafterrequest", function(event, container) {
        if (container) {
            jQuery(container).find("select").select2();
        } else {
            jQuery(".xcrud").find("select").select2();
        }
    });
    jQuery(document).on("xcrudbeforedepend", function(event, container, data) {
        jQuery(container).find('select[name="' + data.name + '"]').select2("destroy");
    });
    jQuery(document).on("xcrudafterdepend", function(event, container, data) {
        jQuery(container).find('select[name="' + data.name + '"]').select2();
    });
</script>

<?php 
include '../include/footer.php';
 ?>