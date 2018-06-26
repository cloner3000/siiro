<?php 
$page = 'ais_pembayaran';
$title = 'AIS Pembayaran';
include "../include/header.php";
?>
<div class="w3-padding w3-green">
	Periode Tahun : <b><?php echo $_SESSION['ais_periode_tahun']; ?></b>
</div>
<br>
<?php
$periode_tahun 	= $_SESSION['ais_periode_tahun']; 

// filter kelompok
if (isset($_POST['submit_filter_kelompok'])) {
	if($_POST['filter_kelompok'] == ''){
		$ais_peserta 	= mysqli_query($conn,"SELECT * FROM ais_peserta WHERE status = 'peserta' AND periode_tahun = '$periode_tahun'");
		$filter_kelompok = '';
	}else{
		$filter_kelompok = $_POST['filter_kelompok'];
		$ais_peserta 	= mysqli_query($conn,"SELECT * FROM ais_peserta WHERE status = 'peserta' AND periode_tahun = '$periode_tahun' AND kelompok = '$filter_kelompok'");
	}
}else{
	$ais_peserta 	= mysqli_query($conn,"SELECT * FROM ais_peserta WHERE status = 'peserta' AND periode_tahun = '$periode_tahun'");
	$filter_kelompok = '';
}

// Cari
if (isset($_POST['submit_cari'])) {
	$cari = $_POST['cari'];
	$ais_peserta 	= mysqli_query($conn,"SELECT * FROM ais_peserta WHERE nama LIKE '%$cari%' AND status = 'peserta' AND periode_tahun = '$periode_tahun'");
	echo $cari;
}

// query yuang lain
$ais_kelompok 	= mysqli_query($conn,"SELECT * FROM ais_kelompok WHERE periode_tahun = '$periode_tahun'");
$ais_setting	= mysqli_fetch_assoc(mysqli_query($conn,"SELECT * FROM ais_setting WHERE tahun = '$periode_tahun'"));
$no = 1;
?>

<?php 
// notif pesan
if (!empty($_SESSION['pesan'])) { ?>
	<div class="w3-green w3-large w3-padding">
		<i class="fa fa-check"></i> <?php echo $_SESSION['pesan']; ?>
	</div>
	<br>
	<?php 
	$_SESSION['pesan'] = '';
} 
?>

<div class="w3-row">
	<div class="w3-half w3-padding w3-pale-green">
		<h4>Biaya Conference : <b>Rp. <span class="uang"><?php echo $ais_setting['biaya_conference']; ?></span></b></h4>
	</div>
	<div class="w3-half w3-padding w3-pale-blue">
		<h4>Biaya Travel : <b>Rp. <span class="uang"><?php echo $ais_setting['biaya_travel']; ?></span></b></h4>
	</div>
</div>


	<div class="w3-row w3-section">
		<form method="post">
		<div class="w3-col l4">
			<select class="w3-select w3-border" name="filter_kelompok">
				<option value="">ALL</option>
				<?php foreach($ais_kelompok as $ais_kelompok){ ?>
				<option value="<?php echo $ais_kelompok['id']; ?>" <?php if($filter_kelompok == $ais_kelompok['id']){ echo 'selected';} ?> ><?php echo $ais_kelompok['nama']; ?></option>
				<?php } ?>
			</select>
		</div>

		<div class="w3-col l1">
			<button class="w3-button w3-green" type="submit" name="submit_filter_kelompok"><i class="fa fa-filter"></i> Filter</button>
		</div>
		</form>

		<form method="post">
		<div class="w3-col l3">
			<input type="text" class="w3-input w3-border" type="submit" name="cari">
		</div>
		<div class="w3-col l1">
			<button class="w3-button w3-green" type="submit" name="submit_cari"><i class="fa fa-search"></i> Cari</button>
		</div>
		</form>
	</div>

