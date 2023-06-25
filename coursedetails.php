
<!doctype html>
<html lang="en">

<head>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <!-- Bootstrap CSS -->
  <link href="style.css" rel="stylesheet" type="text/css">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css"
    integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw=="
    crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
  <title>Eduprix</title>
<style>

</style>
</head>
<body>
  <!-- header----------------- -->
  <div class="container-fluid bg" style="height:91px;">
    <div class="container">
      <div class="d-flex justify-content-between text-white">
       <div class="mt-3">
        <a class="navbar-brand" href="#"><img src="./imgs/Logo (3).png"/></a>
       </div>
       <div class="mt-3 formsearch">
        <form class="d-flex">
          <span class="searcha fw-bold">Search Anything</span>
          <input class="form-control me-2 rounded-pill" type="search" placeholder="Search" aria-label="Search">
          <button class="btn btn-info rounded-circle searchboxbtn" type="submit"><i class="fa-solid fa-search"></i></button>
        </form>
       </div>
       <div class="mt-3">
        <i class="fa-sharp fa-solid slidicon fa-bars fs-4 "onclick="openSidebar()"></i><span>&nbsp;<i class="fa-solid slidicon fa-user fs-4 mx-2 " onclick="opend()"></i></span>
       </div>
      </div>
    </div>
    <!-- <img src="imgs/Circles (1).svg" width="305px" class="imgrescircle"> -->
    <!-- <div class="text-end icondiv">
    <i class="fa-brands fa-instagram "></i>
    <i class="fa-brands fa-twitter "></i>
    <i class="fa-brands fa-facebook "></i>
    </div> -->
   
  </div>
   <!-- <div class="countdiv"><b>03</b></div> -->
 
      <div id="mySidebar" class="sidebar">
        <a href="javascript:void(0)" class="closebtn" onclick="closeSidebar()">&times;</a>
        <a href="#"class="fs-5">About</a>
        <a href="#"class="fs-5">Services</a>
        <a href="#"class="fs-5">Courses</a>
        <a href="#"class="fs-5">Contact</a>
      </div>
      <!-- user icon section -->
      <div id="mySlidebar" class="sidebar">
        <a href="javascript:void(0)" class="closebtn" onclick="closeSlidebar()">&times;</a>
        <a href="signin.php" class="fs-5">Sign In /Sign Up</a>
        <a href="logout1.php" class="fs-5">Logout</a>
        <!-- <a href="signin.html"class="fs-5">Sign Up</a> -->
        <a href="#"class="fs-5">Help Center</a>

      </div>

  <!-- header------------------- -->
<!-- coursesection---------------- -->

<div class="container" style="margin-top: 10px;">
    <div class="row">
    <div class="col-lg-8">
    <h1 class="coursetitleh1 mt-5">THE PROFESSIONAL ART MASTERCLASS</h1>
    <p class="mt-5">Teacher : <b>U.M.</b></p>
<!-- Nav tabs -->
<ul class="nav nav-tabs navtabul mt-5">
  <li class="nav-item">
    <a class="nav-link active colorancher" data-bs-toggle="tab" href="#msg">Drscription</a>
  </li>
  <li class="nav-item">
    <a class="nav-link colorancher" data-bs-toggle="tab" href="#pro">Curriculum</a>
  </li>
  <li class="nav-item">
    <a class="nav-link colorancher" data-bs-toggle="tab" href="#set">Annoucement</a>
  </li>
  <li class="nav-item">
    <a class="nav-link colorancher" data-bs-toggle="tab" href="#rev">Reviews</a>
  </li>
</ul>

