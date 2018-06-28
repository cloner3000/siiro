<?php 
$page = 'intern';
$title = 'Sertifikat Intern';
include "../include/header.php";
?>

<div class="w3-container">

<div class="w3-row">
	<form class="w3-card-4 w3-half" method="post">
		<div class="w3-padding w3-theme w3-large">
			Cari Intern
		</div>
		<div class="w3-padding w3-section w3-row">
			<input class="w3-input w3-border w3-col l8" type="text" name="nama_intern">
			<button class="w3-button w3-green w3-col l4" type="submit" name="submit"><i class="fa fa-search"></i> Cari</button>
		</div>
	</form>
</div>

<?php  

if(isset($_POST['submit'])){
	$no = 1;
	$nama_intern = $_POST['nama_intern'];
	// sql peserta tanggal
	$sql = "SELECT * FROM intern WHERE name LIKE '%$nama_intern%'";
	$hasil = mysqli_query($conn,$sql);
	$jumlah = mysqli_num_rows($hasil);
	if (mysqli_num_rows($hasil) > 0) {
		?>

		<hr>
		<div class="w3-row">
			<div class="w3-card-4">
				<div class="w3-padding w3-theme w3-large">
					Hasil Pencarian
				</div>
				<div class="">
					<div style="overflow-x:auto;">
					<table class="w3-table w3-border">
						<tr class="w3-pale-green">
							<th>No</th>
							<th>Nama</th>
							<th>Periode</th>
							<th>Start Internship</th>
							<th>End Internship</th>
							<th>Aksi</th>
						</tr>
						<?php
						while($row = mysqli_fetch_assoc($hasil)) {
							?>
							<tr>
								<td><?php echo $no++ ?></td>
								<td><?php echo $row['name']; ?></td>
								<td><?php echo $row['periode_tahun']; ?></td>
								<td><?php echo $row['start_internship']; ?></td>
								<td><?php echo $row['end_internship']; ?></td>
								<td>
									<button onclick="document.getElementById('<?php echo $row['id'] ?>').style.display='block'" class="w3-button w3-green"><i class="fa fa-print"></i> Print</button>


									<div id="<?php echo $row['id'] ?>" class="w3-modal">
										<div class="w3-modal-content w3-animate-top w3-card-4">
											<form method="post" action="intern_sertifikat_cetak.php" target="_blank">
											<header class="w3-container w3-theme"> 
												<span onclick="document.getElementById('<?php echo $row['id'] ?>').style.display='none'" 
												class="w3-button w3-display-topright">&times;</span>
												<h3>Detail untuk di cetak serrifikat</h3>
											</header>
											<div class="w3-container">
												<p>
													<?php 

													$tahun = date('Y');
													$bulan = date('m');

													$no_sertifikat = mysqli_fetch_assoc(mysqli_query($conn,"
														SELECT *
														FROM surat_nomor
														WHERE tahun = '$tahun' AND bulan = '$bulan' AND jenis = 'sertifikat'"));
													if($no_sertifikat){
														$sertifikat = $no_sertifikat['surat_ke'] + 1;
													}else{
														$sertifikat = 1;
													}
													 ?>
													<label>Nomor Sertifikat</label>
													<input type="text" name="nomor_sertifikat" class="w3-input w3-border" value="<?php echo 'IRO/AIP/'.date('Y/m').'/'.$sertifikat; ?>">
												</p>
												<p>
													<label>Nama</label>
													<input type="text" name="nama" class="w3-input w3-border" value="<?php echo $row['name'] ?>">
												</p>
												<p>
													<label>Negara</label>
													<input type="text" name="negara" class="w3-input w3-border" value="<?php echo $row['country'] ?>">
												</p>
												<p>
													<label>Mulai Internship</label>
													<input type="date" name="mulai_internship" class="w3-input w3-border" value="<?php echo $row['start_internship'] ?>">
												</p>
												<p>
													<label>Selesai Internship</label>
													<input type="date" name="selesai_internship" class="w3-input w3-border" value="<?php echo $row['end_internship'] ?>">
												</p>

													<input type="text" name="id" class="w3-hide" value="<?php echo $row['id'] ?>">

											</div>
											<footer class="w3-container w3-light-grey w3-padding w3-border">
												<button class="w3-button w3-green" type="submit"><i class="fa fa-print"></i> Cetak Sertifikat</button>
											</footer>
										</form>
										</div>
									</div>

								</td>
							</tr>
						<?php } ?>
					</table>
				</div>
				</div>
			</div>
		</div>


		<?php  
	}else{echo '<hr><div class="w3-padding w3-red"><h3><i class="fa fa-warning"></i> Intern tidak di temukan !</h3></div>';}
}
?>

</div>

<?php 
include "../include/footer.php";
?>