<%-- 
    Document   : find_driver_outcome
    Created on : 11 May 2025, 11:09:20 PM
    Author     : Student
--%>

<%@page import="java.util.Date"%>
<%@page import="java.util.List"%>
<%@page import="za.ac.tut.entities.Contact"%>
<%@page import="za.ac.tut.entities.Driver"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Find Driver Outcome Page</title>
    </head>
    <body>
        <h1>Find Driver Outcome!</h1>
        <%
            Driver driver = (Driver) request.getAttribute("driver");

        %>
        <p> Details of the driver:</p>
        <b><%=driver.getName()%>
        <b><%=driver.getSurname()%>
        <b><%=driver.getId()%>
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
