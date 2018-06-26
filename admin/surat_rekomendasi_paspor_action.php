<?php  
include '../include/database.php';

// jika ada id yang di GET
if($_POST['id']){

	// simpan id 
	$id 					= $_POST['id'];
	$nomor_surat			= $_POST['nomor_surat'];
	$nomor_ktp 				= $_POST['nomor_ktp'];
	$nama 					= $_POST['nama'];
	$jurusan 				= $_POST['jurusan'];
	$alamat 				= $_POST['alamat'];

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
	echo '
<style>
.print-only{
    display: none;
}

@media print {
    .no-print {
        display: none;
    }

    .print-only{
        display: block;
    }
}
</style>

<div class="print-only">
<br>
<br>
<br>
<br>
<br>
<h3 style="text-align: center;"><strong><u>REKOMENDASI</u></strong></h3>
<p>&nbsp;</p>
<p>
Nomor&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;: '.$nomor_surat.'&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
Sukabumi, '.$tanggal.'
<br />Lampiran&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;: -
<br />Perihal&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;:&nbsp; Rekomendasi pembuatan Paspor
</p>
<p>&nbsp;</p>
<p>
	Kepada Yth.&nbsp;&nbsp;&nbsp; :<br />
	Kepala Kantor Imigrasi Kelas II Sukabumi.<br />di tempat
</p>
<p>&nbsp;</p>
<p>Dengan Hormat</p>
<p>Yang bertandatangan di bawah ini :</p>
<p>
Nama&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : Anggy Pradiftha Junfithrana S.Pd, MT<br />
Jabatan&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; : Kepala Kantor Urusan Internasional</p>
<p>Dengan ini menerangkan&nbsp;bahwa:</p>
<p>
Nama&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;:  '.$nama.'<br />
Alamat&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;:  '.$alamat.'<br />
Nomor KTP&nbsp; &nbsp; &nbsp;:  '.$nomor_ktp.'<br />
Jurusan&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  :  '.$jurusan.'</p>
<p>Yang&nbsp;bersangkutan memang benar Mahasiswa di kampus kami yang akan mengikuti Program Internasional Seminar ICCED 2018 pada bulan September dengan tujuan negara Thailand.</p>
<p>Demikianlah surat rekomendasi ini dibuat untuk dipergunakan sebagaimana mestinya.</p>
<p>&nbsp;</p>
<p>Hormat Kami<br />Kepala Kantor Urusan Internasional<br />Universitas Nusa Putra</p>
<img src="../uploads/image/ttd_anggy.png" style="height:100px;position:absolute;"/><br>
<p>&nbsp;</p>
<p>&nbsp;</p>
<strong><u>Anggy Pradiftha Junfithrana S.Pd, MT</u></strong>
</div>
<script>
    window.print();
    window.close();
</script>
';
	
// jika tidak ada id di get redirext
}else{
	header('Location: surat_rekomendasi_paspor.php');
}
?>