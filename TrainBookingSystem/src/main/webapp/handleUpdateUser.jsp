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
		String name = request.getParameter("name");
		String contact = request.getParameter("contact");
		String password = request.getParameter("password");
		
		PreparedStatement pps=con.prepareStatement("UPDATE user SET name = ?, contact = ?, password = ?  WHERE email = ?");
				
		pps.setString(1,name);
		pps.setString(2,contact);
		pps.setString(3,password);
		pps.setString(4,email);
				
		pps.executeUpdate();
		
		response.sendRedirect("User.jsp");
			
				
	%>