/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package uts.asd.lrbs.model;

/**
 *
 * @author Anslie
 */
public class Reservation {

    private int reserveID;
    private int userID;
    private int roomID;
    private int noPeople;
    private String date;
    private String time;
    private int duration;
    
    public Reservation(int reserveID, int userID, int roomID, int noPeople, String date, String time, int duration) {
        this.reserveID = reserveID;
        this.userID = userID;
        this.roomID = roomID;
        this.noPeople = noPeople;
        this.date = date;
        this.time = time;
        this.duration = duration;
    }
    
    public int getReserveID() {
        return reserveID;
    }

    public void setReserveID(int reserveID) {
        this.reserveID = reserveID;
    }

    public int getUserID() {
        return userID;
    }

    public void setUserID(int userID) {
        this.userID = userID;
    }

    public int getRoomID() {
        return roomID;
    }

    public void setRoomID(int roomID) {
        this.roomID = roomID;
    }

    public int getNoPeople() {
        return noPeople;
    }

    public void setNoPeople(int noPeople) {
        this.noPeople = noPeople;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public String getTime() {
        return time;
    }

    public void setTime(String time) {
        this.time = time;
    }

    public int getDuration() {
        return duration;
    }

    public void setDuration(int duration) {
        this.duration = duration;
    }
    
    
}
