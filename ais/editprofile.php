<div class="w3-container">
	<div class="w3-half">

		<div class="w3-padding w3-blue">
			<i class="fa fa-warning"></i> Pastikan Sesuai dengan Paspor / KTP
		</div>
		<br>
		<?php
		$xcrud->table('ais_peserta');
		$xcrud->where('id =',$_SESSION['peseta_id']);

		// kelompok
		$xcrud->relation('kelompok','ais_kelompok','id','nama','periode_tahun = '.$ais_periode_tahun);

		// readonly
		$xcrud->disabled('kelompok,nim,jurusan');

		// hide kolom
		$xcrud->fields('password,status,pembayaran,ikut_travel,periode_tahun',true);

		// foto
		$xcrud->change_type('foto','image', '', array('path'=> '../uploads/ais/foto','width' => 1000, 'height' => 1000));
		// ktp
		$xcrud->change_type('scan_ktp','image', '', array('path'=> '../uploads/ais/ktp','width' => 1000, 'height' => 1000));
		// paspor
		$xcrud->change_type('scan_paspor','image', '', array('path'=> '../uploads/ais/paspor','width' => 1000, 'height' => 1000));

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
	    $xcrud->hide_button('save_return,return');
	    $xcrud->after_update('redirectUpdatePes', 'custom_function.php'); 
		echo $xcrud->render('edit',$_SESSION['peseta_id']);
		?>
	</div>
</div>
