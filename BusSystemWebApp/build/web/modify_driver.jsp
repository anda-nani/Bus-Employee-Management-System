<%-- 
    Document   : modify_driver
    Created on : 11 May 2025, 11:24:39 PM
    Author     : Student
--%>

<%@page import="za.ac.tut.entities.Driver"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Edit Driver Page</title>
    </head>
    <body>
        <h1>Edit Driver!</h1>
        <p>
            Enter the details you want to modify below:
        </p>
       <%
           Driver driver = (Driver)request.getAttribute("driver");
           Long id = driver.getId();
           String name = driver.getName();
           String surname = driver.getSurname();
           
           Integer age = driver.getAge();
           String contact1 = driver.getContacts().get(0).getContact();
           String contact2 = driver.getContacts().get(1).getContact();
       
       %>
        <form action="ModifyDriverServlet.do" method="POST">
       <table>
                <tr>
                    <td>Staff ID:</td>
                    <td><input type="text" name="id" value="<%=id%>" readonly=""/></td>
                </tr>
                <tr>
                    <td>Name:</td>
                    <td><input type="text" name="name" value="<%=name%>"required=""/></td>
                </tr>
                <tr>
                    <td>Surname:</td>
                    <td><input type="text" name="surname" value="<%=surname%>" required=""/></td>
                </tr>
                <tr>
                    <td>Age:</td>
                    <td><input type="text" name="age" value="<%=age%>"required=""/></td>
                </tr>
                <tr>
                    <td>Contact1:</td>
                    <td><input type="text" name="con1" value="<%=contact1%>"required=""/></td>
                </tr>
                <tr>
                    <td>Contact2:</td>
                    <td><input type="text" name="con2" value="<%=contact2%>"required=""/></td>
                </tr>
                <tr>
                    <td></td>
                    <td><input type="submit" value="MODIFY DRIVER"/></td>
                </tr>
            </table>
        </form>
    </body>
</html>
