/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package uts.asd.lrbs.controller;

import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import uts.asd.lrbs.model.Reservation;
import uts.asd.lrbs.model.User;
import uts.asd.lrbs.model.dao.ReservationDao;

/**
 *
 * @author Anslie
 */
public class ReservationServlet extends HttpServlet {
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException
    {
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("user");
        //int userID = user.getId();
        int userID = 101;
        ReservationDao reservationDao = (ReservationDao) session.getAttribute("reservationDao");
        int roomID = Integer.parseInt(request.getParameter("roomID"));
        int noPeople = Integer.parseInt(request.getParameter("noPeople"));
        String date = request.getParameter("date");
        String time = request.getParameter("time");
        int duration = Integer.parseInt(request.getParameter("duration"));
        
        //reservationDao.addReservation(userID, roomID, noPeople, date, time, duration);
        
        session.setAttribute("roomID", roomID);
        session.setAttribute("noPeople", noPeople);
        session.setAttribute("date", date);
        session.setAttribute("time", time);
        session.setAttribute("duration", duration);
        request.getRequestDispatcher("confirmation.jsp").include(request, response);
        
    }
    
}
