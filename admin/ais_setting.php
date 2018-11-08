<?php 
$page = 'ais_peserta';
include "../include/header.php";
// cek akses
cekAdmin($_SESSION['akses_level']);

// menentukan tahun
$tahun = $_SESSION['ais_periode_tahun'];

$setting = mysqli_fetch_assoc(mysqli_query($conn,"SELECT * FROM ais_setting WHERE tahun = '$tahun'"));
?>

<div class="w3-container">
<div class="w3-padding w3-green">
	Periode Tahun : <b><?php echo $_SESSION['ais_periode_tahun'];; ?></b>
</div>
<br>
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


<form action="ais_setting_action.php" method="post" class="w3-padding w3-card" >

	<label>Periode Tahun</label>
	<select class="w3-select w3-border" name="ais_periode_tahun" >
		<option value="2017">2017</option>
		<option value="2018" <?php if($_SESSION['ais_periode_tahun'] == 2018){ echo "selected";} ?>>2018</option>
		<option value="2019" <?php if($_SESSION['ais_periode_tahun'] == 2019){ echo "selected";} ?>>2019</option>
		<option value="2020" <?php if($_SESSION['ais_periode_tahun'] == 2020){ echo "selected";} ?>>2020</option>
		<option value="2022" <?php if($_SESSION['ais_periode_tahun'] == 2022){ echo "selected";} ?>>2022</option>
		<option value="2023" <?php if($_SESSION['ais_periode_tahun'] == 2023){ echo "selected";} ?>>2023</option>
	</select>
	<br>
	<br>
	<button type="submit" name="submit" class="w3-button w3-green"><i class="fa fa-save"></i> Submit</button>
</form>
<br>

<form action="ais_setting_action.php" method="post" class="w3-padding w3-card">

	<label>Nama Conference</label>
	<input type="text" class="w3-input w3-border" name="nama" value="<?php echo $setting['nama'] ?>">
	<br>

	<label>Negara</label>
	<input type="text" class="w3-input w3-border" name="negara" value="<?php echo $setting['negara'] ?>">
	<br>

	<label>Tanggal</label>
	<input type="date" class="w3-input w3-border" name="tanggal" value="<?php echo $setting['tanggal'] ?>">
	<br>

	<label>Keterangan</label>
	<textarea class="w3-input w3-border" name="keterangan"><?php echo $setting['keterangan'] ?></textarea>
	<br>

	<label>Biaya Conference</label>
	<input type="text" class="w3-input w3-border uang" name="biaya_conference" placeholder="Rp. " value="<?php echo $setting['biaya_conference'] ?>">
	<br>

	<label>Biaya Travel</label>
	<input type="text" class="w3-input w3-border uang" name="biaya_travel" placeholder="Rp. " value="<?php echo $setting['biaya_travel'] ?>">
	<br>

	<input type="text" name="tahun" value="<?php echo $tahun ?>" hidden>


	<button type="submit" name="submit_update" class="w3-button w3-green"><i class="fa fa-save"></i> Save</button>
</form>

<script type="text/javascript" src="../assets/js/jquery-3.3.1.slim.min.js"></script>
<script type="text/javascript" src="../assets/js/number-divider.min.js"></script>

<script>
	$('.uang').divide();
</script>
</div>
<?php 
include "../include/footer.php";
?>