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


<div class="w3-quarter">
	<div class="w3-card-4 w3-margin w3-padding w3-red ">
		<div class="w3-xxlarge">
			<i class="fa fa-book"></i>
			<?php echo $jumlah_mou; ?>
		</div>
		MOU dan MOA
	</div>
</div>

<div class="w3-quarter">
	<div class="w3-card-4 w3-margin w3-padding w3-blue ">

		<div class="w3-xxlarge">
			<i class="fa fa-users"></i>
			<?php echo $jumlah_intern; ?>
		</div>
		Intern
	</div>
</div>
<div class="w3-quarter">
	<div class="w3-card-4 w3-margin w3-padding w3-green ">

		<div class="w3-xxlarge">
			<i class="fa fa-file"></i>
			<?php echo $jumlah_file; ?>
		</div>
		File Intern
	</div>
</div>

<div class="w3-quarter">
	<div class="w3-card-4 w3-margin w3-padding w3-brown ">

		<div class="w3-xxlarge">
			<i class="fa fa-star"></i>
			<?php echo $jumlah_mou; ?>
		</div>
		MOU dan MOA
	</div>
</div>
<div class="w3-quarter">
	<div class="w3-card-4 w3-margin w3-padding w3-pale-green ">

		<div class="w3-xxlarge">
			<i class="fa fa-money"></i>
			<?php 
			$pemasukan = mysqli_fetch_assoc(mysqli_query($conn, "SELECT sum(pembayaran) as pemasukan FROM ais_peserta"));
			echo '<span class="w3-xlarge">Rp. </span><span class="w3-xlarge uang">'.$pemasukan['pemasukan'].'</span>'; 
			?>
		</div>
		Pemasukan
	</div>
</div>

<div class="w3-quarter">
	<div class="w3-card-4 w3-margin w3-padding w3-pale-yellow ">

		<div class="w3-xxlarge">
			<i class="fa fa-users"></i>
			<?php echo $jumlah_intern; ?>
		</div>
		Intern
	</div>
</div>
<div class="w3-quarter">
	<div class="w3-card-4 w3-margin w3-padding w3-pale-red ">

		<div class="w3-xxlarge">
			<i class="fa fa-file"></i>
			<?php echo $jumlah_file; ?>
		</div>
		File Intern
	</div>
</div>
<div class="w3-quarter">
	<div class="w3-card-4 w3-margin w3-padding w3-pale-blue ">

		<div class="w3-xxlarge">
			<i class="fa fa-star"></i>
			<?php echo $jumlah_mou; ?>
		</div>
		MOU dan MOA
	</div>
</div>

<div class="w3-row">
	<div class="w3-col l6">
		<div class="w3-padding w3-margin w3-card-4">
			<canvas id="myChart"></canvas>
		</div>
	</div>

	<div class="w3-col l6">
		<div class="w3-padding w3-margin w3-card-4">
			<canvas id="myChart2"></canvas>
		</div>
	</div>
</div>


<script src="../assets/js/Chart.min.js"></script>

<script>

	var ctx = document.getElementById('myChart2');
	var chart = new Chart(ctx, {
    // The type of chart we want to create
    type: 'line',

    // The data for our dataset
    data: {
    	labels: ["January", "February", "March", "April", "May", "June", "July"],
    	datasets: [{
    		label: "My First dataset",
    		backgroundColor: 'rgb(255, 99, 132)',
    		borderColor: 'rgb(255, 99, 132)',
    		data: [0, 10, 5, 2, 20, 30, 45],
    	}]
    },

    // Configuration options go here
    options: {}
});


	var ctx = document.getElementById('myChart');
	var chart = new Chart(ctx, {
    // The type of chart we want to create
    type: 'bar',

    // The data for our dataset
    data: {
    	labels: ["January", "February", "March", "April", "May", "June", "July"],
    	datasets: [{
    		label: "My First dataset",
    		backgroundColor: 'rgb(255, 99, 132)',
    		borderColor: 'rgb(255, 99, 132)',
    		data: [0, 10, 5, 2, 20, 30, 45],
    	}]
    },

    // Configuration options go here
    options: {}
});

</script>

<script type="text/javascript" src="../assets/js/jquery-3.3.1.slim.min.js"></script>
<script type="text/javascript" src="../assets/js/number-divider.min.js"></script>

<script>
	$('.uang').divide();
</script>

<?php
include "../include/footer.php";
?>