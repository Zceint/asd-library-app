<%-- 
    Document   : index
    Created on : 30/08/2020, 3:17:59 PM
    Author     : kiera
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="uts.asd.lrbs.model.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/styles.css">
        <title>Welcome</title>
    </head>
    <body>
        <header>
            <h1>Library Room Booking System</h1>
            <%
                 User user = (User) session.getAttribute("user");
                if (user != null) {
                    String log = " &lt " + user.getFirstName() + " &gt";

            %>
            <h2>You are logging in as: <%=log%>
        </header>
        
        <div style="text-align: center; margin: 15px">
            <a class="button" href="login.jsp">Login</a>
        </div>
    </body>
</html>
