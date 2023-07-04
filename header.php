	<!-- header----------------- -->
	<div class="container-fluid bg">
		<div class="container">
			<div class="d-flex justify-content-between text-white">
				<div class="mt-3">
					<a class="navbar-brand" href="#"><img src="./imgs/Logo (3).png" /></a>
				</div>
				<div class="mt-3 formsearch">
					<form class="d-flex">
						<span class="searcha fw-bold">Search Anything</span>
						<input class="form-control me-2 rounded-pill" type="search" placeholder="Search" aria-label="Search">
						<button class="btn btn-info rounded-circle searchboxbtn" type="submit"><i class="fa-solid fa-search"></i></button>
					</form>
				</div>
				<div class="mt-3">
					<i class="fa-sharp fa-solid slidicon fa-bars fs-4 " onclick="openSidebar()"></i><span>&nbsp;<i class="fa-solid slidicon fa-user fs-4 mx-2 " onclick="opend()"></i></span>
				</div>
			</div>
		</div>
		<img src="imgs/Circles (1).svg" width="305px" class="imgrescircle">
		<div class="text-end icondiv">
			<i class="fa-brands fa-instagram "></i>
			<i class="fa-brands fa-twitter "></i>
			<i class="fa-brands fa-facebook "></i>
		</div>

	</div>
	<div class="countdiv"><b>03</b></div>

	<div id="mySidebar" class="sidebar">
		<a href="javascript:void(0)" class="closebtn" onclick="closeSidebar()">&times;</a>
		<a href="aboutus.php" class="fs-5">About</a>
		<a href="allcourses.php" class="fs-5">Courses</a>
		<a href="contactus.php" class="fs-5">Contact</a>
	</div>
	<!-- user icon section -->
	<div id="mySlidebar" class="sidebar">
		<a href="javascript:void(0)" class="closebtn" onclick="closeSlidebar()">&times;</a>
		<a href="signin.php" <?php if (!isset($_SESSION['email'])) {
									echo "style='display:block'";
								} else {
									echo "style='display:none'";
								} ?>class="fs-5">Sign In/sign up</a>

		<div <?php if (isset($_SESSION['email'])) {
					echo "style='display:block'";
				} else {
					echo "style='display:none'";
				} ?> class="userpic">
			<img src="https://newprofilepic2.photo-cdn.net//assets/images/article/profile.jpg" width="40%" height="30%" class="rounded-circle mx-5">

			<img src="./assets/imgs/camera.png
         
         " class=" cmr rounded-circle mx-5" width="12%"><span></span>

			<!-- <i class="fa-solid fa-pencil" id="ed"> -->
		</div>

		<a href="#" <?php if (isset($_SESSION['email'])) {
						echo "style='display:block'";
					} else {
						echo "style='display:none'";
					} ?>class="fs-5">Dashboard</a>
		<a href="logout1.php" <?php if (isset($_SESSION['email'])) {
									echo "style='display:block'";
								} else {
									echo "style='display:none'";
								} ?>class="fs-5">Logout</a>

	</div>

	<!-- header------------------- -->
	<!-- ---------------------------------- -->

	<div class="container mt-4">
		<div id="carouselExampleCaptions" class="carousel slide headerres" data-bs-ride="carousel">
			<div class="carousel-indicators">
				<button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
				<button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="1" aria-label="Slide 2"></button>
				<button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="2" aria-label="Slide 3"></button>
			</div>
			<div class="carousel-inner">
				<div class="carousel-item active">
					<img src="./assets/imgs/HeroImage (1).png" class="d-block w-100" alt="..." height="400px">
					<div class="carousel-caption d-none d-md-block text-start">
						<h5 class="fs-4 emph5">We <b class="empbold">empower</b> you <br>
							to learn what you love.</h5>
						<!-- <p>We empower you 
            to learn what you love.</p> -->
					</div>
				</div>
				<div class="carousel-item">
					<img src="./assets/imgs/Rectangle 28 (1).png" class="d-block w-100" alt="..." height="400px">
					<div class="carousel-caption d-none d-md-block text-start">
						<h5 class="fs-4 emph5">We <b class="empbold">empower</b> you <br>
							to learn what you love.</h5>
					</div>
				</div>
				<div class="carousel-item">
					<img src="./assets/imgs/Rectangle 28 (2).png" class="d-block w-100" alt="..." height="400px">
					<div class="carousel-caption d-none d-md-block text-start">
						<h5 class="fs-4 emph5">We <b class="empbold">empower</b> you <br>
							to learn what you love.</h5>
					</div>
				</div>
			</div>
			<button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="prev">
				<span class="carousel-control-prev-icon" aria-hidden="true"></span>
				<span class="visually-hidden"></span>
			</button>
			<button class="carousel-control-next" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="next">
				<span class="carousel-control-next-icon" aria-hidden="true"></span>
				<span class="visually-hidden"></span>
			</button>
		</div>
		<div class="bottomcrousel">
			<span>250,998 people are learning with us</span><span><button class="lmore fw-bold">Learn More &rarr;</button></span>
		</div>
	</div>

	<!-- -------------------------------------------- -->