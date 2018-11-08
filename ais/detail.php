<?php  
$id = $_SESSION['peserta_id'];
$data = mysqli_fetch_assoc(mysqli_query($conn,"SELECT * FROM ais_peserta WHERE id = '$id' "));
$ais_setting    = mysqli_fetch_assoc(mysqli_query($conn,"SELECT * FROM ais_setting WHERE tahun = '$ais_periode_tahun'"));

// set variable
$biaya_conference = $ais_setting['biaya_conference'];
$biaya_travel = $ais_setting['biaya_travel'];
$pembayaran = $data['pembayaran'];

// cek sisa pembayaran
if ($data['ikut_travel'] == 'Ya') {
	$sisa_pembayaran = ($biaya_conference + $biaya_travel) - $pembayaran;
}else{
	$sisa_pembayaran = $biaya_conference - $pembayaran;
}
?>

<div class="w3-row-padding">

	<div class="w3-half w3-margin-bottom">
		<div class="w3-padding w3-theme">
			<i class="fa fa-info"></i> Detail
		</div>
		<div class="w3-row">
			<div class="w3-half w3-pale-green w3-padding w3-center">
				<span class="w3-large">
					Biaya Conference:
					<br>
					<b>Rp. <span class="uang"><?php echo $biaya_conference; ?></span></b>
				</span>
			</div>
			<div class="w3-half w3-pale-yellow w3-padding w3-center">
				<span class="w3-large">
					Biaya travel:
					<br>
					<?php if ($data['ikut_travel'] == 'Ya') { ?>
					<b>Rp. <span class="uang"><?php echo $biaya_travel; ?></span></b>
					<?php }else{ ?>
						<b>Tidak Ikut Travel</b>
					<?php } ?>
				</span>
			</div>
		</div>
		<div class="w3-row w3-pale-blue w3-padding w3-center">
			<span class="w3-large">
					Sudah Dibayar:
					<br>
					Rp. <span class="uang"><?php echo $pembayaran; ?></span>
				</span>
		</div>
		<div class="w3-row w3-pale-red w3-padding w3-center">
			<span class="w3-large">
					Sisa Pembayaran:
					<br>
					<b>
						<?php if($sisa_pembayaran <= 0 ) {?>
						Rp. <span class="w3-label">LUNAS</span>
						<?php }else{ ?>
						Rp. <span class="uang"><?php echo $sisa_pembayaran; ?></span>
						<?php } ?>
					</b>
				</span>
		</div>
		<br>
		<ul class="w3-ul w3-border">
			<?php 
			if($data['scan_ktp'] == NULL or $data['scan_ktp'] == ''){
				echo '<li class="w3-red"><i class="fa fa-warning"></i> Scan/Foto KTP belum lengkap</li>';
			}
			if($data['scan_paspor'] == NULL or $data['scan_paspor'] == ''){
				echo '<li class="w3-red"><i class="fa fa-warning"></i> Scan/Foto Paspor belum lengkap </li>';
			}
			?>
		</ul>

		<br>
		<div class="w3-border">
				<div class="w3-padding w3-theme">
					<b>KELOMPOK</b>
				</div>
				<div class="w3-padding">
					<p><b>Pembimbing</b></p>

					<ul>
						<?php
						// mengeluarkan pembimbing 
						$kelompoknya = $data['kelompok'];
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
			</div>

	</div>

	<div class="w3-half">
		<div class="w3-padding w3-theme">
			<i class="fa fa-info"></i> Data Diri
		</div>
		<?php
		$xcrud->table('ais_peserta');
		$xcrud->where('id =',$_SESSION['peserta_id']);

		// kelompok
		$xcrud->relation('kelompok','ais_kelompok','id','nama','periode_tahun = '.$ais_periode_tahun);

		// foto
		$xcrud->change_type('foto','file', '', array('path'=> '../uploads/ais/foto'));
		// scan ktp
		$xcrud->change_type('scan_ktp','file', '', array('path'=> '../uploads/ais/ktp'));
		// paspor
		$xcrud->change_type('scan_paspor','file', '', array('path'=> '../uploads/ais/paspor'));

		// unset
		$xcrud->unset_add();
	    // $xcrud->unset_edit();
		$xcrud->unset_remove();
	    // $xcrud->unset_view();
		$xcrud->unset_csv();
		$xcrud->unset_limitlist();
		$xcrud->unset_numbers();
		$xcrud->unset_pagination();
		$xcrud->unset_print();
		$xcrud->unset_search();
		$xcrud->unset_title();
		$xcrud->unset_sortable();
		$xcrud->hide_button('save_edit,return');
		echo $xcrud->render('view',$_SESSION['peserta_id']);
		?>
	</div>

</div>

<script type="text/javascript" src="../assets/js/number-divider.min.js"></script>
<script>
	$('.uang').divide();
</script>
