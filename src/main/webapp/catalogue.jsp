<%-- 
    Author     : Anslie
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="uts.asd.lrbs.model.Room"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/styles.css">
        <title>Catalogue</title>
        
        <%
            ArrayList<Room> rooms = (ArrayList<Room>) session.getAttribute("roomsList");
        %>
        
        <style>
        table {
        border-collapse: collapse;
        width: 30%;
        }
        table, th, td {
        border: 1px solid black;
        padding: 10px;
        }
        tr:hover {
          background-color: #e9f2f5;
        }
        .space {
        padding: 10px;
        }

        </style>
    </head>
    
    <body>
        <header>
            <h1>Library Room Catalogue</h1>
        </header>
        
        <div style="text-align: center; margin: 15px">
            <a class="button" href="main.jsp">Back</a>
            <a class="button" href="">Make a Reservation</a>
        </div>
        
        <div class="space"></div>
        
        <div style="text-align: center;"> 
            <input type="text" id="inputPeople" onkeyup="filterPeople()" placeholder="Filter by max people">
        </div>
        
        <div style="text-align: center;"> 
            <input type="text" id="inputLocation" onkeyup="filterLocation()" placeholder="Filter by location">
        </div>
        
        <div><p>Hover over room id to view details</p></div>
        
        <script>
            function filterPeople() {

            var input, filter, table, tr, td, i, people;
            input = document.getElementById("inputPeople");
            filter = input.value;
            table = document.getElementById("rooms");
            tr = table.getElementsByTagName("tr");

            for (i = 0; i < tr.length; i++) {
            td = tr[i].getElementsByTagName("td")[2];
            if (td) {
            people = td.textContent || td.innerText;
            if (people.indexOf(filter) > -1) {
            tr[i].style.display = "";
                } else {
            tr[i].style.display = "none";
                }
            }
        }
    }
        </script>
        <script>
            function filterLocation() {

            var input, filter, table, tr, td, i, level;
            input = document.getElementById("inputLocation");
            filter = input.value;
            table = document.getElementById("rooms");
            tr = table.getElementsByTagName("tr");

            for (i = 0; i < tr.length; i++) {
            td = tr[i].getElementsByTagName("td")[1];
            if (td) {
            level = td.textContent || td.innerText;
            if (level.indexOf(filter) > -1) {
            tr[i].style.display = "";
                } else {
            tr[i].style.display = "none";
                }
            }
        }
    }
        </script>
        
        <!-- 
            Will display table with database values once it has been set up
        -->
        
        <table id="rooms">
            <tr>
                <th>Room ID</th>
                <th>Location</th>
                <th>Max People</th>
            </tr>
            <tr>
                <td title="Contains computer">101</td>
                <td>L1</td>
                <td>6</td>
            </tr>
            <tr>
                <td title="Contains tv">102</td>
                <td>L1</td>
                <td>6</td>
            </tr>
            <tr>
                <td title="Contains tv">103</td>
                <td>L1</td>
                <td>4</td>
            </tr>
            <tr>
                <td title="No special equipment">104</td>
                <td>L1</td>
                <td>4</td>
            </tr>
            <tr>
                <td title="Contains computer, tv">105</td>
                <td>L1</td>
                <td>8</td>
            </tr>
            <tr>
                <td title="Contains computer, projector">201</td>
                <td>L2</td>
                <td>10</td>
            </tr>
            <tr>
                <td title="Contains computer, tv">202</td>
                <td>L2</td>
                <td>10</td>
            </tr>
            <tr>
                <td title="Contains computer, projector">203</td>
                <td>L2</td>
                <td>10</td>
            </tr>
            <tr>
                <td title="Contains whiteboard, tv">204</td>
                <td>L2</td>
                <td>6</td>
            </tr>
            <tr>
                <td title="Contains tv">205</td>
                <td>L2</td>
                <td>6</td>
            </tr>
            <tr>
                <td title="Contains whiteboard">301</td>
                <td>L3</td>
                <td>5</td>
            </tr>
            <tr>
                <td title="No special equipment">302</td>
                <td>L3</td>
                <td>4</td>
            </tr>
            <tr>
                <td title="Contains projector">303</td>
                <td>L3</td>
                <td>4</td>
            </tr>
            <tr>
                <td title="Contains projector">304</td>
                <td>L3</td>
                <td>6</td>
            </tr>
            <tr>
                <td title="Contains computer, projector">401</td>
                <td>L4</td>
                <td>6</td>
            </tr>
            <tr>
                <td title="Contains tv">402</td>
                <td>L4</td>
                <td>6</td>
            </tr>
            <tr>
                <td title="Contains tv">403</td>
                <td>L4</td>
                <td>5</td>
            </tr>
            <tr>
                <td title="Contains computer">501</td>
                <td>L5</td>
                <td>3</td>
            </tr>
            <tr>
                <td title="Contains computer">502</td>
                <td>L5</td>
                <td>3</td>
            </tr>
            <tr>
                <td title="No special equipment">503</td>
                <td>L5</td>
                <td>3</td>
            </tr>
        </table>
        
        <div class="space"></div>
    </body>
</html>
