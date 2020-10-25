/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package uts.asd.lrbs.controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import uts.asd.lrbs.model.Rooms;
import uts.asd.lrbs.model.dao.RoomDao;

/**
 *
 * @author Anslie
 */
public class ViewCatalogueServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException
    {
        HttpSession session = request.getSession();
        RoomDao roomDao = new RoomDao();
        Rooms rooms;
        
        try {
            rooms = roomDao.getRooms();
            //session.setAttribute("roomsList", rooms);
            request.getRequestDispatcher("catalogue.jsp").include(request, response);
        }
        catch (NullPointerException ex) {
            Logger.getLogger(ViewCatalogueServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
}
