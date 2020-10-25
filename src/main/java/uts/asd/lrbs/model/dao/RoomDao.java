/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package uts.asd.lrbs.model.dao;

import com.mongodb.MongoClientURI;
import com.mongodb.MongoClient;
import com.mongodb.client.*;
import java.util.ArrayList;
import org.bson.Document;
import uts.asd.lrbs.model.Room;


/**
 *
 * @author Anslie
 */
public class RoomDao {
    
    MongoClient mongoClient;
    MongoDatabase database;
    MongoCollection<Document> collection;
    
    public RoomDao(MongoClient mongoClient) {
        this.mongoClient = mongoClient;
        database = mongoClient.getDatabase("lrbs_database");
        collection = database.getCollection("rooms");
    }
    
    // Not working
    public ArrayList<Room> getRooms() {
        /*
        try (MongoClient mongoClient = MongoClients.create("mongodb+srv://dbuser:dbpass@library-app-cluster.hkgtc.mongodb.net/lrbs_database?retryWrites=true&w=majority")) {
            MongoDatabase lrbsDB = mongoClient.getDatabase("lrbs_database");
            Rooms rooms = new Rooms();
            MongoCollection<Document> roomlist = lrbsDB.getCollection("rooms");
            List<Document> list = roomlist.find().into(new ArrayList<>());
            for (Document doc : list) {
                Room r = new Room((int) doc.get("roomID"), (String) doc.get("location"), (int) doc.get("maxpeople"));
                rooms.addRoom(r);
                System.out.println(r.toString());
            }  
        return rooms; 
        }
    }
*//*
        MongoClientURI uri = new MongoClientURI("mongodb://dbuser:dbpass@library-app-cluster-shard-00-00.hkgtc.mongodb.net:27017,library-app-cluster-shard-00-01.hkgtc.mongodb.net:27017,library-app-cluster-shard-00-02.hkgtc.mongodb.net:27017/lrbs_database?ssl=true&replicaSet=atlas-1obaj2-shard-0&authSource=admin&retryWrites=true&w=majority");
        try (com.mongodb.MongoClient client = new com.mongodb.MongoClient(uri)) {
            MongoDatabase db = client.getDatabase(uri.getDatabase());
            MongoCollection<Document> roomlist = db.getCollection("rooms");
            */
            ArrayList<Room> rooms = new ArrayList<>();
            for (Document doc : collection.find()) {
                Room r = new Room((int) doc.get("roomID"), (String) doc.get("location"), (int) doc.get("maxpeople"));
                rooms.add(r);
                System.out.println(r.toString());
            }
            return rooms;
        }
    }