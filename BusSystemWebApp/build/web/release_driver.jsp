<%-- 
    Document   : release_driver
    Created on : 11 May 2025, 10:39:31 PM
    Author     : Student
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Remove Driver Page</title>
    </head>
    <body>
        <h1>Remove Driver!</h1>
        <p>
            Please enter the staff id to remove a driver.
        </p>
        <form action="ReleaseDriverServlet.do" method="POST">
            <table>

                <tr>
                    <td>Staff ID:</td>
                    <td><input type="text" name="staffid"</td>
                </tr>
                <tr>
                    <td></td>
                    <td><input type="submit" value="REMOVE DRIVER"</td>
                </tr>
            </table>
        </form>
    </body>
</html>