<table class="w3-table w3-border">
	<tr class="w3-theme">
		<th>No</th>
		<th>Nama</th>
		<th>Kelompok</th>
		<th>Ikut Travel</th>
		<th>Biaya harus dibayar</th>
		<th>Sudah di bayar</th>
		<th>Sisa Pembayaran</th>
		<th>Aksi</th>
	</tr>
	<?php foreach($ais_peserta as $ais_peserta){?>
		<?php

		// menentukan sisa pembayaran
		if($ais_peserta['ikut_travel'] == 'Ya'){
			$sisa_pembayaran 	= $ais_setting['biaya_travel'] + $ais_setting['biaya_conference'] - $ais_peserta['pembayaran'];
		}else{ 
			$sisa_pembayaran 	= $ais_setting['biaya_conference'] - $ais_peserta['pembayaran'];
		}
		// menentukan yang harus di bayar
		if($ais_peserta['ikut_travel'] == 'Ya'){ 
			$biaya_total = $ais_setting['biaya_travel'] + $ais_setting['biaya_conference'];
		}else{ 
			$biaya_total = $ais_setting['biaya_conference'];
		}

		?>
		<tr class="<?php if($sisa_pembayaran <= 0 ){echo 'w3-pale-green';}else{echo 'w3-pale-red';} ?>">
			<td><?php echo $no++; ?></td>

			<td><?php echo $ais_peserta['nama']; ?></td>

			<td><?php echo $ais_peserta['kelompok']; ?></td>

			<td><?php echo $ais_peserta['ikut_travel']; ?></td>

			<td><span class="uang"><?php echo $biaya_total; ?></span></td>

			<td><span class="uang"><?php echo $ais_peserta['pembayaran']; ?></span></td>

			<?php 
			if($sisa_pembayaran > 0 ){echo '<td><span class="uang">'.$sisa_pembayaran.'</span></td>';}else{echo '<td><span class="uang"><b>Lunas</b></span></td>';} 
			?>

			<td><button class="w3-button w3-green" onclick="document.getElementById('<?php echo $ais_peserta['id']; ?>').style.display='block'"><i class="fa fa-edit"></i> Edit</button></td>
		</tr>

		<!-- modal -->
		<div id="<?php echo $ais_peserta['id']; ?>" class="w3-modal">
			<div class="w3-modal-content w3-card  w3-animate-zoom">
				<header class="w3-container w3-theme"> 
					<span onclick="document.getElementById('<?php echo $ais_peserta['id']; ?>').style.display='none'" 
						class="w3-button w3-display-topright">&times;</span>
						<h3><b><?php echo $ais_peserta['nama']; ?></b></h3>
					</header>
					<div class="w3-row">
						<div class="w3-third w3-padding w3-pale-green">
							<h4>Biaya Total : <br><b>Rp. <span class="uang"><?php if($ais_peserta['ikut_travel'] == 'Ya'){ echo $ais_setting['biaya_travel'] + $ais_setting['biaya_conference'];}else{ echo $ais_setting['biaya_conference'];} ?></span></b></h4>
						</div>
						<div class="w3-third w3-padding w3-pale-blue">
							<h4>Sudah Di Bayar : <br><b>Rp. <span class="uang"><?php echo $ais_peserta['pembayaran']; ?></span></b></h4>
						</div>
						<div class="w3-third w3-padding w3-pale-red">
							<h4>Belum di Bayar : <br><b>Rp. <span class="uang">
								<?php 
								if($sisa_pembayaran > 0 ){echo $sisa_pembayaran;}else{echo '<b>Lunas</b>';} 
								?>
							</span></b></h4>
						</div>
					</div>
					<div class="w3-container">

						
						<form action="ais_pembayaran_action.php" method="post">
							<p>
								<label><b>Ikut Travel</b></label>
								<select class="w3-select w3-border" type="text" name="ikut_travel">
									<option value="Tidak" <?php if($ais_peserta['ikut_travel'] == 'Tidak'){echo "selected";} ?>>Tidak</option>
									<option value="Ya" <?php if($ais_peserta['ikut_travel'] == 'Ya'){echo "selected";} ?>>Ya</option>
								</select>
							</p>
							<p>
								<label><b>Pembayaran</b></label>
								<input class="w3-input w3-border" type="text" name="sudah_pembayaran" value="<?php echo $ais_peserta['pembayaran'] ?>">
							</p>

							<input class="w3-input w3-border w3-hide" type="text" name="id" value="<?php echo $ais_peserta['id'] ?>">

							<!-- <p>
								<label><b>Tanggal</b></label>
								<input class="w3-input w3-border" type="date" name="tanggal" required>
							</p> -->

							<button class="w3-button w3-green" type="submit" name="submit"><i class="fa fa-save"></i> Simpan</button>
							<br>
							<br>
						</form>
					</div>
				</div>
			</div>
		<?php } ?>
	</table>



	<script type="text/javascript" src="../assets/js/jquery-3.3.1.slim.min.js"></script>
	<script type="text/javascript" src="../assets/js/number-divider.min.js"></script>
	<script>
		$('.uang').divide();
	</script>
	<?php
 //   	$username = $_SESSION['nama'];
 //    $xcrud = Xcrud::get_instance();
	// $xcrud->table('ais_peserta');
	// $xcrud->where('status = ','Peserta');
	// // $xcrud->highlight('pembayaran', '<', 3000000, 'red');
	// // $xcrud->highlight('pembayaran', '>=', 3000000, 'green');
	// $xcrud->highlight('sisa_pembayaran', '<', 3000000, 'red');
	// $xcrud->highlight('sisa_pembayaran', '>=', '0', 'green');
	// $xcrud->columns('nama,pembayaran,sisa_pembayaran');
	// $xcrud->fields('nama,pembayaran');
	// $xcrud->change_type(array('pembayaran','sisa_pembayaran'), 'price', '5', array('prefix'=>'Rp. ','decimals'=>0));
	// $xcrud->unset_add();
	// $xcrud->unset_remove();

	// if (isset($_SESSION['ais_periode_tahun'])) {
	// $xcrud->where('periode_tahun =', $_SESSION['ais_periode_tahun']);
	// $xcrud->pass_default('periode_tahun', $_SESSION['ais_periode_tahun']);
	// }
	// // $xcrud->column_callback('sisa_pembayaran','pembayaran_kolom');
	// $xcrud->before_update('sisa_pembayaran');
 //    echo $xcrud->render();
	?>


	<?php 
	include "../include/footer.php";
	?>