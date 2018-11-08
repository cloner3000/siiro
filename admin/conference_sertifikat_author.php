<?php 
$title = 'Cetak Sertifikat Author Conference';
include "../include/header.php";
// cek akses
cekAdmin($_SESSION['akses_level']);
?>
<div class="w3-container">

<?php
$no = 1;
// sql peserta tanggal
$sql = "SELECT * FROM sertifikat_conference";
$hasil = mysqli_query($conn,$sql);
?>
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
							<th>Author</th>
							<th>Sebagai</th>
							<th>Aksi</th>
						</tr>
						<?php
						foreach ($hasil as $row) {
							?>
							<tr>
								<td><?php echo $no++ ?></td>
								<td><?php echo $row['author']; ?></td>
								<td><?php echo $row['judul']; ?></td>
								<td>
									<button onclick="document.getElementById('<?php echo $row['id_sertifikat'] ?>').style.display='block'" class="w3-button w3-green"><i class="fa fa-print"></i> Print</button>


									<div id="<?php echo $row['id_sertifikat'] ?>" class="w3-modal">
										<div class="w3-modal-content w3-animate-top w3-card-4">
											<form method="post" action="conference_sertifikat_author_action.php" target="_blank">
											<header class="w3-container w3-theme"> 
												<span onclick="document.getElementById('<?php echo $row['id_sertifikat'] ?>').style.display='none'" 
												class="w3-button w3-display-topright">&times;</span>
												<h3>Detail</h3>
											</header>
											<div class="w3-container">
												<p>
													<label>Nomor Sertifikat</label>
													<input type="text" name="nomor" class="w3-input w3-border" value="<?php echo $row['nomor'] ?>" disabled>
												</p>
												<p>
													<label>Author</label>
													<input type="text" name="author" class="w3-input w3-border" value="<?php echo $row['author'] ?>">
												</p>
												<p>
													<label>Judul</label>
													<input type="text" name="judul" class="w3-input w3-border" value="<?php echo $row['judul'] ?>">
												</p>

													<input type="text" name="id" class="w3-hide" value="<?php echo $row['id_sertifikat'] ?>">

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



</div>
<?php 
include "../include/footer.php";
?>