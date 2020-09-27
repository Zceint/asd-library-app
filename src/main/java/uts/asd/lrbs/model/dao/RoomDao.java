/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package uts.asd.lrbs.model.dao;

import com.mongodb.client.*;
import java.util.ArrayList;
import java.util.List;
import org.bson.Document;
import uts.asd.lrbs.model.Room;
import uts.asd.lrbs.model.Rooms;

/**
 *
 * @author Anslie
 */
public class RoomDao {
    
    // Not working
    public Rooms getRooms() {
        try (MongoClient mongoClient = MongoClients.create("mongodb+srv://dbuser:dbpass@library-app-cluster.hkgtc.mongodb.net/lrbs_database?retryWrites=true&w=majority")) {
            MongoDatabase lrbsDB = mongoClient.getDatabase("lrbs_database");
            Rooms rooms;
            rooms = new Rooms();
            MongoCollection<Document> roomlist = lrbsDB.getCollection("rooms");
            List<Document> list = roomlist.find().into(new ArrayList<>());
            for (Document doc : list) {
                Room r = new Room((int) doc.get("roomID"), (String) doc.get("location"), (int) doc.get("maxpeople"));
                rooms.addRoom(r);
                //System.out.println(r.toString());
            }
        return rooms; 
        }
    }
}


    

    
