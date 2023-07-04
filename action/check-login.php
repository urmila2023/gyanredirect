<?php
session_start();
if(isset($_SESSION['username']) ){
}
else{
	echo '<script>alert("Access denied, Please Login");window.location.assign("../action/logout");</script>';
}
?>