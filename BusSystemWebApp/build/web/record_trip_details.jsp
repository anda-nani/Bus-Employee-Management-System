<%-- 
    Document   : record_trip_details
    Created on : 12 May 2025, 12:54:38 AM
    Author     : Student
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Record Trip Details Page</title>
    </head>
    <body>
        <h1>Record Trip Details</h1>
        <form action="RecordTripServlet.do" method="POST">
            <table>
                <tr>
                    <td>Staff ID:</td>
                    <td><input type="text" name="id" required=""></td>
                </tr>
                <tr>
                    <td>Departure Time:</td>
                    <td><input type="datetime-local" name="depart" required=""></td>
                </tr>
                <tr>
                    <td>Arrival Time:</td>
                    <td><input type="datetime-local" name="arrival" required=""></td>
                </tr>
                <tr>
                    <td>Route:</td>
                    <td>
                        <select name="route">
                            <option value="sn">South-North</option>
                            <option value="sa">South-Arcadia</option>
                            <option value="ns">North-South</option>
                            <option value="na">North-Arcadia</option>
                            <option value="an">Arcadia-North</option>
                            <option value="as">Arcadia-South</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td><input type="submit" name="param" value="RECORD"></td>
                </tr>
            </table>
        </form>
    </body>
</html>
