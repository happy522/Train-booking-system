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

  <title>QUICK TRACK</title>

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

<body class="sub_page">
  <div class="hero_area">
    <!-- header section strats -->
    <header class="header_section">
      <div class="container">
        <nav class="navbar navbar-expand-lg custom_nav-container pt-3">
          <a class="navbar-brand mr-5" href="index.html">
            <img src="images/logo.png" alt="">
            <span>
              QUICK TRACK
            </span>
          </a>
          <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
            aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button>
          <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <div class="d-flex ml-auto flex-column flex-lg-row align-items-center">
              <ul class="navbar-nav  ">
                <li class="nav-item ">
                  <a class="nav-link" href="index.jsp">Home <span class="sr-only">(current)</span></a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="about.jsp"> About </a>
                </li>
                <li class="nav-item active">
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
  </div>

  <div class="body_bg layout_padding">

    <!-- service section -->
<div class="container contact_bg layout_padding2-top">
        <div class="row">
          <div class="col-md-6">
            <div class="contact_form ">
              <form action="">
                <input type="text" placeholder="Search Train" name="name" required>
                </form>
                
                <%@ page import="java.sql.*" %>
                
                <%@ page import="java.lang.*" %>
<%

		Connection con = null;
		Statement s=null;
		ResultSet rs=null;
		String count = "0";
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/train-booking-system", "root", "");

			String name = request.getParameter("name");
			

			PreparedStatement ps=con.prepareStatement("select * from train where TrainName=?");
			ps.setString(1,name);
			
			rs = ps.executeQuery();
			if(rs.next()){
				out.println("<table border='1' align='center' ><tr><th>Train Number</th> <th>Train Name</th><th>From Station</th><th>To Station</th><th>Time</th><th>Seat Availability</th><th>Fare(INR)</th><th>Booking</th>");
				rs.previous();
				while( rs.next() ){
				
				out.println("<tr>");
				
				out.println("<td>");
				out.println(rs.getString(1));
				out.println("</td>");
				out.println("<td>");
				out.println(rs.getString(2));
				out.println("</td>");
				out.println("<td>");
				out.println(rs.getString(3));
				out.println("</td>");
				out.println("<td>");
				out.println(rs.getString(4));
				out.println("</td>");
				out.println("<td>");
				out.println(rs.getString(5));
				out.println("</td>");
				out.println("<td>");
				out.println(rs.getString(6));
				out.println("</td>");
				out.println("<td>");
				out.println(rs.getString(7));
				out.println("</td>");

				out.println("<td>");
				out.println("<button><a href='Payment.jsp'> Book Now</button>");

				out.println("</td>");
				out.println("</tr>");
				
				

	
			}
			}
			else{
				out.println("<h1>No Trains available, Please recheck name</h1>");
			}
		
	%>
    </table>

    <!-- end service section -->

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

  <script type="text/javascript" src="js/jquery-3.4.1.min.js"></script>
  <script type="text/javascript" src="js/bootstrap.js"></script>

</body>

</html>