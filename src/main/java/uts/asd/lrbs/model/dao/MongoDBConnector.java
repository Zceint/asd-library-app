/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package uts.asd.lrbs.model.dao;

import com.mongodb.MongoClient;
import com.mongodb.MongoClientOptions;
import com.mongodb.MongoClientURI;
import com.mongodb.client.MongoCollection;
import com.mongodb.client.MongoDatabase;
import java.net.UnknownHostException;
import org.bson.Document;
import org.bson.types.ObjectId;

public class MongoDBConnector {
    
    public MongoClient mongoClient;
    
    public MongoDBConnector() throws UnknownHostException {
        MongoClientURI uri = new MongoClientURI(
            "mongodb+srv://dbuser:dbpass@library-app-cluster.hkgtc.mongodb.net/lrbs_database?retryWrites=true&w=majority");
        mongoClient = new MongoClient(uri);
        //MongoClientOptions.builder().sslEnabled(true).sslInvalidHostNameAllowed(true).build();
    }
//    public static void main(String[] args) {
//        
//        MongoClientURI uri = new MongoClientURI(
//            "mongodb+srv://dbuser:dbpass@library-app-cluster.hkgtc.mongodb.net/lrbs_database?retryWrites=true&w=majority");
//
//        try (MongoClient mongoClient = new MongoClient(uri)) {
//            MongoDatabase database = mongoClient.getDatabase("lrbs_database");
//            MongoCollection<Document> users = database.getCollection("users");
            
//            Document user = new Document("_id", new ObjectId());
//            user.append("userID", 104)
//                .append("firstName", "test")
//                .append("lastName", "test")
//                .append("email", "test@gmail.com")
//                .append("password", "test123")
//                .append("type", false);
//            
//            users.insertOne(user);
//        }
//    }
    
    public MongoClient openConnection(){
        return this.mongoClient;
    }
    public void closeConnection() {
        this.mongoClient.close();
    }
}
