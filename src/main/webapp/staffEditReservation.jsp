<%@page import="uts.asd.lrbs.model.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/styles.css">
        <title>Edit Reservation</title>
        <script>
            function toggleEditForm() {
                var editForm = document.getElementById("editForm");
                var updatedTxt = document.getElementById("updatedTxt");
                if (editForm.style.display === "block") {
                    editForm.style.display = "none";
                    updatedTxt.style.display = "none";
                } else {
                    editForm.style.display = "block";
                    updatedTxt.style.display = "none";
                }
            }
            function confirmDelete() {
                var confirmed = confirm("Are you sure you want to delete this User?");
                if (!confirmed) {
                    return false;
                }
            }
            function showMessage() {
                var updatedTxt = document.getElementById("updatedTxt");
                updatedTxt.style.display = "block";
            }
        </script>
        <style>
            td {
                padding: 10px;
                border: 1px solid #444444;
                text-align: center;
            }
            .td2 {
                padding: 10px;
                border: 0;
            }
            .editForm {
                display: none;
            }
        </style>
    </head>
    <body>
        <% 
            Reservation reservation = (Reservation) session.getAttribute("reservation");
        %>
        <header>
            <div style="position: absolute; top: 20px; left: 5px;">
                <a class="button" style="font-size: 17px;" href="libraryRoomManagement.jsp">< Back</a>
            </div>
            <h1>Edit Reservation Details</h1>
            <div style="position: absolute; top: 20px; right: 5px">
                <a class="button" style="font-size: 17px;" href="index.jsp">Logout</a>
            </div>
        </header>
        
        <form action="StaffReservationServlet" method="post">
            <table style="padding: 10px; border-spacing: 5px;">
                <tr>
                    <td class="td2"><input class="inputText" type="text" placeholder="Search Reservation ID.." id="reserveID" name="reserveID" required/></td>
                    <td class="td2"style="padding-left: 0;"><input class="button" type="submit" value="Search"</td>
                    <!--<td class="td2"style="padding-left: 0;"><a class="button" href="editUser.jsp">Search</a></td>-->
                </tr>
            </table>
        </form>
        
        <%  if (reservation != null) { %>
            <table style="border-collapse: collapse; border: 1px solid black;">
                <tr style="background-color: grey; color: white; font-weight: bold;">
                    <td>Reservation ID</td>
                    <td>User ID</td>
                    <td>Room ID</td>
                    <td>No. People</td>
                    <td>Date</td>
                    <td>Time</td>
                    <td>Duration</td>
                </tr>
                <tr style="background-color: #efefef;">
                    <td style="padding: 8px;"><%=reservation.getReserveID()%></td>
                    <td style="padding: 8px;"><%=reservation.getUserID()%></td>
                    <td style="padding: 8px;"><%=reservation.getRoomID()%></td>
                    <td style="padding: 8px;"><%=reservation.getNoPeople()%></td>
                    <td style="padding: 8px;"><%=reservation.getDate()%></td>
                    <td style="padding: 8px;"><%=reservation.getTime()%></td>
                    <td style="padding: 8px;"><%=reservation.getDuration()%></td>
                </tr>
            </table>
                
            <table style="border-spacing: 0; padding: 20px; padding-bottom: 5px;">
                <tr>
                    <td class="td2" style="padding: 0; padding-right: 5px;"><button class="button" onclick="toggleEditForm()">Edit</button></td>
                    <td class="td2" style="padding: 0; padding-left: 5px;">
                        <form id="deleteForm" onsubmit="return confirmDelete();" action="UserServlet" method="post">
                            <input class="button" type="submit" value="Delete">
                            <input style="display: none;" type="text" name="companyName" value="<%=reservation.getReserveID()%>">
                        </form>
                    </td>
                </tr>
            </table>
                
            <form class="editForm" id="editForm" action="UserServlet" method="post">
                <table style="border-spacing: 0; padding-top: 20px; width: 400px;">
                    <tr>
                        <td class="td2"><label for name="noPeople">No. People</label></td>
                        <td class="td2"><input class="inputText" type="text" value="<%=reservation.getNoPeople()%>" id="noPeople" name="noPeople" required/></td>
                    </tr>
                    <tr>
                        <td class="td2"><label for name="date">Date</label></td>
                        <td class="td2"><input class="inputText" type="text" value="<%=reservation.getDate()%>" id="date" name="date" required/></td>
                    </tr>
                    <tr>
                        <td class="td2"><label for name="time">Time</label></td>
                        <td class="td2"><input class="inputText" type="text" value="<%=reservation.getTime()%>" id="time" name="time" required/></td>
                    </tr>
                    <tr>
                        <td class="td2"><label for name="duration">Duration</label></td>
                        <td class="td2"><input class="inputText" type="text" value="<%=reservation.getDuration()%>" id="duration" name="duration" required/></td>
                    </tr>
                </table>
                <input style="margin-bottom: 15px;" class="button" onclick="showMessage()" type="submit" value="Update"></td>

            </form>
        <% } %>
        <p id="updatedTxt" style="color: #333333;"></p>
    </body>
</html>
