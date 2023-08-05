<%
	String email = (String)session.getAttribute("email");
	if(email == null){
		response.sendRedirect("login.jsp");
	}
%>


<!DOCTYPE html>
<html>

<head>
  <!-- Basic -->
  <meta charset="utf-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge" />
  <!-- Mobile Metas -->
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
  <!-- Site Metas -->
  <meta name="keywords" content="" />
  <meta name="description" content="" />
  <meta name="author" content="" />

  <title>Quick Track</title>

  <!-- slider stylesheet -->
  <link rel="stylesheet" type="text/css"
    href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.1.3/assets/owl.carousel.min.css" />


  <!-- font wesome stylesheet -->
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">

  <!-- bootstrap core css -->
  <link rel="stylesheet" type="text/css" href="css/bootstrap.css" />

  <!-- fonts style -->
  <link href="https://fonts.googleapis.com/css?family=Poppins:400,600,700&display=swap" rel="stylesheet">
  <!-- Custom styles for this template -->
  <link href="css/style.css" rel="stylesheet" />
  <!-- responsive style -->
  <link href="css/responsive.css" rel="stylesheet" />
</head>

<body>
  <div class="hero_area">
    <!-- header section strats -->
    <header class="header_section">
      <div class="container">
        <nav class="navbar navbar-expand-lg custom_nav-container pt-3">
          <a class="navbar-brand mr-5" href="index.html">
            <img src="images/logo.png" alt="">
            <span>
              Quick Track
            </span>
          </a>
          <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
            aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button>
          <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <div class="d-flex ml-auto flex-column flex-lg-row align-items-center">
              <ul class="navbar-nav  ">
                <li class="nav-item active">
                  <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="about.jsp"> About </a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="service.jsp"> Service </a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="login.jsp">Login</a>
                </li>
              </ul>
              <form class="form-inline">
                <button class="btn  my-2 my-sm-0 nav_search-btn" type="submit"></button>
              </form>
            </div>
          </div>
        </nav>
      </div>
    </header>
    <!-- end header section -->
    <!-- slider section -->
    <section class=" slider_section position-relative">
      <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
        <ol class="carousel-indicators">
          <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active">01</li>
          <li data-target="#carouselExampleIndicators" data-slide-to="1">02</li>
        </ol>
        <div class="carousel-inner">
          <div class="carousel-item active">
            <div class="container">
              <div class="row">
                <div class="col-md-7">
                  <div class="detail-box">
                    <div>
                      <h1>
                        Welcome To <br>
                        <span>
                          Quick Track
                        </span>
                      </h1>
                      <p>
                        Your Journey, Our Priority: Simplifying Train Bookings for a Seamless Travel Experience
                      </p>
                      <div class="btn-box">
                        <a href="viewtrain.jsp" class="btn-1">
                          Book Now
                        </a>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="carousel-item">
            <div class="container">
              <div class="row">
                <div class="col-md-7">
                  <div class="detail-box">
                    <div>
                      <h1>
                        Welcome To <br>
                        <span>
                          Quick Track
                        </span>
                      </h1>
                      <p>
                        It is a long established fact that a reader will be distracted by the readable content of a page
                        when looking
                      </p>
                      <div class="btn-box">
                        <a href="Search.jsp" class="btn-1">
                         Search
                        </a>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="custom_carousel-control">
          <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
            <span class="sr-only">Previous</span>
          </a>
          <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
            <span class="sr-only">Next</span>
          </a>
        </div>
      </div>
    </section>
    <!-- end slider section -->
  </div>

  <!-- about section -->

  <section class="about_section layout_padding">
    <div class="container">
      <div class="row">
        <div class="col-md-6">
          <div class="detail-box">
            <div class="heading_container">
              <h2>
                About Us
              </h2>
            </div>
            <p style="margin-top: 2rem;">
              At Quick Track, we're dedicated to simplifying train bookings for a seamless travel experience. Our user-friendly platform offers real-time schedules, seat availability, and secure online payments. With 24/7 customer support, we're here to exceed your expectations and ensure your satisfaction.
            </p>
            <a href="">
              Get Started
            </a>
          </div>
        </div>
        <div class="col-md-6">
          <div class="img-box">
            <img src="images/about-img.png" alt="">
          </div>
        </div>
      </div>
    </div>
  </section>
  <!-- end about section -->
  <div class="body_bg layout_padding">

    <!-- service section -->

    <section class="service_section ">
      <div class="container">
        <div class="heading_container">
          <h2>
            At Your Service
          </h2>
        </div>
      </div>
      <div class="container">
        <div class="row">
          <div class="col-md-6">
            <div class="box">
              <div class="img-box">
                <img src="images/s-1.png" alt="">
              </div>
              <h4>
               	Book Train
              </h4>
              <p>
                It is a long established fact that a reader will be distracted by the readable content of a page when
                looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution
                of
                letters, as opposed to using 'Content here, content t,
              </p>
              <a href="/TrainBookingSystem/viewtrain.jsp">
                Book Now
              </a>
            </div>
          </div>
          <div class="col-md-6">
            <div class="box align-items-end align-items-md-start text-right text-md-left">
              <div class="img-box">
                <img src="images/s-2.png" alt="">
              </div>
              <h4>
                Search your ride
              </h4>
              <p>
                It is a long established fact that a reader will be distracted by the readable content of a page when
                looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution
                of
                letters, as opposed to using 'Content here, content here', making it look like
              </p>
              <a href="/TrainBookingSystem/Search.jsp">
                Search
              </a>
            </div>
          </div>
        </div>
        <div class="row">
          <div class="col-md-6">
            <div class="box">
              <div class="img-box">
                <img src="images/s-3.png" alt="">
              </div>
              <h4>
                Payment History
              </h4>
              <p>
                It is a long established fact that a reader will be distracted by the readable content of a page when
                looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution
                of
                letters, as opposed to using 'Content here, content here', making it look like now use Lorem Ipsum as
                their default model text,
              </p>
              <a href="/TrainBookingSystem/paymentHistory.jsp">
                Go
              </a>
            </div>
          </div>
          <div class="col-md-6">
            <div class="box align-items-end align-items-md-start text-right text-md-left">
              <div class="img-box">
                <img src="images/s-4.png" alt="">
              </div>
              <h4>
                View Profile
              </h4>
              <p>
                It is a long established fact that a reader will be distracted by the readable content of a page when
                looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution
                of
                letters, as opposed to using 'Content here, content here', making it look like
              </p>
              <a href="/TrainBookingSystem/User.jsp">
                View
              </a>
            </div>
          </div>
        </div>
      </div>
    </section>

    <!-- end service section -->

    <!-- quote section -->


    <!-- end quote section -->


    <!-- contact section -->



    <!-- end contact section -->

    <!-- client section -->

    <section class="client_section layout_padding-top">
      <div class="d-flex justify-content-center">
        <div class="heading_container">
          <h2>
            Testimonial
          </h2>
        </div>
      </div>
      <div class="container layout_padding2">
        <div id="carouselExample2Indicators" class="carousel slide" data-ride="carousel">
          <ol class="carousel-indicators">
            <li data-target="#carouselExample2Indicators" data-slide-to="0" class="active"></li>
            <li data-target="#carouselExample2Indicators" data-slide-to="1"></li>
            <li data-target="#carouselExample2Indicators" data-slide-to="2"></li>
          </ol>
          <div class="carousel-inner">
            <div class="carousel-item ">
              <div class="client_container">
                <div class="client-id">
                  <div class="img-box">
                    <img src="images/client.jpg" alt="">
                  </div>
                  <div class="client_name">
                    <div>
                      <h3>
                        Johndue
                      </h3>
                      <p>
                        Farm & CO
                      </p>
                    </div>
                  </div>
                </div>
                <div class="client_detail">
                  <div class="client_text">
                    <blockquote>
                      <p>
                        ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et
                        dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut
                        aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit
                      </p>
                    </blockquote>
                  </div>
                </div>
              </div>
            </div>
            <div class="carousel-item active">
              <div class="client_container">
                <div class="client-id">
                  <div class="img-box">
                    <img src="images/client.jpg" alt="">
                  </div>
                  <div class="client_name">
                    <div>
                      <h3>
                        Johndue
                      </h3>
                      <p>
                        Farm & CO
                      </p>
                    </div>
                  </div>
                </div>
                <div class="client_detail">
                  <div class="client_text">
                    <blockquote>
                      <p>
                        ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et
                        dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut
                        aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit
                      </p>
                    </blockquote>
                  </div>
                </div>
              </div>
            </div>
            <div class="carousel-item ">
              <div class="client_container">
                <div class="client-id">
                  <div class="img-box">
                    <img src="images/client.jpg" alt="">
                  </div>
                  <div class="client_name">
                    <div>
                      <h3>
                        Johndue
                      </h3>
                      <p>
                        Farm & CO
                      </p>
                    </div>
                  </div>
                </div>
                <div class="client_detail">
                  <div class="client_text">
                    <blockquote>
                      <p>
                        ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et
                        dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut
                        aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit
                      </p>
                    </blockquote>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>

      </div>
    </section>


    <!-- end client section -->

  </div>
  <!-- info section -->

  <section class="info_section layout_padding">
    <div class="footer_contact">
      <div class="heading_container">
        <h2>
          Contact Us
        </h2>
      </div>
      <div class="box">
        <a href="" class="img-box">
          <img src="images/location.png" alt="" class="img-1">
          <img src="images/location-o.png" alt="" class="img-2">
        </a>
        <a href="" class="img-box">
          <img src="images/call.png" alt="" class="img-1">
          <img src="images/call-o.png" alt="" class="img-2">
        </a>
        <a href="" class="img-box">
          <img src="images/envelope.png" alt="" class="img-1">
          <img src="images/envelope-o.png" alt="" class="img-2">
        </a>
      </div>
    </div>


  </section>


  <!-- end info section -->

  <!-- footer section -->
  <section class="container-fluid footer_section">
    <p>
      Copyright &copy; 2019 All Rights Reserved By
      <a href="https://html.design/">Free Html Templates</a>
    </p>
  </section>
  <!-- footer section -->

  <script type="text/javascript" src="js/jquery-3.4.1.min.js"></script>
  <script type="text/javascript" src="js/bootstrap.js"></script>

</body>

</html>