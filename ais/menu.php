<?php  
if (isset($_GET['page'])) {
	// get page dari url
	$page = $_GET['page'];

	// include header
	include '../include/header.php';

	// mengecek page
	switch ($page) {
		case 'detail':
			include 'detail.php';
			break;

		case 'editprofile':
			include 'editprofile.php';
			break;

		case 'upload_bukti':
			include 'upload_bukti.php';
			break;

		default:
			echo '<div class="w3-padding w3-margin w3-red"><i class="fa fa-warning"></i> Halaman tidak di temukan</div>';
			break;
	}

	// include footer
	include '../include/footer.php';

}else{
	// halaman error
	echo "Halaman Tidak di temukan";
}
?>