<?php
$page = 'index';
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

<!-- morris chart -->
<!-- <link href="../assets/binary/assets/js/morris/morris-0.4.3.min.css" rel="stylesheet" />
<script src="../assets/binary/assets/js/morris/raphael-2.1.0.min.js"></script>
<script src="../assets/binary/assets/js/morris/morris.js"></script>
<script src="../assets/vendor/jquery/jquery.min.js"></script> -->

<div class="col-md-12">
	<div class="panel panel-info">
		<div class="panel-heading">
			Summary
		</div>
		<div class="panel-body">
				<div class="infobox infobox-green">
					<div class="infobox-icon">
						<i class="ace-icon fa fa-book"></i>
					</div>

					<div class="infobox-data">
						<span class="infobox-data-number"><?php echo $jumlah_mou; ?></span>
						<div class="infobox-content"><a href="mou.php">MOU dan MOA</a></div>
					</div>

				</div>
				<div class="infobox infobox-orange">
					<div class="infobox-icon">
						<i class="ace-icon fa fa-users"></i>
					</div>
					<div class="infobox-data">
						<span class="infobox-data-number"><?php echo $jumlah_intern; ?></span>
						<div class="infobox-content"><a href="intern.php">Interns</a></div>
					</div>
				</div>
				<div class="infobox infobox-blue">
					<div class="infobox-icon">
						<i class="ace-icon fa fa-file"></i>
					</div>
					<div class="infobox-data">
						<span class="infobox-data-number"><?php echo $jumlah_file; ?></span>
						<div class="infobox-content"><a href="intern_file.php">Berkas Intern</a></div>
					</div>
				</div>
		</div>
	</div>
</div>

<script type="text/javascript" src="../assets/ace/assets/js/jquery-1.11.3.min.js"></script>

<?php
include "../include/footer.php";
?>