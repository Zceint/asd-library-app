/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package uts.asd.lrbs.model;

import java.io.Serializable;
import java.util.ArrayList;

/**
 *
 * @author Anslie
 */
public class Rooms implements Serializable{
    
     private ArrayList<Room> list = new ArrayList<>();
     
     public Rooms() {
    }
     
     public ArrayList<Room> getList() {
        return list;
    }
     
     public void addRoom(Room room) {
        list.add(room);
    }
     
}
