<?php 
$page = 'ais_kelompok_list';
$title = 'AIS Kelompok list';
include "../include/header.php";
include "../include/database.php";

$periode_tahun = $_SESSION['ais_periode_tahun'];

$kelompok_result = mysqli_query($conn,"SELECT * FROM ais_kelompok WHERE periode_tahun = '$periode_tahun'");
?>
<div class="w3-padding w3-green">
	Periode Tahun : <b><?php echo $_SESSION['ais_periode_tahun']; ?></b>
</div>
<br>

<div class="w3-row" id="printarea">
<?php foreach($kelompok_result as $kelompok){ ?>
	<div class="w3-col l4 m6">
		<div class="w3-padding w3-margin w3-border">
		<b><?php echo $kelompok["nama"] ?></b>
		<p>Pembimbing</p>
		
		<ul>
			<?php
			// mengeluarkan pembimbing 
			$kelompoknya = $kelompok['id'];
			$pembimbing_result = mysqli_query($conn,"SELECT * FROM ais_peserta WHERE status = 'Pembimbing' AND FIND_IN_SET('$kelompoknya', kelompok)");
			foreach($pembimbing_result as $pembimbing){
				?>
				<li><?php echo $pembimbing['nama'] ?></li>
			<?php } ?>
		</ul>


		<p>Anggota</p>
		<ol>
			<?php
			$peserta_result = mysqli_query($conn,"SELECT * FROM ais_peserta WHERE status = 'Peserta' AND FIND_IN_SET('$kelompoknya', kelompok)");
			foreach($peserta_result as $peserta){
				?>
				<li><?php echo $peserta['nama']; ?></li>
			<?php } ?>
		</ol>

		<button class="w3-button w3-pale-red"><i class="fa fa-info"></i> Detail</button>
		<button class="w3-button w3-pale-green"><i class="fa fa-print"></i> Print</button>
	</div>
	</div>
<?php } ?>

</div>

<?php 
include "../include/footer.php";
?>