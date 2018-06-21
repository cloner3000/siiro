<?php
$page = 'index';
$title 	= 'Dashboard';
include "../include/header.php";
include "../include/database.php";
?>
<?php 
// mou
$mou = mysqli_query($conn,'SELECT * FROM mou');
$array_mou = mysqli_fetch_assoc($mou);
$jumlah_mou = mysqli_num_rows($mou);

// intern
$intern = mysqli_query($conn,'SELECT * FROM intern');
$jumlah_intern = mysqli_num_rows($intern);

// Berkas Intern
$intern_file = mysqli_query($conn,'SELECT * FROM intern_file');
$jumlah_file = mysqli_num_rows($intern_file);

// 2014
$mou_tahun2014 = mysqli_query($conn,'SELECT * FROM mou WHERE YEAR(start) = 2014');
$jumlah_tahun2014 = mysqli_num_rows($mou_tahun2014);
?>

<?php  

// notif pesan
if (!empty($_SESSION['pesan'])) { ?>
	<div class="w3-green w3-large w3-padding">
		<h1><i class="fa fa-check"></i> <?php echo $_SESSION['pesan']; ?></h1>
	</div>
	<br>
	<?php 
	$_SESSION['pesan'] = '';
}

?>

<div id="morris-bar-chart"></div>
	
<div class="w3-padding w3-red w3-quarter">
	<div class="w3-xxlarge">
		<i class="fa fa-book"></i>
		<?php echo $jumlah_mou; ?>
	</div>
		MOU dan MOA
</div>

<div class="w3-padding w3-blue w3-quarter">
	<div class="w3-xxlarge">
		<i class="fa fa-users"></i>
		<?php echo $jumlah_intern; ?>
	</div>
		Intern
</div>
<div class="w3-padding w3-green w3-quarter">
	<div class="w3-xxlarge">
		<i class="fa fa-file"></i>
		<?php echo $jumlah_file; ?>
	</div>
		File Intern
</div>
<div class="w3-padding w3-deep-orange w3-quarter">
	<div class="w3-xxlarge">
		<i class="fa fa-star"></i>
		<?php echo $jumlah_mou; ?>
	</div>
		MOU dan MOA
</div>
<div class="w3-padding w3-green w3-quarter">
	<div class="w3-xxlarge">
		<i class="fa fa-book"></i>
		<?php echo $jumlah_mou; ?>
	</div>
		MOU dan MOA
</div>

<div class="w3-padding w3-deep-orange w3-quarter">
	<div class="w3-xxlarge">
		<i class="fa fa-users"></i>
		<?php echo $jumlah_intern; ?>
	</div>
		Intern
</div>
<div class="w3-padding w3-red w3-quarter">
	<div class="w3-xxlarge">
		<i class="fa fa-file"></i>
		<?php echo $jumlah_file; ?>
	</div>
		File Intern
</div>
<div class="w3-padding w3-blue w3-quarter">
	<div class="w3-xxlarge">
		<i class="fa fa-star"></i>
		<?php echo $jumlah_mou; ?>
	</div>
		MOU dan MOA
</div>

</div>
<?php
include "../include/footer.php";
?>