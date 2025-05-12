<%-- 
    Document   : release_driver_outcome
    Created on : 11 May 2025, 10:47:10 PM
    Author     : Student
--%>

<%@page import="za.ac.tut.entities.Driver"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Release Driver from Duties Outcome Page</title>
    </head>
    <body>
        <h1>Release Driver from Duties Outcome!</h1>
        <%
        Driver driver=(Driver)request.getAttribute("driver");
        
        %>
        <p>
             :) Driver has been successfully removed from the database.
        </p>
         <ol>
            Please click<a href="menu.jsp"> Menu </a> to our menu page :)
            <br>
            Please click<a href="index.html"> Home </a> to go to our home page :)
        </ol>
        <p>
              <a href="LogoutServlet.do">Log out</a>
          </p>
    </body>
</html>
