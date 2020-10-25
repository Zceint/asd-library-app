<%-- 
    Author     : Anslie
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="uts.asd.lrbs.model.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/styles.css">
        <title>Make a Reservation</title>
    </head>
    
    <style>
    .space {
        padding: 10px;
    }
    </style>
    
    <%
        User user = (User) session.getAttribute("user");
    %>
    
    <body>
        <header>
            <h1>Make a Reservation</h1>
        </header>
        
        <div style="text-align: center; margin: 15px">
            <a class="button" href="main.jsp">Main</a>
            <a class="button" href="ViewCatalogueServlet">Catalogue</a>
        </div>
        <div class="space"></div>
        
        <form method="post" action="ReservationServlet">
            <table>
                <tr>
                    <td><label for = "roomID">Room</label></td>
                    <td><select id="roomID" name="roomID">
                        <option value="101">101</option>
                        <option value="102">102</option>
                        <option value="103">103</option>
                        <option value="104">104</option>
                        <option value="105">105</option>
                        <option value="106">106</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td><label for="noPeople">Number of people </label></td>
                    <td><input class="inputText" type="number" id="noPeople" name="noPeople" min="1" max="12" required/></td>
                </tr>
                <tr>
                    <td><label for="date">Date</label></td>
                    <td><input class="inputText" type="date" id="date" name="date" min="2020-10-01" max="2020-11-30" required/></td>
                </tr>
                <tr>
                    <td><label for="time">Time</label></td>
                    <td><select id="time" name="time">
                        <option value="10:00">10:00</option>
                        <option value="11:00">11:00</option>
                        <option value="12:00">12:00</option>
                        <option value="13:00">13:00</option>
                        <option value="14:00">14:00</option>
                        <option value="15:00">15:00</option>
                        <option value="16:00">16:00</option>
                        <option value="17:00">17:00</option>
                        <option value="18:00">18:00</option>
                        <option value="19:00">19:00</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td><label for="duration">Duration</label></td>
                    <td>
                        <select id="duration" name="duration">
                            <option value="1">1</option>
                            <option value="2">2</option>
                        </select>
                    </td>
                </tr>
            </table>
            <div style="text-align: center; margin-bottom: 20px;">
                    <input type="submit" class="button" name="submit" value="Submit" />
            </div>
        </form>
        
    </body>
</html>
