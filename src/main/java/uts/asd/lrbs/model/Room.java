/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package uts.asd.lrbs.model;

import java.io.Serializable;

/**
 *
 * @author Anslie
 */
public class Room implements Serializable  {
    
    private int roomID;
    private String location;
    private int maxPeople;
    //private boolean isAvailable;
    
    public Room(int roomID, String location, int maxPeople) {
        this.roomID = roomID;
        this.location = location;
        this.maxPeople = maxPeople;
    }
    
    public int getRoomID() {
        return roomID;
    }

    public void setRoomID(int roomID) {
        this.roomID = roomID;
    }

    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location;
    }

    public int getMaxPeople() {
        return maxPeople;
    }

    public void setMaxPeople(int maxPeople) {
        this.maxPeople = maxPeople;
    }
    
}
