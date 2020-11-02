<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="uts.asd.lrbs.model.*"%>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/styles.css">
        <title>Home</title>
    </head>
    
    <body>
        <header>
            <h1>Home</h1>
            <div style="position: absolute; top: 20px; right: 5px;">
                <a class="button" style="font-size: 16px" href="index.jsp">Logout</a>
            </div>
        </header>

        <%//Check if there is a valid user in the session
           /* User user = (User)session.getAttribute("user");
            if (user == null) {
                session.setAttribute("redirect", "userprofile");
            }
            else {

        int userId = user.getId();
        String firstName = user.getFirstName();
        String lastName = user.getLastName();
        String email = user.getEmail(); */

    %>
        <div>
            <table style="border-collapse: collapse; margin-top: 20px; margin-bottom: 20px; ">
                <tr style="background-color: #efefef;">
                    <td style="padding: 8px;"> ID: </td> 
                    <td style="padding: 8px;"> 123456</td>
                </tr>
                <tr style="background-color: #efefef;">
                    <td style="padding: 8px;"> Name: </td> 
                    <td style="padding: 8px;"> Donald Trump </td>
                </tr>
                <tr style="background-color: #efefef;">
                    <td style="padding: 8px;"> Email: </td> 
                    <td style="padding: 8px;"> <%= request.getParameter("email")%> </td>
                </tr>            
            </table> 
                    
        </div>


        <div style="text-align: center; margin: 15px">
            <a class="button" href="#">Edit Info</a>
            <a class="button" href="#">My Booking</a>
            <a class="button" href="ViewCatalogueServlet">View Catalogue</a>
        </div>
    </body>
</html>

