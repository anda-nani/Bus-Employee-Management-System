<%-- 
    Document   : get_driver
    Created on : 12 May 2025, 12:50:16 AM
    Author     : Student
--%>

<%@page import="za.ac.tut.entities.Contact"%>
<%@page import="java.util.List"%>
<%@page import="java.util.Date"%>
<%@page import="za.ac.tut.entities.Driver"%>
<%@page import="za.ac.tut.entities.Driver"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>get_driver Page</title>
    </head>
    <body>
        <h1>get_driver</h1>
        <% 
    Driver driver = (Driver) request.getAttribute("driver");
    if (driver != null) { 
%>
    <p>Name: <%= driver.getName() %></p>
    <p>ID: <%= driver.getId() %></p>
<% 
    } else { 
%>
    <p>No driver data available or no driver has recorded trips.</p>
<% 
    } 
%>

        <%
         driver =(Driver)request.getAttribute("driver");
        Long id=driver.getId();
        String name=driver.getName();
        String surname=driver.getSurname();
        Character gender=driver.getGender();
        Integer age=driver.getAge();
        Date hiredate=driver.getHireDate();
        List <Contact> contacts = driver.getContacts();
        String contact1=contacts.get(0).getContact();
        String contact2=contacts.get(1).getContact();
        %>
        <p> Details of the driver:</p>
        <table border="1">
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Surname</th>
                <th>Gender</th>
                <th>Age</th>
                <th>Hire Date</th>
                <th>Contact1</th>
                <th>Contact2</th>
            </tr>
            <tr>
                <td><%=id%></td>
                <td><%=name%></td>
                <td><%=surname%></td>
                <td><%=gender%></td>
                <td><%=age%></td>
                <td><%=hiredate%></td>
                <td><%=contact1%></td>
                <td><%=contact2%></td>
            </tr>
            
        </table>
         <ol>
            Please click<a href="menu.jsp"> Menu </a> to our menu page :)
            <br>
            Please click<a href="index.html"> Home </a> to go to our home page :)
        </ol>
    </body>
</html>
