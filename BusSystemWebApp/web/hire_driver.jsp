<%-- 
    Document   : hire_driver
    Created on : 11 May 2025, 9:49:32 PM
    Author     : Student
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Hire Driver Page</title>
    </head>
    <body>
        <h1>Hire Driver!</h1>
        <form action="HireDriverServlet.do" method="POST">
            <table>
                <tr>
                    <td>Staff ID:</td>
                    <td><input type="text" name="id" required=""/></td>
                </tr>
                <tr>
                    <td>Name:</td>
                    <td><input type="text" name="name" required=""/></td>
                </tr>
                <tr>
                    <td>Surname:</td>
                    <td><input type="text" name="surname" required=""/></td>
                </tr>
                <tr>
                    <td>Gender:</td>
                    <td>
                        <select name="gender">
                            <option value="F">Female</option>
                            <option value="M">Male</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td>Age:</td>
                    <td><input type="text" name="age" required=""/></td>
                </tr>
                <tr>
                    <td>Hire Date:</td>
                    <td><input type="date" name="hiredate" required=""/></td>
                </tr>
                <tr>
                    <td>Contact1:</td>
                    <td><input type="text" name="con1" required=""/></td>
                </tr>
                <tr>
                    <td>Contact2:</td>
                    <td><input type="text" name="con2" required=""/></td>
                </tr>
                <tr>
                    <td></td>
                    <td><input type="submit" value="HIRE DRIVER"/></td>
                </tr>
            </table>
        </form>
    </body>
</html>
