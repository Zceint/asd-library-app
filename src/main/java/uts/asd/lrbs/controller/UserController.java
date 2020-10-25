/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package uts.asd.lrbs.controller;

import javax.servlet.http.HttpSession;
import uts.asd.lrbs.model.User;
import uts.asd.lrbs.model.dao.UserDao;

/**
 *
 * @author kiera
 */
public class UserController {
    private UserDao userDao;
    
    public UserController(HttpSession session) {
        userDao = (UserDao)session.getAttribute("userDao");
    }
    
    public void addUser(User user) {
        userDao.addUser(user);
    }
}
