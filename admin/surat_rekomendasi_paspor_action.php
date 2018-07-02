<?php
include '../include/auth.php';
 
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
<p><br /><br /><br /><br /><br /><br /></p>
<p style="margin-bottom: .0001pt; text-align: center;"><strong><u><span style="font-size: 12.0pt; line-height: 115%; font-family: "Times New Roman",serif;">REKOMENDASI</span></u></strong></p>
<p style="margin-bottom: .0001pt; text-align: center;"><span style="font-size: 12.0pt; line-height: 115%; font-family: "Times New Roman",serif;">&nbsp;</span></p>
<table style="border-collapse: collapse; width: 100%;">
<tbody>
<tr style="height: 18px;">
<td style="width: 17.1636%; height: 18px;"><span style="font-size: 12.0pt; line-height: 115%; font-family: "Times New Roman",serif; color: black;">Nomor</span></td>
<td style="width: 1.70358%; height: 18px;">:</td>
<td style="width: 43.8671%; height: 18px;"><span style="font-size: 12.0pt; line-height: 115%; font-family: "Times New Roman",serif; color: black;">00</span><span style="font-size: 12.0pt; line-height: 115%; font-family: "Times New Roman",serif; color: black;">1</span><span style="font-size: 12.0pt; line-height: 115%; font-family: "Times New Roman",serif; color: black;">/U.NSP/AIS/V</span><span style="font-size: 12.0pt; line-height: 115%; font-family: "Times New Roman",serif; color: black;">I</span><span style="font-size: 12.0pt; line-height: 115%; font-family: "Times New Roman",serif; color: black;">I/2018&nbsp;</span></td>
<td style="width: 37.4361%; height: 18px; text-align: right;"><span style="font-size: 12.0pt; line-height: 115%; font-family: "Times New Roman",serif; color: black;">Sukabumi, </span><span style="font-size: 12.0pt; line-height: 115%; font-family: "Times New Roman",serif; color: black;">1</span><span style="font-size: 12.0pt; line-height: 115%; font-family: "Times New Roman",serif; color: black;"> Ju</span><span style="font-size: 12.0pt; line-height: 115%; font-family: "Times New Roman",serif; color: black;">li</span><span style="font-size: 12.0pt; line-height: 115%; font-family: "Times New Roman",serif; color: black;"> 2018</span></td>
</tr>
<tr style="height: 18px;">
<td style="width: 17.1636%; height: 18px;"><span style="font-size: 12.0pt; line-height: 115%; font-family: "Times New Roman",serif; color: black;">Lampiran</span></td>
<td style="width: 1.70358%; height: 18px;">:</td>
<td style="width: 43.8671%; height: 18px;">-</td>
<td style="width: 37.4361%; height: 18px;">&nbsp;</td>
</tr>
<tr style="height: 18px;">
<td style="width: 17.1636%; height: 18px;"><span style="font-size: 12.0pt; line-height: 115%; font-family: "Times New Roman",serif; color: black;">Perihal</span></td>
<td style="width: 1.70358%; height: 18px;">:</td>
<td style="width: 43.8671%; height: 18px;"><span style="font-size: 12.0pt; line-height: 115%; font-family: "Times New Roman",serif; color: black;">Rekomendasi pembuatan Paspor</span></td>
<td style="width: 37.4361%; height: 18px;">&nbsp;</td>
</tr>
</tbody>
</table>
<p style="margin-bottom: .0001pt;">&nbsp;</p>
<p style="margin-bottom: .0001pt;"><span style="font-size: 12.0pt; line-height: 115%; font-family: "Times New Roman",serif; color: black;">Kepada Yth.&nbsp;&nbsp;&nbsp; :</span></p>
<p style="margin-bottom: .0001pt;"><span style="font-size: 12.0pt; line-height: 115%; font-family: "Times New Roman",serif; color: black;">Kepala Kantor Imigrasi Kelas II Sukabumi.</span></p>
<p style="margin-bottom: .0001pt;"><span style="font-size: 12.0pt; line-height: 115%; font-family: "Times New Roman",serif;">di tempat</span></p>
<p style="margin-bottom: .0001pt;"><span style="font-size: 12.0pt; line-height: 115%; font-family: "Times New Roman",serif;">&nbsp;</span></p>
<p style="margin-bottom: .0001pt;"><span style="font-size: 12.0pt; line-height: 115%; font-family: "Times New Roman",serif;">Dengan Hormat</span></p>
<p style="margin-bottom: .0001pt;"><span style="font-size: 12.0pt; line-height: 115%; font-family: "Times New Roman",serif; color: black;">Yang bertandatangan di bawah ini :</span></p>
<table style="border-collapse: collapse; width: 100%;">
<tbody>
<tr style="height: 18px;">
<td style="width: 24.8154%; height: 18px;"><span style="font-size: 12.0pt; line-height: 115%; font-family: "Times New Roman",serif; color: black;">Nama Lengkap</span></td>
<td style="width: 1.87394%; height: 18px;">:</td>
<td style="width: 73.3105%; height: 18px;"><span style="font-size: 12.0pt; line-height: 115%; font-family: "Times New Roman",serif; color: black;">Anggy Pradiftha Junfithrana S.Pd, MT</span></td>
</tr>
<tr style="height: 18px;">
<td style="width: 24.8154%; height: 18px;"><span style="font-size: 12.0pt; line-height: 115%; font-family: "Times New Roman",serif; color: black;">Jabatan</span></td>
<td style="width: 1.87394%; height: 18px;">:</td>
<td style="width: 73.3105%; height: 18px;"><span style="font-size: 12.0pt; line-height: 115%; font-family: "Times New Roman",serif; color: black;">Kepala Kantor Urusan Internasional</span></td>
</tr>
</tbody>
</table>
<p style="margin-bottom: .0001pt;"><span style="font-size: 12.0pt; line-height: 115%; font-family: "Times New Roman",serif; color: black;">Dengan ini menerangkan&nbsp;bahwa:</span></p>
<table style="border-collapse: collapse; width: 100%;">
<tbody>
<tr style="height: 18px;">
<td style="width: 24.9858%; height: 18px;"><span style="font-size: 12.0pt; line-height: 115%; font-family: "Times New Roman",serif; color: black;">Nama&nbsp; Lengkap</span></td>
<td style="width: 1.81709%; height: 18px;">:</td>
<td style="width: 73.197%; height: 18px;"><span style="font-size: 12.0pt; line-height: 115%; font-family: "Times New Roman",serif; color: black;">Neng Robiyah</span></td>
</tr>
<tr style="height: 18px;">
<td style="width: 24.9858%; height: 18px;"><span style="font-size: 12.0pt; line-height: 115%; font-family: "Times New Roman",serif;">Tempat/Tgl Lahir</span></td>
<td style="width: 1.81709%; height: 18px;">:</td>
<td style="width: 73.197%; height: 18px;"><span style="font-size: 12.0pt; line-height: 115%; font-family: "Times New Roman",serif;">Cianjur, 16-11-1995</span></td>
</tr>
<tr style="height: 36px;">
<td style="width: 24.9858%; height: 36px;"><span style="font-size: 12.0pt; line-height: 115%; font-family: "Times New Roman",serif; color: black;">Alamat&nbsp;</span></td>
<td style="width: 1.81709%; height: 36px;">:</td>
<td style="width: 73.197%; height: 36px;"><span style="font-size: 12.0pt; line-height: 115%; font-family: "Times New Roman",serif; color: black;">Kp. Sukamukti, RT 003 RW 005, Desa Cimenteng,&nbsp;Kec. Campaka, Kab. Cianjur</span></td>
</tr>
<tr style="height: 18px;">
<td style="width: 24.9858%; height: 18px;"><span style="font-size: 12.0pt; line-height: 115%; font-family: "Times New Roman",serif; color: black;">Nomor KTP</span></td>
<td style="width: 1.81709%; height: 18px;">:</td>
<td style="width: 73.197%; height: 18px;"><span style="font-size: 12.0pt; line-height: 115%; font-family: "Times New Roman",serif; color: black;">3203155611950007</span></td>
</tr>
<tr style="height: 18px;">
<td style="width: 24.9858%; height: 18px;"><span style="font-size: 12.0pt; line-height: 115%; font-family: "Times New Roman",serif; color: black;">Jurusan</span></td>
<td style="width: 1.81709%; height: 18px;">:</td>
<td style="width: 73.197%; height: 18px;">&nbsp;</td>
</tr>
</tbody>
</table>
<p style="margin-bottom: .0001pt; text-align: justify;"><span style="font-size: 12.0pt; line-height: 115%; font-family: "Times New Roman",serif; color: black;"><br />Yang&nbsp;bersangkutan memang benar </span><span style="font-size: 12.0pt; line-height: 115%; font-family: "Times New Roman",serif; color: black;">m</span><span style="font-size: 12.0pt; line-height: 115%; font-family: "Times New Roman",serif; color: black;">ahasiswa </span><span style="font-size: 12.0pt; line-height: 115%; font-family: "Times New Roman",serif; color: black;">tingkat akhir </span><span style="font-size: 12.0pt; line-height: 115%; font-family: "Times New Roman",serif; color: black;">di kampus kami yang akan mengikuti </span><span style="font-size: 12.0pt; line-height: 115%; font-family: "Times New Roman",serif; color: black;">program seminar internasional dalam kegiatan <em>International Conference on Computing Engineering and Design</em></span> <span style="font-size: 12.0pt; line-height: 115%; font-family: "Times New Roman",serif; color: black;">(</span><span style="font-size: 12.0pt; line-height: 115%; font-family: "Times New Roman",serif; color: black;">ICCED 2018</span><span style="font-size: 12.0pt; line-height: 115%; font-family: "Times New Roman",serif; color: black;">)</span><span style="font-size: 12.0pt; line-height: 115%; font-family: "Times New Roman",serif; color: black;"> pada bulan September dengan tujuan negara Thailand.</span></p>
<p style="margin-bottom: .0001pt; text-align: justify;"><span style="font-size: 12.0pt; line-height: 115%; font-family: "Times New Roman",serif; color: black;">Demikianlah surat rekomendasi ini dibuat untuk dipergunakan sebagaimana mestinya.</span></p>
<p style="margin-bottom: .0001pt;">&nbsp;</p>
<p style="margin-bottom: .0001pt;"><span style="font-size: 12.0pt; line-height: 115%; font-family: "Times New Roman",serif; color: black;">Hormat Kami</span></p>
<p style="margin-bottom: .0001pt;"><span style="font-size: 12.0pt; line-height: 115%; font-family: "Times New Roman",serif; color: black;">Kepala Kantor Urusan Internasional</span></p>
<p style="margin-bottom: .0001pt;"><span style="font-size: 12.0pt; line-height: 115%; font-family: "Times New Roman",serif; color: black;">Universitas Nusa Putra</span></p>
<p style="margin-bottom: .0001pt;"><span style="font-size: 12.0pt; line-height: 115%; font-family: "Times New Roman",serif;">&nbsp;</span></p>
<p style="margin-bottom: .0001pt;"><span style="font-size: 12.0pt; line-height: 115%; font-family: "Times New Roman",serif; color: black;">&nbsp;</span></p>
<p style="margin-bottom: .0001pt;"><span style="font-size: 12.0pt; line-height: 115%; font-family: "Times New Roman",serif; color: black;">&nbsp;</span></p>
<p><strong><u><span style="font-size: 12.0pt; line-height: 115%; font-family: "Times New Roman",serif; color: black;">Anggy Pradiftha Junfithrana S.Pd, MT</span></u></strong></p>
';
	
// jika tidak ada id di get redirext
}else{
	header('Location: surat_rekomendasi_paspor.php');
}
?>