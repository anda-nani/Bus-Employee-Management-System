<%-- 
    Document   : view_trip_records
    Created on : 12 May 2025, 2:59:26 PM
    Author     : Student
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>View Trip Records Page</title>
    </head>
    <body>
        <h1>View Trip Records!</h1>
        <p>
            Enter the staff id below:
        </p>
        <form action="ViewPartialTripRecord.do" method="POST">
            <table>
                <tr>
                    <td>Staff Id:</td>
                    <td><input type="text" name="id" required=""/></td>
                </tr>
                 <tr>
                    <td></td>
                    <td><input type="submit" value="VIEW PARTIAL RECORD"/></td>
                </tr>
            </table>
        </form>
    </body>
</html>
