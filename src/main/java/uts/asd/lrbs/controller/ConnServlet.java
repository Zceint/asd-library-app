/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package uts.asd.lrbs.controller;

import com.mongodb.MongoClient;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import uts.asd.lrbs.model.dao.MongoDBConnector;
import uts.asd.lrbs.model.dao.UserDao;

/**
 *
 * @author kiera
 */
public class ConnServlet extends HttpServlet {

    private MongoDBConnector mongoDbConnector;  
    private MongoClient mongoClient;
   
    
    @Override //Create and instance of DBConnector for the deployment session
    public void init() {
        mongoDbConnector = new MongoDBConnector();
        mongoClient = mongoDbConnector.openConnection();
    }
    
    @Override 
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        
        UserDao userDao = new UserDao(mongoClient);        
        session.setAttribute("userDao", userDao);   
    }
    
    @Override //Destroy the servlet and release the resources of the application
     public void destroy() {
         mongoClient.close();
    }

}
