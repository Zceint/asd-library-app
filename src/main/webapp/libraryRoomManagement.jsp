<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="uts.asd.lrbs.model.User"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/styles.css">
        <title>Library Room Management</title>
    </head>
    <body>
        
        <header>
            <div style="position: absolute; top: 20px; left: 5px;">
                <a class="button" style="font-size: 16px" href="staffMain.jsp">< Back</a>
            </div>
            <h1>Library Room Management</h1>
            <div style="position: absolute; top: 20px; right: 5px;">
                <a class="button" style="font-size: 16px" href="index.jsp">Logout</a>
            </div>
        </header>
       
        
        <table style="border-spacing: 10px; margin-bottom: 0; padding-bottom: 0;">
            <tr>
                <!--<td><form action="UserServlet" method="post"><input class="button" type="submit" value="View Users"></form></td>-->
                <td><a class="button" href="staffViewRooms.jsp">View Rooms</a></td>
                <td><a class="button" href="staffEditReservation.jsp">Edit Reservation Details</a></td>
            </tr>
        </table>
        
    </body>
</html>