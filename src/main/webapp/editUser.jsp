<%@page import="uts.asd.lrbs.model.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/styles.css">
        <title>Edit User</title>
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
            User user = (User) session.getAttribute("user");
        %>
        <header>
            <div style="position: absolute; top: 20px; left: 5px;">
                <a class="button" style="font-size: 17px;" href="userManagement.jsp">< Back</a>
            </div>
            <h1>Edit User Information</h1>
            <div style="position: absolute; top: 20px; right: 5px">
                <a class="button" style="font-size: 17px;" href="index.jsp">Logout</a>
            </div>
        </header>
        
        <form action="UserServlet" method="post">
            <table style="padding: 10px; border-spacing: 5px;">
                <tr>
                    <td class="td2"><input class="inputText" type="text" placeholder="Search User Email.." id="email" name="email" required/></td>
                    <td class="td2"style="padding-left: 0;"><input class="button" type="submit" value="Search"</td>
                    <!--<td class="td2"style="padding-left: 0;"><a class="button" href="editUser.jsp">Search</a></td>-->
                </tr>
            </table>
        </form>
        
        <%  if (user != null) { %>
            <table style="border-collapse: collapse; border: 1px solid black;">
                <tr style="background-color: grey; color: white; font-weight: bold;">
                    <td>User ID</td>
                    <td>First Name</td>
                    <td>Last Name</td>
                    <td>Email</td>
                    <td>Password</td>
                    <td>Type</td>
                </tr>
                <tr style="background-color: #efefef;">
                    <td style="padding: 8px;"><%=user.getId()%></td>
                    <td style="padding: 8px;"><%=user.getFirstName()%></td>
                    <td style="padding: 8px;"><%=user.getLastName()%></td>
                    <td style="padding: 8px;"><%=user.getEmail()%></td>
                    <td style="padding: 8px;"><%=user.getPassword()%></td>
                    <td style="padding: 8px;">Staff</td>
                </tr>
            </table>
                
            <table style="border-spacing: 0; padding: 20px; padding-bottom: 5px;">
                <tr>
                    <td class="td2" style="padding: 0; padding-right: 5px;"><button class="button" onclick="toggleEditForm()">Edit</button></td>
                    <td class="td2" style="padding: 0; padding-left: 5px;">
                        <form id="deleteForm" onsubmit="return confirmDelete();" action="UserServlet" method="post">
                            <input class="button" type="submit" value="Delete">
                            <input style="display: none;" type="text" name="companyName" value="<%=user.getEmail()%>">
                        </form>
                    </td>
                </tr>
            </table>
                
            <form class="editForm" id="editForm" action="UserServlet" method="post">
                <table style="border-spacing: 0; padding-top: 20px; width: 400px;">
                    <tr>
                        <td class="td2" style="padding-top: 0;"><label for name="userID">User ID</label></td>
                        <td class="td2" style="padding-top: 0;"><input class="inputText" type="text" value="<%=user.getId()%>" id="userID" name="userID" required/></td>
                    </tr>
                    <tr>
                        <td class="td2"><label for name="firstName">First Name</label></td>
                        <td class="td2"><input class="inputText" type="text" value="<%=user.getFirstName()%>" id="firstName" name="firstName" required/></td>
                    </tr>
                    <tr>
                        <td class="td2"><label for name="lastName">Last Name</label></td>
                        <td class="td2"><input class="inputText" type="text" value="<%=user.getLastName()%>" id="lastName" name="lastName" required/></td>
                    </tr>
                    <tr>
                        <td class="td2"><label for name="email">Email</label></td>
                        <td class="td2"><input class="inputText" type="text" value="<%=user.getEmail()%>" id="email" name="email" required/></td>
                    </tr>
                    <tr>
                        <td class="td2"><label for name="password">Password</label></td>
                        <td class="td2"><input class="inputText" type="text" value="<%=user.getPassword()%>" id="password" name="password" required/></td>
                    </tr>
                    <tr>
                        <td class="td2"><label for name="type">Type</label></td>
                        <td class="td2"><input class="inputText" type="checkbox" id="status" <% if (!user.getType()) { %> checked <% } %> name="type"/></td>
                    </tr>
                </table>
                <input style="margin-bottom: 15px;" class="button" onclick="showMessage()" type="submit" value="Update"></td>

            </form>
        <% } %>
        <p id="updatedTxt" style="color: #333333;"></p>
    </body>
</html>
