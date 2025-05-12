<%-- 
    Document   : view_all_trip_outcome
    Created on : 12 May 2025, 3:10:32 PM
    Author     : Student
--%>

<%@page import="java.util.Date"%>
<%@page import="za.ac.tut.entities.Trip"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>View All Trip Outcome Page</title>
    </head>
    <body>
        <h1>View All Trip Outcome!</h1>
         <table border="1">
            <tr>
                <th>ID</th>
                <th>Departure Time</th>
                <th>Arrival Time</th>
                <th>route</th>
               
            </tr>
        <%
        List<Trip> trip=(List<Trip>)request.getAttribute("trip");
           for(Trip trips:trip){
               Long id=trips.getId();
               Date departureTime=trips.getDepartureTime();
               Date arrivalTime=trips.getDestinationTime();
               String route=trips.getRoute();
           
           
        %>
           
            <tr>
                <td><%=id%></td>
                <td><%=departureTime%></td>
                <td><%=arrivalTime%></td>
                <td><%=route%></td>
              
            </tr>
            <%
                    }
                %>
                
        </table>
                
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
