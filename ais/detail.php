<?php  
$id = $_SESSION['peseta_id'];
$data = mysqli_fetch_assoc(mysqli_query($conn,"SELECT * FROM ais_peserta WHERE id = '$id' "));
?>

	<div class="w3-row-padding">

	<div class="w3-half w3-margin-bottom">
		<div class="w3-padding w3-theme">
			<i class="fa fa-warning"></i> Data Belum lengkap
		</div>
			<ul class="w3-ul w3-border">
				<li>Scan KTP <?php if($data['scan_ktp'] ==! NULL or $data['scan_ktp'] ==! ''){echo '<i class="fa fa-check"></i>';}else{echo '<i class="fa fa-times"></i>';} ?></li>
				<li>Scan Paspor <?php if($data['scan_paspor'] ==! NULL or $data['scan_paspor'] ==! ''){echo '<i class="fa fa-check"></i>';}else{echo '<i class="fa fa-times"></i>';} ?></li>
				<li>Pembayaran <?php if($data['scan_paspor'] ==! NULL or $data['scan_paspor'] ==! ''){echo '<i class="fa fa-check"></i>';}else{echo '<i class="fa fa-times"></i>';} ?></li>
			</ul>
	</div>

	<div class="w3-half">
		<div class="w3-padding w3-theme">
			<i class="fa fa-info"></i> Data Diri
		</div>
		<?php
		$xcrud->table('ais_peserta');
		$xcrud->where('id =',$_SESSION['peseta_id']);

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
		echo $xcrud->render('view',$_SESSION['peseta_id']);
		?>
	</div>
		
	</div>
