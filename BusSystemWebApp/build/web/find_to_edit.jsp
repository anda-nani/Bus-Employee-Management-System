<%-- 
    Document   : find_to_edit
    Created on : 11 May 2025, 11:57:19 PM
    Author     : Student
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <title>Search for Driver Page</title>
    </head>
    <body>
        <h1>Search for Driver!</h1>
        <p>
            Please enter the required information:
        </p>
        <form action="FindToEditDriverServlet.do" method="POST">
            <table>
                <tr>
                    <td>Staff Id:</td>
                    <td><input type="text" name="id" required=""/></td>
                </tr>
                 <tr>
                    <td></td>
                    <td><input type="submit" value="FIND DRIVER"></td>
                </tr>
            </table>
        </form>
    </body>
</html>
