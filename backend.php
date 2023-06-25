<?php

session_start();

// Check if the user is already logged in
if (isset($_SESSION['email'])) {
    // Redirect the user to the home page or any other authorized page
    header("Location: index.php");
    exit();
}

include 'connection.php';

// signup------------------------------------------- -->
    
        $showAlert1=false;
        $showAlert2=false;
        $showAlert=false;
        if(isset($_POST['save'])){
    
            $first=$_POST['first'];
            $last=$_POST['last'];
            $email=$_POST['email'];
            $pass=$_POST['password'];
            $confirm=$_POST['confirm'];
            $sql="SELECT * FROM `signup` WHERE email ='$email'";
            $res=mysqli_query($conn,$sql);
            $row=mysqli_fetch_assoc($res);
            // matched confirm password and password//
            if(($pass != $confirm)){
               $showAlert1=true;
            }
            //    checking email already exist or not//
                elseif($email == $row['email']){
                   $showAlert2=true;
                 } 
                 else{
                    // insert query//
                    $sql1="INSERT INTO `signup`( `firstname`, `lastname`, `email`, `password`) VALUES ('$first','$last','$email','$pass') ";
                    $res1=mysqli_query($conn,$sql1);
                    $_SESSION['email']=$_POST['email'];
                    if($res1){
                      
                      
                       $showAlert=true;
                       
                    }
                 }   
            
            }
            if($showAlert){
                echo '<div class="alert alert-success" role="alert" >
                success
                </div>';
            }
            if($showAlert1){
                echo '<div class="alert alert-danger" role="alert" >
                Password not  matched </div>';
            }
            if($showAlert2){
                echo '<div class="alert alert-danger" role="alert" >
                User is already exists
                </div>';
            } 
            
        
       // <!-- ------------------------------------------------------------------------------------------------- -->

       //<!-- login in -->
        
        if(isset($_POST['submit'])){
            $email=$_POST['email1'];
            $pass=$_POST['password1'];
            if($_POST['email1'] != "" && $_POST['password1'] != ""){
               /*select and check condition*/
                $query="SELECT * FROM `signup` WHERE email = '$email' and `password`='$pass'";
            
                $result = mysqli_query($conn,$query);
                $row=mysqli_fetch_assoc($result);
                if(mysqli_num_rows($result) ==1 ){
                    $_SESSION['email']=$_POST['email1'];
                  
                    header('location:index.php');
                         
                    }else{
                       echo "<script type='text/javascript'>alert('wrong email and password');</script>";
                       header('location:signin.php');
                    }
                }
           }
    
       // <!-- ---------- login----------------- -->
 
?>