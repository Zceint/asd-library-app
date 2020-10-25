/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package uts.asd.lrbs.model.dao;

import com.mongodb.MongoClient;
import com.mongodb.MongoClientURI;
import com.mongodb.client.MongoDatabase;

public class MongoDBConnector {
    
    MongoClientURI uri = new MongoClientURI(
    "mongodb+srv://dbuser:dbpass@library-app-cluster.hkgtc.mongodb.net/lrbs_database?retryWrites=true&w=majority");

    MongoClient mongoClient = new MongoClient(uri);
    MongoDatabase database = mongoClient.getDatabase("lrbs_database");
    
    public MongoClient openConnection(){
        return this.mongoClient;
    }
    public void closeConnection() {
        mongoClient.close();
    }
}