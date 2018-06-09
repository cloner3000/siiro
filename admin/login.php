<?php
session_start();
require '../include/database.php';
?>

<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>Login SIIRO</title>

    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<link rel="stylesheet" href="../assets/css/w3.css">
	<link rel="stylesheet" href="../assets/css/font-awesome.css">
</head>
<body class="w3-light-grey">
	<form method="post" class="w3-card w3-padding w3-white" style="width: 400px; margin-top: 150px;margin: auto; margin-top: 50px">
		<h2 class="w3-center">Login SIIRO</h2>
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
                $_SESSION['ais_periode_tahun'] = date('Y');
                // Redirect user to index.php
                header("Location: index.php");
              }else{
              echo '
              <div class="w3-padding w3-red">Username atau Password Salah</div>
              ';
              mysqli_close($conn);
              }
            }
            ?>
		<p>
			<label>Username</label>
			<input class="w3-input w3-border" type="text" name="user" placeholder="Masukan Username" required>
		</p>
		<p>
			<label>Password</label>
			<input class="w3-input w3-border" type="password" name="pass" placeholder="Masukan Password" required>
		</p>
		<p>
			<button class="w3-button w3-green" type="submit" name="submit" ><i class="fa fa-sign-in"></i> Login</button>
		</p>
	</form>
</body>
</html>