<?php
session_start();
require '../include/database.php';
// Cara lain untuk exsekusi submit button
//if($_SERVER["REQUEST_METHOD"] == "POST"){
?>

<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>SIIRO</title>
    <meta name="description" content="Neat">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet">

    <!-- Favicon -->
    <link rel="apple-touch-icon" href="apple-touch-icon.png">
    <link rel="shortcut icon" href="favicon.ico" type="image/x-icon">

    <!-- Stylesheet -->
    <link rel="stylesheet" href="../assets/neat/css/neat.min.css?v=1.0">
  </head>
  <body>

    <div class="o-page o-page--center">
      <div class="o-page__card">
        <div class="c-card c-card--center">
          <span class="c-icon c-icon--large u-mb-small">
            <img src="../assets/neat/img/logo-small.svg" alt="Neat">
          </span>

          <h4 class="u-mb-medium">Sistem Informasi IRO (SIIRO)</h4>
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
              <div class="c-alert c-alert--danger alert">Username atau Password Salah</div>
              ';
              mysqli_close($conn);
              }
            }
            ?>
          <form method="post">
            <div class="c-field">
              <label class="c-field__label">Username</label>
              <input class="c-input u-mb-small" type="text" name="user" placeholder="Masukan Username" required>
            </div>
            
            <div class="c-field">
              <label class="c-field__label">Password</label>
              <input class="c-input u-mb-small" type="password" name="pass" placeholder="Masukan Password" required>
            </div>

            <button class="c-btn c-btn--fullwidth c-btn--info" type="submit" name="submit">Login</button>
          </form>
          
        </div>
      </div>
    </div>

    <!-- Main JavaScript -->
    <script src="../assets/neat/js/neat.min.js?v=1.0"></script>
  </body>
</html>