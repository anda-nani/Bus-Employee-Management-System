<%-- 
    Document   : longest_service_outcome
    Created on : 12 May 2025, 2:10:42 AM
    Author     : Student
--%>

<%@page import="za.ac.tut.entities.Contact"%>
<%@page import="java.util.List"%>
<%@page import="java.util.Date"%>
<%@page import="za.ac.tut.entities.Driver"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>longest Service Outcome Page</title>
    </head>
    <body>
        <h1>longest Service Outcome!</h1>
     
           
        <%
          List<Driver>  driver =(List<Driver>)request.getAttribute("driver");
        for(Driver drivers:driver){
        Long id=drivers.getId();
        String name=drivers.getName();
        String surname=drivers.getSurname();
        Character gender=drivers.getGender();
        Integer age=drivers.getAge();
        Date hiredate=drivers.getHireDate();
        List <Contact> contacts = drivers.getContacts();
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
            <%
                }
            
            %>
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
