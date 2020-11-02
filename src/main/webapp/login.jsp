<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/styles.css">
        <title>Login</title>
    </head>
    <body>
        <header>
            <h1>Login</h1>
            <div style="position: absolute; top: 20px; right: 5px;">
                <a class="button" style="font-size: 16px" href="index.jsp">Home</a>
            </div>
        </header>
        
        <form action="main.jsp" method="POST">
            <table>
                <tr>
                    <td><label for="email">Email</label></td>
                    <td><input class="inputText" type="text" placeholder="Enter email.." id="email" name="email" required/></td>
                </tr>
                <tr>
                    <td><label for="password">Password</label></td>
                    <td><input class="inputText" type="password" placeholder="Enter password.." id="password" name="password" required/></td>
                </tr>
            </table>
            <div style="text-align: center; margin-bottom: 20px;">
                <a class="button" href="register.jsp">Register</a>
                <input class="button" type="submit" value="Login">
                <a class="button" href="staffMain.jsp">Staff Login (test)</a>
            </div>
        </form>
    </body>
</html>

