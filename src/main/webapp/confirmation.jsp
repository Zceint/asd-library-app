<%-- 
    Author     : Anslie
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="uts.asd.lrbs.model.*"%>
<%@page import="uts.asd.lrbs.controller.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/styles.css">
        <title>Catalogue</title>
        
        <%
            User user = (User) session.getAttribute("user");
            // Reservation newReservation = (Reservation) session.getAttribute("newReservation");
            String roomID = request.getParameter("roomID");
            String noPeople = request.getParameter("noPeople");
            String date = request.getParameter("date");
            String time = request.getParameter("time");
            String duration = request.getParameter("duration");
        %>

    </head>
    <body>
        <header>
            <h1>Library Room Booking System</h1>
        </header>
        
        <div style="text-align: center; margin: 15px">
            <h3>Your Reservation Details</h3>
        </div>
        
        <table>
            <tr>
                <td>Reservation ID: </td>
                <td></td>
            </tr>
            <tr>
                <td>User ID: </td>
                <td>${user.userID}</td>
            </tr>
            <tr>
                <td>Room ID: </td>
                <td>${roomID}</td>
            </tr>
            <tr>
                <td>Number of People: </td>
                <td>${noPeople}</td>
            </tr>
            <tr>
                <td>Date: </td>
                <td>${date}</td>
            </tr>
            <tr>
                <td>Time: </td>
                <td>${time}</td>
            </tr>
            <tr>
                <td>Duration: </td>
                <td>${duration} hr/s</td>
            </tr>
        </table>
        
        <div style="text-align: center; margin: 15px">
            <a class="button" href="main.jsp">OK</a>
        </div>
        
    </body>
</html>
