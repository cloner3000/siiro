<?php 
$page = 'ais_kelompok_list';
include "../include/header.php";
?>
<div class="w3-padding w3-green">
	Periode Tahun : <b><?php echo $_SESSION['ais_periode_tahun']; ?></b>
</div>
<br>

<div class="w3-row-padding">

<div class="w3-padding w3-card w3-quarter">
	<b>Kelompok 1</b>
	<p>Pembimbing</p>
	<ul>
		<li>Dudih Gustian</li>
	</ul>
	<p>Anggota</p>
	<ol>
		<li>Anton permana</li>
		<li>Ikhsan Thoir</li>
	</ol>
</div>

<div class="w3-padding w3-card w3-quarter">
	<b>Kelompok 1</b>
	<p>Pembimbing</p>
	<ul>
		<li>Dudih Gustian</li>
	</ul>
	<p>Anggota</p>
	<ol>
		<li>Anton permana</li>
		<li>Ikhsan Thoir</li>
	</ol>
</div>

</div>

<?php 
include "../include/footer.php";
?>