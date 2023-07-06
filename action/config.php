<?php
// error_reporting(0);
include 'db_connect.php';

date_default_timezone_set("Asia/Kolkata");

$comp = $comp_name = 'Gyan Guru';
$page = ucwords(pathinfo(str_replace('-', ' ', $_SERVER['PHP_SELF']), PATHINFO_FILENAME));
$path = '../img/post/'; //Admin Side
$path2 = './img/post/';  // User Side

// $domain1 = (isset($_SERVER['HTTPS']) && $_SERVER['HTTPS'] === 'on' ? "https" : "http") . "://$_SERVER[HTTP_HOST]"; //Get full domain name
// function getDomain($url)
// {
// 	$pieces = parse_url($url);
// 	$domain2 = isset($pieces['host']) ? $pieces['host'] : '';
// 	if (preg_match('/(?P<domain>[a-z0-9][a-z0-9\-]{1,63}\.[a-z\.]{2,6})$/i', $domain2, $regs)) {
// 		return $regs['domain'];
// 	}
// 	return FALSE;
// }
// $domain = getDomain($domain1);  // Get only domain name without wwww

//=============================== Admin login ==============================================
if (isset($_POST['admin_login'])) {
	$username = mysqli_real_escape_string($con, $_POST['username']);
	$password = mysqli_real_escape_string($con, $_POST['password']);

	$query = "SELECT * FROM admin WHERE username='$username' AND password='$password' ";
	$results = mysqli_query($con, $query);
	$r = mysqli_fetch_assoc($results);
	if (mysqli_num_rows($results) == 1) {

		$_SESSION['username'] = $r['username'];

		echo ' <script>
			alert("Login Success...\nWelcome to ' . $comp_name . ' ");
			window.location.href="./dashboard.php"; </script> ';
	} else {
		echo ' <script>alert("Invalid Credential"); window.location.href="";</script> ';
	}
}










// signup------------------------------------------- -->

$showAlert1 = false;
$showAlert2 = false;
$showAlert = false;
if (isset($_POST['save'])) {

	$first = $_POST['first'];
	$last = $_POST['last'];
	$email = $_POST['email'];
	$pass = $_POST['password'];
	$confirm = $_POST['confirm'];
	$sql = "SELECT * FROM `signup` WHERE email ='$email'";
	$res = mysqli_query($conn, $sql);
	$row = mysqli_fetch_assoc($res);
	// matched confirm password and password//
	if (($pass != $confirm)) {
		$showAlert1 = true;
	}
	//    checking email already exist or not//
	elseif ($email == $row['email']) {
		$showAlert2 = true;
	} else {
		// insert query//
		$sql1 = "INSERT INTO `signup`( `firstname`, `lastname`, `email`, `password`) VALUES ('$first','$last','$email','$pass') ";
		$res1 = mysqli_query($conn, $sql1);
		$_SESSION['email'] = $_POST['email'];
		if ($res1) {


			$showAlert = true;
		}
	}
}
if ($showAlert) {
	echo '<div class="alert alert-success" role="alert" >
		success
		</div>';
}
if ($showAlert1) {
	echo '<div class="alert alert-danger" role="alert" >
		Password not  matched </div>';
}
if ($showAlert2) {
	echo '<div class="alert alert-danger" role="alert" >
		User is already exists
		</div>';
}


// <!-- ------------------------------------------------------------------------------------------------- -->

//<!-- login in -->

if (isset($_POST['submit'])) {
	$email = $_POST['email1'];
	$pass = $_POST['password1'];
	if ($_POST['email1'] != "" && $_POST['password1'] != "") {
		/*select and check condition*/
		$query = "SELECT * FROM `signup` WHERE email = '$email' and `password`='$pass'";

		$result = mysqli_query($con, $query);
		$row = mysqli_fetch_assoc($result);
		if (mysqli_num_rows($result) == 1) {
			$_SESSION['email'] = $_POST['email1'];

			header('location:index.php');
		} else {
			echo "<script type='text/javascript'>alert('wrong email and password');</script>";
			header('location:signin.php');
		}
	}
}

// <!-- ---------- login----------------- -->










