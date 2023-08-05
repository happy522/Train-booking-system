<%@ page import="java.sql.*" %>
   
<%@ page import="java.lang.*" %>

<%
		Connection con = null;
		Statement s=null;
		ResultSet rs=null;
		String count = "0";
		
		Class.forName("com.mysql.jdbc.Driver");
		con = DriverManager.getConnection("jdbc:mysql://localhost:3306/train-booking-system", "root", "");

		
		
		String email = (String)session.getAttribute("email");
		int trainNo = Integer.parseInt(request.getParameter("id"));
		
		PreparedStatement pps=con.prepareStatement("INSERT INTO booked_train (email, train_no) values (?,?)");
		pps.setString(1, email);
		pps.setInt(2, trainNo);
		pps.executeUpdate();
			
		response.sendRedirect("viewtrain.jsp");
	%>