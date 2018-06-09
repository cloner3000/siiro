<?php 
$page = 'ais_peserta';
include "../include/header.php";
?>
<div class="w3-padding w3-green">
	Periode Tahun : <b><?php echo $_SESSION['ais_periode_tahun']; ?></b>
</div>
<br>
<div class="w3-row">
	<div class="w3-half">
		
	<form method="post" class="w3-padding w3-card">
	<p>
		<label>Periode Tahun</label>
	</p>
	<p>
		<select class="w3-select w3-border" name="ais_periode_tahun" style="width: 50%">
			<option value="2017">2017</option>
			<option value="2018" <?php if($_SESSION['ais_periode_tahun'] == 2018){ echo "selected";} ?>>2018</option>
			<option value="2019" <?php if($_SESSION['ais_periode_tahun'] == 2019){ echo "selected";} ?>>2019</option>
			<option value="2020" <?php if($_SESSION['ais_periode_tahun'] == 2020){ echo "selected";} ?>>2020</option>
			<option value="2022" <?php if($_SESSION['ais_periode_tahun'] == 2022){ echo "selected";} ?>>2022</option>
			<option value="2023" <?php if($_SESSION['ais_periode_tahun'] == 2023){ echo "selected";} ?>>2023</option>
		</select>

		<button type="submit" name="submit" class="w3-button w3-green"><i class="fa fa-save"></i> Submit</button>
	</p>
</form>
</div>
</div>

<?php 
if (isset($_POST['submit'])) {
	// set tahun dari pilihan
	$ais_periode_tahun = $_POST['ais_periode_tahun'];
	$_SESSION['ais_periode_tahun'] = $ais_periode_tahun;
	header("Location: ais_periode_tahun.php");
}
?>

<?php 
include "../include/footer.php";
?>