<!-- Tab panes -->
<?php
   include 'connection.php';
    $query = "SELECT * FROM `subject` WHERE id='".$_GET['id']."'";
  
  // FETCHING DATA FROM DATABASE
  $result = $conn->query($query);
  
    if ($result->num_rows > 0) 
    {
        // OUTPUT DATA OF EACH ROW
        while($row = $result->fetch_assoc())
        {
?>
<div class="tab-content">
  <div class="tab-pane container imgresponsivediv active mt-5" id="msg">
    <div><img src=<?php echo $row['img']?> width="100%" height="350px"/></div>
    <div class="mt-5">
        <h3><?php echo $row['coursename']?></h3>
        <p><?php echo $row['description']?><p>

    </div>
    
    <div>
    <?php }}?>

  <div class="row row-cols-2 row-cols-lg-5 g-2 g-lg-3 mt-5 text-center">
    <div class="col">
      <div class="p-1  bg-light">Reproduced</div>
    </div>
    <div class="col">
      <div class="p-1 bg-light">Reader</div>
    </div>
    <div class="col">
      <div class="p-1 bg-light">Lorem </div>
    </div>
    <div class="col">
      <div class="p-1  bg-light">Ipsum</div>
    </div>
    <div class="col">
      <div class="p-1  bg-light">Popular</div>
    </div>
    <div class="col">
      <div class="p-1 bg-light">Standard</div>
    </div>
    <div class="col">
      <div class="p-1 bg-light">Chunk</div>
    </div>
    <div class="col">
      <div class="p-1 bg-light">Setting</div>
    </div>
    <div class="col">
      <div class="p-1  bg-light">Profile </div>
    </div>
    <div class="col">
      <div class="p-1  bg-light">Reviws</div>
    </div>
  </div>
  </div>
    </div>
  <div class="tab-pane container fade" id="pro">
  <h2 class="mt-5">Introduction</h2>
  <table class="table table-striped table-hover mt-3">
  <?php
   include 'connection.php';
    $query = "SELECT * FROM `subject` WHERE id='".$_GET['id']."'";
  
  // FETCHING DATA FROM DATABASE
  $result = $conn->query($query);
  
    if ($result->num_rows > 0) 
    {
        // OUTPUT DATA OF EACH ROW
        while($row = $result->fetch_assoc())
        {
?>
   
  <tr>
      <td>
        
      <?php echo $row['curriclum']?>
      </td>
    </tr>
    <?php
        }}
    ?>
    <tr>
      <td>
      2. &nbsp;  &nbsp;<i class="fas fa-envelope me-3 tableiconcolor"></i>  Vision and Mission.</td>
    </tr>
    <tr>
      <td>
      3. &nbsp;  &nbsp;<i class="fas fa-envelope me-3 tableiconcolor"></i>  Vision and Mission.</td>
    </tr>
    <tr>
      <td>
      4. &nbsp;  &nbsp;<i class="fas fa-envelope me-3 tableiconcolor"></i>  Vision and Mission.</td>
    </tr>
    <tr>
      <td>
      5. &nbsp;  &nbsp;<i class="fas fa-envelope me-3 tableiconcolor"></i>  Vision and Mission.</td>
    </tr>
    <tr>
      <td>
      6. &nbsp;  &nbsp;<i class="fas fa-envelope me-3 tableiconcolor"></i>  Vision and Mission.</td>
    </tr>
    <tr>
      <td>
      7. &nbsp;  &nbsp;<i class="fas fa-envelope me-3 tableiconcolor"></i>  Vision and Mission.</td>
    </tr>
    </table>

    <h2 class="mt-5">Editor</h2>
  <table class="table table-striped table-hover mt-3">
   
  <tr>
      <td>
      1. &nbsp;  &nbsp;<i class="fas fa-envelope me-3 tableiconcolor"></i>  Vision and Mission.</td>
    </tr>
    <tr>
      <td>
      2. &nbsp;  &nbsp;<i class="fas fa-envelope me-3 tableiconcolor"></i>  Vision and Mission.</td>
    </tr>
    <tr>
      <td>
      3. &nbsp;  &nbsp;<i class="fas fa-envelope me-3 tableiconcolor"></i>  Vision and Mission.</td>
    </tr>
    <tr>
      <td>
      4. &nbsp;  &nbsp;<i class="fas fa-envelope me-3 tableiconcolor"></i>  Vision and Mission.</td>
    </tr>
    <tr>
      <td>
      5. &nbsp;  &nbsp;<i class="fas fa-envelope me-3 tableiconcolor"></i>  Vision and Mission.</td>
    </tr>
    <tr>
      <td>
      6. &nbsp;  &nbsp;<i class="fas fa-envelope me-3 tableiconcolor"></i>  Vision and Mission.</td>
    </tr>
    <tr>
      <td>
      7. &nbsp;  &nbsp;<i class="fas fa-envelope me-3 tableiconcolor"></i>  Vision and Mission.</td>
    </tr>
    </table>
  </div>
  
  <div class="tab-pane container fade" id="set">

    <div class="row">
        <div class="col text-center mt-5"><img src="./imgs/announcement-vector-8753409.png" width="200px"/></div>
        <div class="col text-center">
        <h4 class="mt-5">IMPORTANT <br> ANNOUCEMENT</h4>
        <h6 class="mt-5">Course Name : <b>Vision and Mission</b></h6>  
        <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's.</p>
        <b>22/03/2023</b>
    
    </div>    
    </div>
   
  </div>
  <div class="tab-pane container fade" id="rev">
    <h2 class="mt-5">Reviews</h2>
    <P> <b class="fs-1">5,2</b><span class="ms-3 reviewsicon">
        <i class="fa fa-star" aria-hidden="true"></i>
        <i class="fa fa-star" aria-hidden="true"></i>
        <i class="fa fa-star" aria-hidden="true"></i>
        <i class="fa fa-star" aria-hidden="true"></i>
        <i class="fa fa-star" aria-hidden="true"></i>
        </span> <br><span class="reviewsword">Be the first to add a review Be the first to add a review Be the first to add a review Be the first to add a review.
        Be the first to add a review Be the first to add a review Be the first to add a review Be the first to add a reviewBe the first to add a review Be the first to add a review Be the first to add a review Be the first to add a review
        </span>
    </P>
  </div>
 
    </div>
    </div>
    

    <div class="col-lg-4">
        <div class="mt-5 mx-3 ">

            <a href="enrolledcourse.php"><button type="button" class="btn btngetcourse btn-lg">Get Course</button></a>
            <p class="mt-5">Category : <b>Developement</b></p>
            <p class="mt-5 text-center">Enrolled Course : <b>2</b></p><hr>
            <p class="mt-5 text-center">Lectures : <b>2</b></p></i><hr>
            <p class="mt-5 text-center">Levels : <b>Begginer</b></p><hr>
            <div class="mt-5 designdiv"> <p class="mt-5 text-center m-4">: <b>Reviews</b><br> 
            
            <P>
            <i class="fa fa-star reviewsicon" aria-hidden="true"></i>
            <i class="fa fa-star reviewsicon" aria-hidden="true"></i>
            <i class="fa fa-star reviewsicon" aria-hidden="true"></i>
            <i class="fa fa-star reviewsicon" aria-hidden="true"></i>
            <i class="fa fa-star reviewsicon" aria-hidden="true"></i>
            </span> <br><span class="reviewsword">Be the first to add a review Be the first to add a review Be the first to add a review Be the first to add a review.
            </span>
            </P>
        
        </div>
            
        </div>
    </div>
    
    </div>
    
