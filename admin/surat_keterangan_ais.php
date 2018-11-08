<?php 
$title = 'Surat ket Mengikuti AIS';
include "../include/header.php";
// cek akses
cekAdmin($_SESSION['akses_level']);

?>
<div class="w3-container">

<div class="w3-row">
	<form class="w3-card-4 w3-half" method="post">
		<div class="w3-padding w3-theme w3-large">
			Cari Nama
		</div>
		<div class="w3-padding w3-section w3-row">
			<input class="w3-input w3-border w3-col l8" type="text" name="nama">
			<button class="w3-button w3-green w3-col l4" type="submit" name="submit"><i class="fa fa-search"></i> Cari</button>
		</div>
	</form>
</div>

<?php  

if(isset($_POST['submit'])){
	$no = 1;
	$nama = $_POST['nama'];
	// sql peserta tanggal
	$sql = "SELECT * FROM ais_peserta WHERE nama LIKE '%$nama%' ORDER BY nama ASC LIMIT 10";
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
							<th>Jurusan</th>
							<th>Nomor KTP</th>
							<th>Aksi</th>
						</tr>
						<?php
						while($row = mysqli_fetch_assoc($hasil)) {
							?>
							<tr>
								<td><?php echo $no++ ?></td>
								<td><?php echo $row['nama']; ?></td>
								<td><?php echo $row['jurusan']; ?></td>
								<td><?php echo $row['nomor_ktp']; ?></td>
								<td>
									<button onclick="document.getElementById('<?php echo $row['id'] ?>').style.display='block'" class="w3-button w3-green"><i class="fa fa-print"></i> Print</button>


									<div id="<?php echo $row['id'] ?>" class="w3-modal">
										<div class="w3-modal-content w3-animate-top w3-card-4">
											<form method="post" action="surat_keterangan_ais_action.php" target="_blank">
											<header class="w3-container w3-theme"> 
												<span onclick="document.getElementById('<?php echo $row['id'] ?>').style.display='none'" 
												class="w3-button w3-display-topright">&times;</span>
												<h3>Detail untuk cetak surat</h3>
											</header>
											<div class="w3-container">
												<p>
													<?php 

													$tahun = date('Y');
													$bulan = getRomawi(date('m'));
													$id_peserta_ais = $row['id'];

													$cek_surat = mysqli_query($conn,"SELECT * FROM surat_nomor WHERE id_peserta_ais = '$id_peserta_ais' ");

													if(mysqli_num_rows($cek_surat) > 0){
														$hasil_surat = mysqli_fetch_assoc($cek_surat);
														$no_surat = $hasil_surat['nomor'];
														// menyimpan status nomor surat ada
														$status_no_surat = "ada";
													}else{
														$no_surat = mysqli_fetch_assoc(mysqli_query($conn,"SELECT * FROM surat_nomor WHERE tahun = '$tahun' AND bulan = '$bulan' AND jenis = 'keluar'"));
														if($no_surat){
															$no_surat = ($no_surat['surat_ke'] + 1).'/U.NSP/AIS/'.$bulan.'/'.date('Y');
															$status_no_surat = "tidak_ada";
														}else{
															$no_surat = sprintf("%03s", 1).'/U.NSP/AIS/'.$bulan.'/'.date('Y');
															$status_no_surat = "tidak_ada";
														}
													}

													
													 ?>
													<label>Nomor Surat</label>
													<br>
													<input type="text" name="nomor_surat" class="w3-input w3-border" value="<?php echo $no_surat; ?>">
												</p>
												<p>
													<label>Nama</label>
													<input type="text" name="nama" class="w3-input w3-border" value="<?php echo $row['nama'] ?>">
												</p>
												<p>
													<label>Jurusan</label>
													<input type="text" name="jurusan" class="w3-input w3-border" value="<?php echo $row['jurusan'] ?>">
												</p>
												<p>
													<label>NIM</label>
													<input type="text" name="nim" class="w3-input w3-border" >
												</p>
												<p>
													<label>Semester</label>
													<input type="text" name="semester" class="w3-input w3-border">
												</p>

													<input type="hidden" name="id" value="<?php echo $row['id'] ?>">
													<input type="hidden" name="status_no_surat" value="<?php echo $status_no_surat ?>">

											</div>
											<footer class="w3-container w3-light-grey w3-padding w3-border">
												<button class="w3-button w3-green" type="submit" onClick="window.location.reload()"><i class="fa fa-print"></i> Cetak Surat</button>
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

<hr>
		<?php  
	}else{echo '<hr><div class="w3-padding w3-red"><h3><i class="fa fa-warning"></i> Intern tidak di temukan !</h3></div>';}
}
?>

</div>
<?php 
include "../include/footer.php";
?>