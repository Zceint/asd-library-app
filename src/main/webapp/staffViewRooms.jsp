<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="uts.asd.lrbs.model.User"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/styles.css">
        <title>View Rooms</title>
        <style>
            td {
                padding: 15px;
                border: 1px solid #444444;
                text-align: center;
            }
        </style>
    </head>
    <body>
        <% 
            User user = (User) session.getAttribute("user");
        %>
        <header>
            <div style="position: absolute; top: 20px; left: 5px;">
                <a class="button" style="font-size: 16px" href="libraryRoomManagement.jsp">< Back</a>
            </div>
            <h1>View Rooms</h1>
            <div style="position: absolute; top: 20px; right: 5px;">
                <a class="button" style="font-size: 16px" href="index.jsp">Logout</a>
            </div>
        </header>
        
        <table style="border-collapse: collapse; margin-top: 20px; margin-bottom: 20px; ">
            <tr style="background-color: grey; color: white; font-weight: bold;">
                <td>ID</td>
                <td>Location</td>
                <td>Capacity</td>
                <td>Availability</td>
            </tr>
            <tr style="background-color: #efefef;">
                <td style="padding: 8px;">201</td>
                <td style="padding: 8px;">L2R3</td>
                <td style="padding: 8px;">5</td>
                <td style="background-color: green; padding: 8px; font-weight: bold; color: white;">Available</td>
            </tr>
            <tr style="background-color: #efefef;">
                <td style="padding: 8px;">202</td>
                <td style="padding: 8px;">L1R1</td>
                <td style="padding: 8px;">3</td>
                <td style="background-color: red; padding: 8px; font-weight: bold; color: black;">Unavailable</td>
            </tr>
            <tr style="background-color: #efefef;">
                <td style="padding: 8px;">203</td>
                <td style="padding: 8px;">L1R2</td>
                <td style="padding: 8px;">6</td>
                <td style="background-color: red; padding: 8px; font-weight: bold; color: black;">Unavailable</td>
            </tr>
            <tr style="background-color: #efefef;">
                <td style="padding: 8px;">204</td>
                <td style="padding: 8px;">L1R3</td>
                <td style="padding: 8px;">4</td>
                <td style="background-color: green; padding: 8px; font-weight: bold; color: white;">Available</td>
            </tr>
            
        </table>
        
    </body>
</html>