/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package uts.asd.lrbs.model.dao;

import com.mongodb.MongoClient;
import com.mongodb.client.MongoCollection;
import com.mongodb.client.MongoDatabase;
import static com.mongodb.client.model.Filters.eq;
import org.bson.Document;
import org.bson.types.ObjectId;
import uts.asd.lrbs.model.User;

/**
 *
 * @author kiera
 */
public class UserDao {
    MongoClient mongoClient;
    MongoDatabase database;
    MongoCollection<Document> collection;

    public UserDao(MongoClient mongoClient) {
        this.mongoClient = mongoClient;
        database = mongoClient.getDatabase("lrbs_database");
        collection = database.getCollection("users");
    }
    
    public User getUser() {
        //Document query = new Document("_id", new ObjectId("5f7020dcfc588f83276430d9"));
        //Document result = collection.find(query).iterator().next();
        Document result = collection.find(eq("userID", 101)).first();
        
        User user = new User(
                result.getInteger("userID"), 
                result.getString("firstName"),
                result.getString("lastName"),
                result.getString("email"),
                result.getString("password"),
                result.getBoolean("type"));
        
        return user;
    }
    
    public void addUser(User user) {
        Document newUser = new Document();
        newUser.append("userID", user.getId());
        newUser.append("firstName", user.getFirstName());
        newUser.append("lastName", user.getLastName());
        newUser.append("email", user.getEmail());
        newUser.append("password", user.getPassword());
        newUser.append("type", true);
        collection.insertOne(newUser);
    }

    public MongoDatabase getDatabase() {
        return database;
    }
}
