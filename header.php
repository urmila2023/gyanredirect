	 <!-- header----------------- -->
     <div class="container-fluid bg" style="height:91px;">
        <div class="container">
            <div class="d-flex justify-content-between text-white">
                <div class="mt-3">
                    <a class="navbar-brand" href="index.php"><img src="./assets/imgs/Logo (3).png" /></a>
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


    </div>
    <!-- <div class="countdiv"><b>03</b></div> -->

    <div id="mySidebar" class="sidebar">
        <a href="javascript:void(0)" class="closebtn" onclick="closeSidebar()">&times;</a>
        <a href="about.php" class="fs-5">About</a>
        <a href="allcourses.php" class="fs-5">Courses</a>
        <a href="contact.php" class="fs-5">Contact</a>
    </div>
    <!-- user icon section -->
    <div id="mySlidebar" class="sidebar">
        <a href="javascript:void(0)" class="closebtn" onclick="closeSlidebar()">&times;</a>
        <a href="signin.php" class="fs-5">Sign In /Sign Up</a>
        <a href="logout1.php" class="fs-5">Logout</a>
        <!-- <a href="signin.html"class="fs-5">Sign Up</a> -->
        <a href="#" class="fs-5">Help Center</a>

    </div>

    <!-- header------------------- -->