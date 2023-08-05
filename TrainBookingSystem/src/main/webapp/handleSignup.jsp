
<%@ page import="java.sql.*" %>
                
<%@ page import="java.lang.*" %>
                
<%
		Statement s=null;
		ResultSet rs=null;
		String count = "0";
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/train-booking-system", "root", "");
	
			s = con.createStatement();
			
			String query=null;
			
			String name=request.getParameter("name");
			String contact = request.getParameter("contact");

			String email = request.getParameter("email");
			String password = request.getParameter("password");
			String rePassword = request.getParameter("Repassword");
			
			PreparedStatement ps=con.prepareStatement("select * from user where email=?");
			ps.setString(1,email);
            ResultSet r = ps.executeQuery();
            
            
            if(r.next()){
                response.sendRedirect("signup.jsp?error=1");

        		}
            else if(!password.equals(rePassword)){
            	out.println("<font color=red>");
                out.println("Passowrd and Re-password doesn't Match");
                out.println("</font>");
                response.sendRedirect("signup.jsp?error=2");
            }
            else{
            	int i = s.executeUpdate(" insert into user(name,contact,email,password) values('"+name+"','"+contact+"','"+email+"','"+password+"') ");
                
                out.println("<font color=green>");
                
                out.println("Signup Successful"+i);
                out.println("</font>");
                response.sendRedirect("index.html");
                
            }
			                
			      			
			                  
				
			out.println("<h1>name</h1>");
	%>