</div>
<!-- coursesection---------------- -->
<!-- Footer -->
<footer class="text-center text-lg-start text-muted footer">
   <!-- Section: Social media -->
  
  <!-- Section: Links  -->
   <section class="">
   <div class="container text-center text-md-start mt-5">
  <!-- Grid row -->
   <div class="row mt-3">
   <!-- Grid column -->
   <div class="col-md-3 col-lg-4 col-xl-3 mx-auto mb-4">
  <!-- Content -->
  <h6 class="text-uppercase fw-bold mb-4 mt-5">
  <img src="./imgs/Logo (3).png" width="57%">
  </h6>
  <p class="footertext">
   We're a worldwide community for online learning and teaching 
   where anybody can acquire new skills and accomplish their 
  objectives by connecting with others. We are dedicated to 
   making a positive difference in the future of education.
  </p>
  </div>
  <!-- Grid column -->
  
 <!-- Grid column -->
  <div class="col-md-2 col-lg-2 col-xl-2 mx-auto mb-4">
 <!-- Links -->
  <h6 class="text-uppercase fw-bold mb-4 text-white mt-5">
   Eduprix
  </h6>
   <p class="text-info">
  <a href="#!" class="colorchange ">About</a>
 </p>
  <p class="text-info">
  <a href="#!" class="colorchange ">Afilliate</a>
  </p>
  <p class="text-info">
 <a href="#!" class="colorchange ">Open Eduprix</a>
  </p>
 <p class="text-info">
  <a href="#!" class="colorchange ">Career</a>
 </p>
  <p class="text-info">
  <a href="#!" class="colorchange ">News</a>
 </p>
 </div>
   <!-- Grid column -->
  
 <!-- Grid column -->
  <div class="col-md-2 col-lg-2 col-xl-2 mx-auto mb-4">
  <!-- Links -->
 <h6 class="text-uppercase fw-bold mb-4 text-white mt-5">
 Eduprix

