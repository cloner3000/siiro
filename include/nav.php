<nav class="w3-sidebar w3-bar-block w3-card w3-collapse" style="width: 200px">
	<button class="w3-bar-item w3-button w3-hide-large w3-xxxlarge" onclick="w3_close()">Close &times;</button>
	<div class="w3-container w3-dark-grey">
	<h3>Dashboard</h3>
	</div>
	<a href="index.php" class="w3-bar-item w3-button <?php if($page_name == 'index.php'){echo 'w3-red';} ?>"><i class="fa fa-star"></i> Dashboard</a>
	<a href="intern.php" class="w3-bar-item w3-button <?php if($page_name == 'intern.php'){echo 'w3-red';} ?>"><i class="fa fa-user"></i> Intern</a>
	<a href="intern_file.php" class="w3-bar-item w3-button <?php if($page_name == 'intern_file.php'){echo 'w3-red';} ?>"><i class="fa fa-file"></i> Intern File</a>
	<a href="mou.php" class="w3-bar-item w3-button <?php if($page_name == 'mou.php'){echo 'w3-red';} ?>"><i class="fa fa-book"></i> Mou</a>
	<a href="logout.php" class="w3-bar-item w3-button" onclick="return confirm('Are you sure you want to delete this item?');"><i class="fa fa-sign-out"></i> Logout</a>
</nav>

<div class="w3-main" style="margin-left: 200px;">
	
<div class="w3-padding w3-red w3-card w3-large" >
  <button class="w3-button w3-red w3-large" onclick="w3_open()">&#9776;</button>
  dashbaord
</div>

<div class="w3-container" style="margin-top: 20px">