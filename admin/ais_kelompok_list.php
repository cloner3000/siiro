<?php 
$page = 'ais_kelompok_list';
$title = 'AIS Kelompok list';
include "../include/header.php";
// cek akses
cekAdmin($_SESSION['akses_level']);

$periode_tahun = $_SESSION['ais_periode_tahun'];

// menentukan berdasarkan ais setting
$ais_setting = mysqli_fetch_assoc(mysqli_query($conn,"SELECT * FROM ais_setting WHERE tahun = '$periode_tahun' "));
$biaya_travel = $ais_setting['biaya_travel'];
$biaya_conference = $ais_setting['biaya_conference'];

$kelompok_result = mysqli_query($conn,"SELECT * FROM ais_kelompok WHERE periode_tahun = '$periode_tahun'");
?>

<div class="w3-container">

	<div class="w3-padding w3-green">
		Periode Tahun : <b><?php echo $_SESSION['ais_periode_tahun']; ?></b>
	</div>
	<div class="w3-row">
		<div class="w3-half w3-padding w3-pale-green">
			<h4>Biaya Conference : <b>Rp. <span class="uang"><?php echo $ais_setting['biaya_conference']; ?></span></b></h4>
		</div>
		<div class="w3-half w3-padding w3-pale-blue">
			<h4>Biaya Travel : <b>Rp. <span class="uang"><?php echo $ais_setting['biaya_travel']; ?></span></b></h4>
		</div>
	</div>

	<script type="text/javascript" src="../assets/js/jquery-3.3.1.slim.min.js"></script>
	<script type="text/javascript" src="../assets/js/number-divider.min.js"></script>
	<script>
		$('.uang').divide();
	</script>

</div>

<?php 
$numOfCols = 3;
$rowCount = 0;
$w3ColWidth = 12 / $numOfCols;
?>
<div class="w3-row" id="printarea">
	<?php foreach($kelompok_result as $kelompok){ ?>
		<div class="w3-col l<?php echo $w3ColWidth ?>" style="grid-row-gap: 50px;">
			<div class="w3-margin w3-border">
				<div class="w3-padding w3-theme">
					<b><?php echo $kelompok["nama"] ?></b>
				</div>
				<div class="w3-padding">
					<p><b>Pembimbing</b></p>

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


					<p><b>Anggota</b></p>
					<ol>
						<?php
						$peserta_result = mysqli_query($conn,"SELECT * FROM ais_peserta WHERE status = 'Peserta' AND FIND_IN_SET('$kelompoknya', kelompok)");
						foreach($peserta_result as $peserta){
							?>
							<li>
								<?php echo $peserta['nama']; ?>
								<?php

								// menentukan luas atau tidak
								if($peserta['ikut_travel'] == 'Ya'){
									$sisa_pembayaran = ($biaya_conference + $biaya_travel) - $peserta['pembayaran'];
									if($sisa_pembayaran <= 0){
										echo '<span class="w3-round w3-green w3-tiny" style="padding:2px 4px 2px 4px">lunas</span> <i class="fa fa-plane"></i>';
									}else{
										echo '<span class="w3-round w3-red w3-tiny" style="padding:2px 4px 2px 4px">Belum Lunas</span> <i class="fa fa-plane"></i>';
									}
								}else{
									$sisa_pembayaran = $biaya_conference - $peserta['pembayaran'];
									if($sisa_pembayaran <= 0){
										echo '<span class="w3-round w3-green w3-tiny" style="padding:2px 4px 2px 4px">Lunas</span>';
									}else{
										echo '<span class="w3-round w3-red w3-tiny" style="padding:2px 4px 2px 4px">Belum Lunas</span>';
									}
								}

								?>
							</li>
						<?php } ?>
					</ol>
				</div>
				<div class="w3-padding w3-light-grey">

					<a class="w3-button w3-pale-green" href="ais_kelompok_detail.php?kelompok=<?php echo $kelompok['id'] ?>"><i class="fa fa-info"></i> Detail</a>
				</div>
			</div>
		</div>
		<?php 
		$rowCount++;
		if($rowCount % $numOfCols == 0) echo '</div><div class="w3-row">';
	} 
	?>

</div>

<?php 
include "../include/footer.php";
?>