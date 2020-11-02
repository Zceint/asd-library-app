<%-- 
    Document   : register
    Created on : 03/11/2020, 4:38:02 AM
    Author     : Zce
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Register</title>
        <link rel="stylesheet" href="css/styles.css">
        
    </head>
    <body>
        <header>
            <h1>Register</h1>
            <div style="position: absolute; top: 20px; right: 5px;">
                <a class="button" style="font-size: 16px" href="index.jsp">Home</a>
            </div>
        </header>       
        
        <form action="#">
          <div style = "padding : 40px 400px">
            <p>Please fill in this form to create an account.</p>
            <hr>

            <label for="firstName"><b>First Name</b></label>
            <input type="text" placeholder="Enter First Name" name="firstName" id="firstName" required>
            
            <label for="lastName"><b>Last Name</b></label>
            <input type="text" placeholder="Enter Email" name="lastName" id="lastName" required>
            
            <label for="email"><b>Email</b></label>
            <input type="text" placeholder="Enter Email" name="email" id="email" required>

            <label for="psw"><b>Password</b></label>
            <input type="password" placeholder="Enter Password" name="psw" id="psw" required>

            <label for="psw-repeat"><b>Repeat Password</b></label>
            <input type="password" placeholder="Repeat Password" name="psw-repeat" id="psw-repeat" required>
            <hr>

            <p>By creating an account you agree to our Terms & Privacy.</p>
            <button class="button" type="submit">Register</button>
          </div>

          <div >
            <p>Already have an account? <a class="button" href="login.jsp">Sign in</a>.</p>
          </div>
        </form>
    </body>
</html>
