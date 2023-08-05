<%@ page import="java.sql.*" %>
<%
	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/train-booking-system", "root", "");
	
	PreparedStatement ps=con.prepareStatement("select * from user where email=? AND password=?");
	ps.setString(1,"da03@gmail.com");
	ps.setString(2,"12");
	ResultSet r = ps.executeQuery();
%>




<!DOCTYPE html>
<html>
<head>
    <title>Login Page</title>
</head>
<body>
    <h2>Login</h2>
    <form action="trialLogin.jsp" method="post">
        <label for="username">Username:</label>
        <input type="text" id="username" name="username" required><br><br>
        
        <label for="password">Password:</label>
        <input type="password" id="password" name="password" required><br><br>
        
        <input type="submit" value="Login">
        
        <%
		if (r.next()) {
            // User is authenticated
            String username = r.getString("name");
            out.println("Login Successful for user: " + username);
        } else {
            // User authentication failed
            out.println("Login Failed!");
        } %>
    </form>
</body>
</html>
