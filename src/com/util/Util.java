package com.util;
import java.util.Arrays;

import javax.annotation.PostConstruct;

import com.mongodb.DB;
import com.mongodb.DBCollection;
import com.mongodb.MongoClient;
import com.mongodb.MongoCredential;
import com.mongodb.ServerAddress;

public class Util {

	public static MongoClient mongoClient;
	public static MongoClient serverMongoClient;
	public static DB db;
	public static DBCollection torocelColl;
	public static DBCollection microCellColl;
	
	public static MongoCredential credential ;

	public Util() {
		
		
		credential = MongoCredential.createCredential("microbialMongoDB", "Microbial","Microbial123@".toCharArray());
		mongoClient = new MongoClient(new ServerAddress("104.238.100.71", 27212), Arrays.asList(credential));
		//mongoClient = new MongoClient("localhost", 27017);
		serverMongoClient=new MongoClient("104.238.100.71", 27212);
		//serverMongoClient=new MongoClient("localhost", 27017);
		db = mongoClient.getDB("Microbial"); //Server Db port number 27212 Microbial
		 
		torocelColl = db.getCollection("torocell");  // server torocell
		//MongoClient mongoClient=new MongoClient("localhost", 27017);
	 
		microCellColl=db.getCollection("microbialColl");
 
	}
	@PostConstruct
	public void init()
	{

		credential = MongoCredential.createCredential("microbialMongoDB", "Microbial","Microbial123@".toCharArray());
		mongoClient = new MongoClient(new ServerAddress("104.238.100.71", 27212), Arrays.asList(credential));
		//mongoClient = new MongoClient("localhost", 27017);
		serverMongoClient=new MongoClient("104.238.100.71", 27212);
		//serverMongoClient=new MongoClient("localhost", 27017);
		db = mongoClient.getDB("Microbial"); //Server Db port number 27212 Microbial
		 
		torocelColl = db.getCollection("torocell");  // server torocell
		//MongoClient mongoClient=new MongoClient("localhost", 27017);
	 
		microCellColl=db.getCollection("microbialColl");
				
		
		
	}
	public static MongoClient getMongoClient() {
		return mongoClient;
	}
	public static void setMongoClient(MongoClient mongoClient) {
		Util.mongoClient = mongoClient;
	}
	public static MongoClient getServerMongoClient() {
		return serverMongoClient;
	}
	public static void setServerMongoClient(MongoClient serverMongoClient) {
		Util.serverMongoClient = serverMongoClient;
	}
	public static DB getDb() {
		return db;
	}
	public static void setDb(DB db) {
		Util.db = db;
	}
	public static DBCollection getTorocelColl() {
		return torocelColl;
	}
	public static void setTorocelColl(DBCollection torocelColl) {
		Util.torocelColl = torocelColl;
	}
	public static DBCollection getMicroCellColl() {
		return microCellColl;
	}
	public static void setMicroCellColl(DBCollection microCellColl) {
		Util.microCellColl = microCellColl;
	}
	public static MongoCredential getCredential() {
		return credential;
	}
	public static void setCredential(MongoCredential credential) {
		Util.credential = credential;
	}

}
