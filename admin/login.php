<?php
session_start();
require '../include/database.php';
// Cara lain untuk exsekusi submit button
//if($_SERVER["REQUEST_METHOD"] == "POST"){
?>

<!DOCTYPE html>
<html lang="en">
	<head>
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
		<meta charset="utf-8" />
		<title>Login SIIRO</title>

		<meta name="description" content="User login page" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />

		<!-- bootstrap & fontawesome -->
		<link rel="stylesheet" href="../assets/ace/assets/css/bootstrap.min.css" />
		<link rel="stylesheet" href="../assets/ace/assets/font-awesome/4.5.0/css/font-awesome.min.css" />

		<!-- text fonts -->
		<link rel="stylesheet" href="../assets/ace/assets/css/fonts.googleapis.com.css" />

		<!-- ace styles -->
		<link rel="stylesheet" href="../assets/ace/assets/css/ace.min.css" />

		<!--[if lte IE 9]>
			<link rel="stylesheet" href="assets/css/ace-part2.min.css" />
		<![endif]-->
		<link rel="stylesheet" href="../assets/ace/assets/css/ace-rtl.min.css" />

		<!--[if lte IE 9]>
		  <link rel="stylesheet" href="assets/css/ace-ie.min.css" />
		<![endif]-->

		<!-- HTML5shiv and Respond.js for IE8 to support HTML5 elements and media queries -->

		<!--[if lte IE 8]>
		<script src="assets/js/html5shiv.min.js"></script>
		<script src="assets/js/respond.min.js"></script>
		<![endif]-->
	</head>
	<body class="login-layout">
		<div class="main-container">
			<div class="main-content">
				<div class="row">
					<div class="col-sm-10 col-sm-offset-1">
						<div class="login-container">
							<div class="center">
								<h1>
									<i class="ace-icon fa fa-flag green"></i>
									<span class="red">SIIRO</span>
									<span class="white" id="id-text2">System</span>
								</h1>
								<h4 class="blue" id="id-company-text">&copy; IRO NUSA PUTRA</h4>
							</div>

							<div class="space-6"></div>

							<div class="position-relative">
								<div id="login-box" class="login-box visible widget-box no-border">
									<div class="widget-body">
										<div class="widget-main">
											<h4 class="header blue lighter bigger">
												<i class="ace-icon fa fa-coffee green"></i>
												Please Enter Your Information
											</h4>

											<div class="space-6"></div>

											<form method="post">
												<fieldset>
													<label class="block clearfix">
														<span class="block input-icon input-icon-right">
															<input type="text" class="form-control" name="user" placeholder="Username" />
															<i class="ace-icon fa fa-user"></i>
														</span>
													</label>

													<label class="block clearfix">
														<span class="block input-icon input-icon-right">
															<input type="password" class="form-control" name="pass" placeholder="Password" />
															<i class="ace-icon fa fa-lock"></i>
														</span>
													</label>

													<div class="space"></div>

													<div class="clearfix">


														<button type="submit" name="submit" class="width-35 pull-right btn btn-sm btn-primary">
															<i class="ace-icon fa fa-key"></i>
															<span class="bigger-110">Login</span>
														</button>
													</div>

													<div class="space-4"></div>
													<?php
													if(isset($_POST['submit'])){
													  $user = mysqli_real_escape_string($conn,$_POST["user"]);
													  $pass = mysqli_real_escape_string($conn,md5($_POST['pass']));
													  $sql = "SELECT * FROM tbl_admin WHERE admin_username = '$user' AND admin_password = '$pass' ";
													  $result = mysqli_query($conn,$sql);
													  $row = mysqli_fetch_assoc($result);
													  if(mysqli_num_rows($result) > 0){
														$_SESSION['username'] = $user;
														$_SESSION['foto'] = $row['admin_foto'];
														$_SESSION['nama'] = $row['admin_nama'];
													// Redirect user to index.php
														header("Location: index.php");
													  }else{
														echo '
														<div class="alert alert-danger role="alert">Username atau Password Salah</div>
														';
														mysqli_close($conn);
													  }
													}
													?>
												</fieldset>
											</form>
										</div><!-- /.widget-main -->
									</div><!-- /.widget-body -->
								</div><!-- /.login-box -->		
							</div><!-- /.position-relative -->

						</div>
					</div><!-- /.col -->
				</div><!-- /.row -->
			</div><!-- /.main-content -->
		</div><!-- /.main-container -->

		<!-- basic scripts -->

		<!--[if !IE]> -->
		<script src="../assets/ace/assets/js/jquery-2.1.4.min.js"></script>

	</body>
</html>
