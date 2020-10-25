/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package uts.asd.lrbs.model.dao;

import com.mongodb.MongoClient;
import com.mongodb.MongoClientURI;
import com.mongodb.client.*;
import static com.mongodb.client.model.Filters.eq;
import java.util.ArrayList;
import org.bson.Document;
import org.bson.conversions.Bson;

/**
 *
 * @author Anslie
 */
public class ReservationDao {
    com.mongodb.MongoClient mongoClient;
    MongoDatabase database;
    MongoCollection<Document> collection;
    
    public ReservationDao(MongoClient mongoClient) {
        this.mongoClient = mongoClient;
        database = mongoClient.getDatabase("lrbs_database");
        collection = database.getCollection("reservations");
    }
    
    public void addReservation(int userID, int roomID, int noPeople, String date, String time, int duration) {
        int count = (int) this.collection.count();
        int reserveID = count + 1;
        Document newReservation = new Document()
                .append("reserveID", reserveID)
                .append("userID", userID)
                .append("roomID", roomID)
                .append("noPeople", noPeople)
                .append("date", date)
                .append("time", time)
                .append("duration", duration);
        this.collection.insertOne(newReservation);
    }
    
    public void cancelReservation(int reserveID) {
        Bson filter = eq("reserveID", reserveID);
        this.collection.deleteOne(filter);
    }
    
}
    
