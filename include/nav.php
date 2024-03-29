<nav class="w3-sidebar w3-bar-block w3-card w3-collapse w3-animate-left" style="z-index:3;width: 220px" id="mySidebar">
	<div class="w3-padding w3-center">
		<img src="../uploads/logo/<?php echo $setting['logo']; ?>" width="80%">
	</div>

	<?php if($_SESSION['akses_level'] == 'peserta_ais'){ ?>
	<!-- Menu detail -->
	<a href="menu.php?page=detail" class="w3-bar-item w3-button <?php if($page_nama == 'menu.php?page=detail'){echo 'w3-theme';} ?>"><i class="fa fa-user w3-margin-right"></i>DETAIL</a>
	<!-- Menu editprofile -->
	<a href="menu.php?page=editprofile" class="w3-bar-item w3-button <?php if($page_nama == 'menu.php?page=editprofile'){echo 'w3-theme';} ?>"><i class="fa fa-edit w3-margin-right"></i>EDIT</a>
	<!-- menu upload bukti -->
	<a href="menu.php?page=upload_bukti" class="w3-bar-item w3-button <?php if($page_nama == 'menu.php?page=upload_bukti'){echo 'w3-theme';} ?>"><i class="fa fa-upload w3-margin-right"></i>UPLOAD BUKTI</a>
	<?php } ?>
	

	<?php if($_SESSION['akses_level'] == 'admin'){ ?>
	<!-- Menu DASHBOARD -->
	<a href="index.php" class="w3-bar-item w3-button <?php if($page_name == 'index.php'){echo 'w3-theme';} ?>"><i class="fa fa-star w3-margin-right"></i>DASHBOARD</a>

	<!-- Menu NSPGO -->
	<a id="myBtn" onclick="myFunc('Demo7')" href="javascript:void(0)" class="w3-bar-item w3-button <?php if($page_name == 'nspgo_peserta.php' | $page_name == 'nspgo_poin.php' | $page_name == 'nspgo_negara.php'){echo 'w3-grey';} ?>"><i class="fa fa-globe w3-margin-right"></i>NSPGO<i class="w3-margin-left fa fa-caret-down"></i></a>

	<div id="Demo7" class="w3-hide <?php if($page_name == 'nspgo_peserta.php' | $page_name == 'nspgo_poin.php' | $page_name == 'nspgo_negara.php'){echo 'w3-show';} ?>">
		<a href="nspgo_peserta.php" class="w3-bar-item w3-button <?php if($page_name == 'nspgo_peserta.php'){echo 'w3-theme';} ?>"><i class="fa fa-user w3-margin-right w3-margin-left"></i>Peserta</a>
		<a href="nspgo_poin.php" class="w3-bar-item w3-button <?php if($page_name == 'nspgo_poin.php'){echo 'w3-theme';} ?>"><i class="fa fa-users w3-margin-right w3-margin-left"></i>Poin</a>
		<a href="nspgo_negara.php" class="w3-bar-item w3-button <?php if($page_name == 'nspgo_negara.php'){echo 'w3-theme';} ?>"><i class="fa fa-flag w3-margin-right w3-margin-left"></i>Negara</a>
	</div>

	<!-- Menu Intern -->
	<a id="myBtn" onclick="myFunc('Demo2')" href="javascript:void(0)" class="w3-bar-item w3-button <?php if($page_name == 'intern.php' | $page_name == 'intern_file.php' | $page_name == 'intern_sertifikat.php' | $page_name == 'intern_kandidat.php'){echo 'w3-grey';} ?>"><i class="fa fa-inbox w3-margin-right"></i>INTERNS<i class="w3-margin-left fa fa-caret-down"></i></a>

	<div id="Demo2" class="w3-hide <?php if($page_name == 'intern.php' | $page_name == 'intern_file.php' | $page_name == 'intern_sertifikat.php' | $page_name == 'intern_kandidat.php'){echo 'w3-show';} ?>">
		<a href="intern.php" class="w3-bar-item w3-button <?php if($page_name == 'intern.php'){echo 'w3-theme';} ?>"><i class="fa fa-user w3-margin-right w3-margin-left"></i>Intern</a>
		<a href="intern_file.php" class="w3-bar-item w3-button <?php if($page_name == 'intern_file.php'){echo 'w3-theme';} ?>"><i class="fa fa-file w3-margin-right w3-margin-left"></i>Intern File</a>
		<a href="intern_kandidat.php" class="w3-bar-item w3-button <?php if($page_name == 'intern_kandidat.php'){echo 'w3-theme';} ?>"><i class="fa fa-user w3-margin-right w3-margin-left"></i>Kandidat</a>
		<a href="intern_sertifikat.php" class="w3-bar-item w3-button <?php if($page_name == 'intern_sertifikat.php'){echo 'w3-theme';} ?>"><i class="fa fa-image w3-margin-right w3-margin-left"></i>Sertifikat</a>
	</div>

	<!-- Menu MOU -->
	<a href="mou.php" class="w3-bar-item w3-button <?php if($page_name == 'mou.php'){echo 'w3-theme';} ?>"><i class="fa fa-book w3-margin-right"></i>MOU & MOA</a>

	<!-- Menu Arsip -->
	<a id="myBtn" onclick="myFunc('arsip')" href="javascript:void(0)" class="w3-bar-item w3-button <?php if($page_name == 'arsip.php' | $page_name == 'arsip_jenis.php'){echo 'w3-grey';} ?>"><i class="fa fa-archive w3-margin-right"></i>ARSIP<i class="w3-margin-left fa fa-caret-down"></i></a>

	<div id="arsip" class="w3-hide <?php if($page_name == 'arsip.php' | $page_name == 'arsip_jenis.php'){echo 'w3-show';} ?>">
		<a href="arsip.php" class="w3-bar-item w3-button <?php if($page_name == 'arsip.php'){echo 'w3-theme';} ?>"><i class="fa fa-file w3-margin-right w3-margin-left"></i>Berkas</a>
		<a href="arsip_jenis.php" class="w3-bar-item w3-button <?php if($page_name == 'arsip_jenis.php'){echo 'w3-theme';} ?>"><i class="fa fa-file w3-margin-right w3-margin-left"></i>Jenis Arsip</a>
	</div>

	<!-- Menu Ais -->
	<a id="myBtn" onclick="myFunc('Demo1')" href="javascript:void(0)" class="w3-bar-item w3-button <?php if($page_name == 'ais_peserta.php' | $page_name == 'ais_kelompok.php' | $page_name == 'ais_berangkat.php' | $page_name == 'ais_pulang.php' | $page_name == 'ais_kelompok_list.php' | $page_name == 'ais_pembayaran.php' | $page_name == 'ais_setting.php' | $page_name == 'ais_pembimbing.php' | $page_name == 'ais_kelompok_detail.php' | $page_name == 'ais_panitia.php'){echo 'w3-grey';} ?>"><i class="fa fa-inbox w3-margin-right"></i>AIS<i class="w3-margin-left fa fa-caret-down"></i></a>

	<div id="Demo1" class="w3-hide <?php if($page_name == 'ais_peserta.php' | $page_name == 'ais_kelompok.php' | $page_name == 'ais_berangkat.php' | $page_name == 'ais_pulang.php' | $page_name == 'ais_setting.php' | $page_name == 'ais_kelompok_list.php' | $page_name == 'ais_pembayaran.php' | $page_name == 'ais_pembimbing.php' | $page_name == 'ais_kelompok_detail.php'  | $page_name == 'ais_panitia.php'){echo 'w3-show';} ?>">
		<a href="ais_setting.php" class="w3-bar-item w3-button <?php if($page_name == 'ais_setting.php'){echo 'w3-theme';} ?>"><i class="fa fa-gear w3-margin-right w3-margin-left"></i>Setting</a>
		<a href="ais_peserta.php" class="w3-bar-item w3-button <?php if($page_name == 'ais_peserta.php'){echo 'w3-theme';} ?>"><i class="fa fa-user w3-margin-right w3-margin-left"></i>Peserta</a>
		<a href="ais_pembimbing.php" class="w3-bar-item w3-button <?php if($page_name == 'ais_pembimbing.php'){echo 'w3-theme';} ?>"><i class="fa fa-user w3-margin-right w3-margin-left"></i>Pembimbing</a>
		<a href="ais_panitia.php" class="w3-bar-item w3-button <?php if($page_name == 'ais_panitia.php'){echo 'w3-theme';} ?>"><i class="fa fa-user w3-margin-right w3-margin-left"></i>Panitia</a>
		<a href="ais_pembayaran.php" class="w3-bar-item w3-button <?php if($page_name == 'ais_pembayaran.php'){echo 'w3-theme';} ?>"><i class="fa fa-money w3-margin-right w3-margin-left"></i>Pembayaran</a>
		<a href="ais_kelompok.php" class="w3-bar-item w3-button <?php if($page_name == 'ais_kelompok.php'){echo 'w3-theme';} ?>"><i class="fa fa-users w3-margin-right w3-margin-left"></i>Kelompok</a>
		<a href="ais_kelompok_list.php" class="w3-bar-item w3-button <?php if($page_name == 'ais_kelompok_list.php' | $page_name == 'ais_kelompok_detail.php'){echo 'w3-theme';} ?>"><i class="fa fa-users w3-margin-right w3-margin-left"></i>Kel. List</a>
		<a href="ais_berangkat.php" class="w3-bar-item w3-button <?php if($page_name == 'ais_berangkat.php'){echo 'w3-theme';} ?>"><i class="fa fa-plane w3-margin-right w3-margin-left"></i>Berangkat</a>
		<a href="ais_pulang.php" class="w3-bar-item w3-button <?php if($page_name == 'ais_pulang.php'){echo 'w3-theme';} ?>"><i class="fa fa-plane w3-margin-right w3-margin-left"></i>Pulang</a>
	</div>

	<!-- Menu conference -->
	<a id="myBtn" onclick="myFunc('Demo3')" href="javascript:void(0)" class="w3-bar-item w3-button <?php if($page_name == 'conference_email.php' | $page_name == 'conference_sertifikat.php'){echo 'w3-grey';} ?>"><i class="fa fa-trophy w3-margin-right"></i>CONFERENCE<i class="w3-margin-left fa fa-caret-down"></i></a>

	<div id="Demo3" class="w3-hide <?php if($page_name == 'conference_email.php' | $page_name == 'conference_sertifikat.php' ){echo 'w3-show';} ?>">
		<a href="conference_email.php" class="w3-bar-item w3-button <?php if($page_name == 'conference_email.php'){echo 'w3-theme';} ?>"><i class="fa fa-envelope w3-margin-right w3-margin-left"></i>Email Univ</a>
		<a href="conference_sertifikat.php" class="w3-bar-item w3-button <?php if($page_name == 'conference_sertifikat.php'){echo 'w3-theme';} ?>"><i class="fa fa-file-pdf-o w3-margin-right w3-margin-left"></i>Sertifikat</a>
	</div>

	<!-- Menu Surat -->
	<a id="myBtn" onclick="myFunc('Demo5')" href="javascript:void(0)" class="w3-bar-item w3-button <?php if($page_name == 'surat.php' | $page_name == 'surat_rekomendasi_paspor.php' | $page_name == 'surat_keterangan_ais.php' ){echo 'w3-grey';} ?>"><i class="fa fa-envelope w3-margin-right"></i>SURAT<i class="w3-margin-left fa fa-caret-down"></i></a>

	<div id="Demo5" class="w3-hide <?php if($page_name == 'surat.php' | $page_name == 'surat_rekomendasi_paspor.php' | $page_name == 'surat_keterangan_ais.php' ){echo 'w3-show';} ?>">
		<a href="surat_rekomendasi_paspor.php" class="w3-bar-item w3-button <?php if($page_name == 'surat_rekomendasi_paspor.php'){echo 'w3-theme';} ?>"><i class="fa fa-envelope-o w3-margin-right w3-margin-left"></i>Rek. Paspor</a>
		<a href="surat_keterangan_ais.php" class="w3-bar-item w3-button <?php if($page_name == 'surat_keterangan_ais.php'){echo 'w3-theme';} ?>"><i class="fa fa-envelope-o w3-margin-right w3-margin-left"></i>Keterangan AIS</a>
	</div>

    <!-- Menu Setting -->
	<a id="myBtn" onclick="myFunc('Demo4')" href="javascript:void(0)" class="w3-bar-item w3-button <?php if($page_name == 'setting.php' | $page_name == 'setting_backup.php'){echo 'w3-grey';} ?>"><i class="fa fa-gear w3-margin-right"></i>SETTING<i class="w3-margin-left fa fa-caret-down"></i></a>

	<div id="Demo4" class="w3-hide <?php if($page_name == 'setting.php' | $page_name == 'setting_backup.php' | $page_name == 'setting_user.php'){echo 'w3-show';} ?>">
		<a href="setting_user.php" class="w3-bar-item w3-button <?php if($page_name == 'setting_user.php'){echo 'w3-theme';} ?>"><i class="fa fa-user w3-margin-right w3-margin-left"></i>User</a>
		<a href="setting.php" class="w3-bar-item w3-button <?php if($page_name == 'setting.php'){echo 'w3-theme';} ?>"><i class="fa fa-gear w3-margin-right w3-margin-left"></i>Aplication</a>
		<a href="setting_backup.php" class="w3-bar-item w3-button <?php if($page_name == 'setting_backup.php'){echo 'w3-theme';} ?>"><i class="fa fa-refresh w3-margin-right w3-margin-left"></i>Backup</a>
	</div>
	<?php } ?>

	<!-- menu logout -->
	<a href="../logout.php" class="w3-bar-item w3-button w3-black" onclick="return confirm('Yakin Keluar?')"><i class="fa fa-sign-out w3-margin-right"></i>LOGOUT</a>

</nav>

<!-- Overlay effect when opening the side navigation on small screens -->
<div class="w3-overlay w3-hide-large w3-animate-opacity" onclick="w3_close()" style="cursor:pointer" title="Close Sidemenu" id="myOverlay"></div>

<div class="w3-main" style="margin-left: 220px;">

	<div class="w3-panel w3-theme w3-card w3-large" style="margin-top: 0px">

		<button class="w3-button w3-theme w3-large w3-hide-large" onclick="w3_open()"><i class="fa fa-bars"></i></button>
		<span class="w3-button w3-hide-small"><?php if(isset($title)){echo $title; }else{echo $setting['nama_website'];}?></span>
		<button class="w3-button w3-right w3-theme-d4"><span class="w3-medium"><i class="fa fa-calendar"></i> <?php echo date('d-m-Y'); ?></span></button>
	</div>

	<div style="margin-top: 20px">
