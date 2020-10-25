<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="uts.asd.lrbs.model.User"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/styles.css">
        <title>Add Supplier</title>
    </head>
    <body>
        <% 
            User user = (User) session.getAttribute("user");
        %>
        <header>
            <div style="position: absolute; top: 20px; left: 5px;">
                <a class="button" style="font-size: 17px;" href="userManagement.jsp">< Back</a>
            </div>
            <h1>Add User</h1>
            <div style="position: absolute; top: 20px; right: 5px;">
                <a class="button" style="font-size: 17px" href="index.jsp">Logout</a>
            </div>
        </header>
        
        <form action="UserServlet" method="post">
            <table>
                <tr>
                    <td><label for name="userID">User ID</label></td>
                    <td><input class="inputText" type="text" id="userID" name="userID" required/></td>
                </tr>
                <tr>
                    <td><label for name="firstName">First Name</label></td>
                    <td><input class="inputText" type="text" id="firstName" name="firstName" required/></td>
                </tr>
                <tr>
                    <td><label for name="lastName">Last Name</label></td>
                    <td><input class="inputText" type="text" id="lastName" name="lastName" required/></td>
                </tr>
                <tr>
                    <td><label for name="email">Email</label></td>
                    <td><input class="inputText" type="text" id="email" name="email" required/></td>
                </tr>
                <tr>
                    <td><label for name="password">Password</label></td>
                    <td><input class="inputText" type="password" id="password" name="password" required/></td>
                </tr>
                <tr>
                    <td><label for name="type">Customer ?</label></td>
                    <td><input class="inputText" type="checkbox" id="type" name="type"/></td>
                </tr>
            </table>
            <div style="text-align: center; margin-bottom: 20px;">
                <a class="button" href="userManagement.jsp">Cancel</a>
                <input class="button" type="submit" value="Add">
            </div>
        </form>
    </body>
</html>

