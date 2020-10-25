/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package uts.asd.lrbs.controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import uts.asd.lrbs.model.Reservation;

/**
 *
 * @author kiera
 */
public class StaffReservationServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        
        Reservation reservation = new Reservation(301, 102, 202, 2, "01/11/20", "17:00", 2);
        session.setAttribute("reservation", reservation);
        request.getRequestDispatcher("staffEditReservation.jsp").include(request, response);
    }
}
