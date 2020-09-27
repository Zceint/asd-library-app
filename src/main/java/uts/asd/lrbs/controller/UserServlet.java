/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package uts.asd.lrbs.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import uts.asd.lrbs.model.User;
import uts.asd.lrbs.model.dao.UserDao;

/**
 *
 * @author kiera
 */
public class UserServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        UserController controller = new UserController(session);
        
//        User user = controller.getUser();
//        session.setAttribute("user", user);
//        request.getRequestDispatcher("viewUsers.jsp").include(request, response);
        
//        int userID = Integer.parseInt(request.getParameter("userID"));
//        String firstName = request.getParameter("userID");
//        String lastName = request.getParameter("lastName");
//        String email = request.getParameter("email");
//        String password = request.getParameter("password");
//        boolean type = false;
//        if (request.getParameter("type") != null) {
//            type = true;
//        }
//        
//        User user = new User(userID, firstName, lastName, email, password, type);
//        controller.addUser(user);
//        request.getRequestDispatcher("test.jsp").include(request, response);

        User user = new User(102, "Steve", "John", "steve@gmail.com", "123password", false);
        session.setAttribute("user", user);
        request.getRequestDispatcher("editUser.jsp").include(request, response);
        
    }

}