</h6>
 <p class="text-info">
 <a href="#!" class="colorchange  ">About</a>
  </p>
  <p class="text-info">
   <a href="#!" class="colorchange ">Afilliate</a>
  </p>
 <p class="text-info">
  <a href="#!" class="colorchange ">Open Eduprix</a>
 </p>
  <p class="text-info">
<a href="#!" class="colorchange ">Career</a>
  </p>
  <p class="text-info">
  <a href="#!" class="colorchange ">News</a>
</p>
</div>
  <!-- Grid column -->
  <!-- Grid column -->
 <div class="col-md-4 col-lg-3 col-xl-3 mx-auto mb-md-0 mb-4 mt-5 text-white">
 <!-- Links -->
   <h6 class="text-uppercase fw-bold mb-4">Contact</h6>
 <p class="footertext"><i class="fas fa-home me-3 iconcolorfooter"></i> New York, NY 10012, US</p>
  <p class="footertext">
 <i class="fas fa-envelope me-3 iconcolorfooter"></i>
 info@gyan.guru.com
   </p>
  <p class="footertext"><i class="fas fa-phone me-3 iconcolorfooter"></i> + 01 234 567 88</p>
  <p class="footertext"><i class="fas fa-print me-3 iconcolorfooter"></i> + 01 234 567 89</p>
 </div>
 <!-- Grid column -->
 </div>
 <!-- Grid row -->
</div>
   </section>
   <!-- Section: Links  -->
  
  <!-- Copyright -->
  <div class="text-center p-4 text-white" style="background-color: rgba(0, 0, 0, 0.025);">
  © 2022-2023 Copyright:
  <a class="text-reset fw-bold" href="#">GYAN.guru.com</a>
  </div>
   <!-- Copyright -->
  </footer>
  <!-- Footer -->
  <!-- ----------------------------- -->
  <script>const openSidebar = () => {
    document.getElementById("mySidebar").style.width = "250px";
    document.getElementById("main").style.marginLeft = "250px";
  };

  const closeSidebar = () => {
    document.getElementById("mySidebar").style.width = "0";
    document.getElementById("main").style.marginLeft = "0";
  };
  const opend = () => {
    document.getElementById("mySlidebar").style.width = "250px";
    document.getElementById("main").style.marginLeft = "250px";
  };

  const closeSlidebar = () => {
    document.getElementById("mySlidebar").style.width = "0";
    document.getElementById("main").style.marginLeft = "0";
  };</script>

  <!-- Optional JavaScript; choose one of the two! -->

  <!-- Option 1: Bootstrap Bundle with Popper -->
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"
  integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz"
  crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
    crossorigin="anonymous"></script>


  <!-- Option 2: Separate Popper and Bootstrap JS -->
  <!--
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
    -->
</body>

</html>