//================================ Add post =======================================
if (isset($_POST['add_post'])) {

	$cat_id = $_POST['cat_id'];
	$title = $_POST['title'];
	$lebal = $_POST['lebal'];
	$tags = $_POST['tags'];
	$desc = $_POST['desc'];
	$image = $_FILES['image'];
	$curicullum =  $_POST['curicullum'];
	$post_date = date('d M Y');
	$file_name = $_FILES['image']['name'];
	$file_size = $_FILES['image']['size'];
	$file_tmp = $_FILES['image']['tmp_name'];
	$file_type = $_FILES['image']['type'];

	move_uploaded_file($file_tmp,"imgs/.$file_name");
	
	$sql = "INSERT INTO `posts`(`cat_id`, `title`, `lebal`, `tags`, `desc`, `image`, `curicullum`, `post_date`)
	
	 VALUES ('$cat_id','$title','$lebal','$tags','$desc','$file_name','$curicullum','$post_date')";

	$qry = mysqli_query($con, $sql) or die(mysqli_error($con));

	if ($qry) {
		echo '<script> alert("Added Successful"); window.location.href=""; </script> ';
	}
}

//================================ Update post =======================================
if (isset($_POST['post_update'])) {
	$cat = $_POST['cat'];
	$state = $_POST['state'];
	$job_title = $_POST['job_title'];
	$post_date = $_POST['post_date'];
	$last_date = $_POST['last_date'];
	$short_info = $_POST['short_info'];
	$date_title = $_POST['date_title'];
	$imp_date = $_POST['imp_date'];
	$fee_title = $_POST['fee_title'];
	$fee = $_POST['fee'];
	$age_title = $_POST['age_title'];
	$age = $_POST['age'];
	$post_details  = $_POST['post_details'];
	$cat_details = $_POST['cat_details'];
	$link_title = $_POST['link_title'];
	$links = $_POST['links'];
	$res_title = $_POST['res_title'];
	$resource = $_POST['resource'];
	$id = $_POST['id'];

	$sql = "UPDATE `posts` SET `cat_id`= '$cat', `state`= '$state', `job_title`= '$job_title', `short_info`= '$short_info', `post_date`= '$post_date', `last_date`= '$last_date', `date_title`= '$date_title', `imp_date`= '$imp_date', `fee_title`= '$fee_title', `app_fee`= '$fee', `age_title`= '$age_title', `age_limit`= '$age', `post_details`= '$post_details', `cat_wise_post`= '$cat_details', `link_title`= '$link_title', `links`= '$links', `res_title`= '$res_title', `resource`= '$resource' WHERE id= '$id'";



	$qry = mysqli_query($con, $sql) or die(mysqli_error($con));

	echo '<script> alert("Update Successful"); window.location.href=""; </script> ';
}

//================================ Delete post =======================================
if (isset($_POST['delete_post'])) {
	$id = $_POST['id'];

	$qry = mysqli_query($con, "DELETE FROM `posts` WHERE id = '$id' ");
	if ($qry) {
		echo '<script> alert("Deleted Successful"); window.location.href="post-list"; </script> ';
	}
}


//============================ Add Category =======================================
if (isset($_POST['add_category'])) {
	$category = $_POST['category'];
	$qry = mysqli_query($con, "INSERT INTO `category`(`category`) VALUES ('$category')");
	echo '<script> alert("Successful"); window.location.href=""; </script> ';
}
//============================ Update Category =======================================
if (isset($_POST['category_update'])) {
	$category = $_POST['category'];
	$id = $_POST['id'];
	$qry = mysqli_query($con, "UPDATE `category` SET `category` = '$category' WHERE `id` = '$id';");
	echo '<script> alert("Successful"); window.location.href=""; </script> ';
}
//==============Delete Category =======================================
if (isset($_POST['delete_category'])) {
	$id = $_POST['id'];

	$qry = mysqli_query($con, "DELETE FROM `category` WHERE `id` = '$id'");
	echo '<script> alert("Deleted Successful"); window.location.href=""; </script> ';
}


//================================ Add Curicullum =======================================
if (isset($_POST['add_curicullum'])) {

	$post_id = $_POST['post_id'];
	$qus = $_POST['qus'];
	$ans = $_POST['ans'];

	$sql = "INSERT INTO `curicullum`( `post_id`, `question`, `answer`)
	
	 VALUES ('$post_id','$qus','$ans')";

	$qry = mysqli_query($con, $sql) or die(mysqli_error($con));

	if ($qry) {
		echo '<script> alert("Added Successful"); window.location.href=""; </script> ';
	}
}

