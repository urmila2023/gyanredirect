<?php
session_start();
$conn = mysqli_connect("localhost", "root", "", "crud");

// --------------------signup
    if (isset($_POST['save_id'])) {

        $fname = $_POST['fname'];
        $lname = $_POST['lname'];
        $email = $_POST['email'];
        $pass = $_POST['pass'];
        $cpass = $_POST['cpass'];
            
       if ($pass == $cpass) {
            $query = "INSERT INTO `admin` (fname,lname,email,pass) VALUES ('$fname','$lname',' $email','$pass')";
            $query_run = mysqli_query($conn, $query);
            if ($query_run) {
                    $_SESSION['status'] = 'Success';
                    header('Location: signin.php');
                } else {
                echo "<script>alert('Invalid Credential !')</script>";
                header('Location: signin.php');
            }
            }
            else {
            echo "<script>alert('Invalid Password !')</script>";
            header('Location: signin.php');
        }
    }
//  -------------------------signup  
// ---------------------------signin 
if (isset($_POST['admin_login'])) {

	$email = $_POST['email'];
	$pass = $_POST['pass'];
	$res = mysqli_query($conn, "SELECT * FROM `admin` WHERE  email ='$email' AND pass = '$pass' ");
    $re=mysqli_num_rows($res); 
	if ($re == 1) {
        $_SESSION['status'] = 'Success';
        header('Location: signin.php');
		// $_SESSION['login'] = 'Success';
		header('Location: index.php');
	} else {
		echo "<script>alert('Invalid Credential !')</script>";
		header('Location: signin.php');
	}
}
// ---------------------------signin 
?>