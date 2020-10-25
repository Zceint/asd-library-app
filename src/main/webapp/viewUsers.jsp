<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="uts.asd.lrbs.model.User"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/styles.css">
        <title>View Users</title>
        <style>
            td {
                padding: 15px;
                border: 1px solid #444444;
            }
        </style>
    </head>
    <body>
        <% 
            User user = (User) session.getAttribute("user");
        %>
        <header>
            <div style="position: absolute; top: 20px; left: 5px;">
                <a class="button" style="font-size: 16px" href="userManagement.jsp">< Back</a>
            </div>
            <h1>View Users</h1>
            <div style="position: absolute; top: 20px; right: 5px;">
                <a class="button" style="font-size: 16px" href="index.jsp">Logout</a>
            </div>
        </header>
        
        <table style="border-collapse: collapse; margin-top: 20px; margin-bottom: 20px; ">
            <tr style="background-color: grey; color: white; font-weight: bold;">
                <td>ID</td>
                <td>First Name</td>
                <td>Last Name</td>
                <td>Email</td>
                <td>Type</td>
            </tr>
            <tr style="background-color: #efefef;">
                <td style="padding: 8px;">101</td>
                <td style="padding: 8px;">Jim</td>
                <td style="padding: 8px;">Smith</td>
                <td style="padding: 8px;">jim@gmail.com</td>
                <td style="padding: 8px;">Customer</td>
            </tr>
            <tr style="background-color: #efefef;">
                <td style="padding: 8px;">102</td>
                <td style="padding: 8px;">Steve</td>
                <td style="padding: 8px;">John</td>
                <td style="padding: 8px;">steve@gmail.com</td>
                <td style="padding: 8px;">Staff</td>
            </tr>
            
        </table>
        
    </body>
</html>