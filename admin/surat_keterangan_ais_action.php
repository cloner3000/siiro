<?php
include '../include/auth.php';
 
include '../include/database.php';

// jika ada id yang di GET
if($_POST['id']){

	// simpan id 
	$id 					= $_POST['id'];
	$nomor_surat			= $_POST['nomor_surat'];
	$nim 					= $_POST['nim'];
	$nama 					= $_POST['nama'];
	$jurusan 				= $_POST['jurusan'];
	$semester 				= $_POST['semester'];
	$surat_isi = mysqli_fetch_assoc(mysqli_query($conn,"SELECT * FROM surat_setting WHERE jenis_surat = 'surat_keterangan_ais' "));

	// tanggal
	function tanggal_indo($tanggal)
	{
		$bulan = array (1 =>   'Januari',
					'Februari',
					'Maret',
					'April',
					'Mei',
					'Juni',
					'Juli',
					'Agustus',
					'September',
					'Oktober',
					'November',
					'Desember'
				);
		$split = explode('-', $tanggal);
		return $split[2] . ' ' . $bulan[ (int)$split[1] ] . ' ' . $split[0];
	}
	$tgl = date('Y-m-d');
	$tanggal = tanggal_indo($tgl);

	// replace string with value
	$surat = str_replace(
	    array("%nomor%","%nama%","%nim%","%jurusan%","%semester%","%tanggal%"),array($nomor_surat, $nama, $nim, $jurusan, $semester, $tanggal), $surat_isi['format_surat']
	);
	echo $surat;
	
// jika tidak ada id di get redirext
}else{
	header('Location: surat_rekomendasi_paspor.php');
}
?>