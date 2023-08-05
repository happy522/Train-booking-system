<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
 <% 
     String username = request.getParameter("username");
     String password = request.getParameter("password");
     
     // Perform your login logic here
     // For demonstration purposes, we'll just check if the username and password are "admin"
     if (username.equals("admin") && password.equals("admin")) {
         out.println("<h2>Login Successful!</h2>");
     } else {
         out.println("<h2>Login Failed!</h2>");
     }
 %>
