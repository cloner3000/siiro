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

		default:
			break;
	}

	// include footer
	include '../include/footer.php';

}else{
	// halaman error
	echo "Halaman Tidak di temukan";
}
?>