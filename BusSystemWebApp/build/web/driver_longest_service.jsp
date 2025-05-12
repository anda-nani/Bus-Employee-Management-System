<%-- 
    Document   : driver_longest_service
    Created on : 12 May 2025, 12:32:50 AM
    Author     : Student
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Driver Longest Service Page</title>
    </head>
    <body>
        <h1>Driver Longest Service !</h1>
        <form action="GetLongestServlet.do" method="POST">
            <table>
                <tr>
                    <td></td>
                    <td><input type="submit" name="param" value="GET LONGEST"></td>
                </tr>
            </table>
        </form>
    </body>
</html>
