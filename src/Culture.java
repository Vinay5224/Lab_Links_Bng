import java.io.IOException;
import java.util.Arrays;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mongodb.BasicDBObject;
import com.mongodb.DB;
import com.mongodb.DBCollection;
import com.mongodb.DBCursor;
import com.mongodb.MongoClient;
import com.mongodb.MongoCredential;
import com.mongodb.ServerAddress;
import com.util.Util;

@WebServlet("/Culture")
public class Culture extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public Culture() {
		super();

	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String mc = request.getParameter("mc");
		String org = request.getParameter("org");
		String dat = request.getParameter("dat");

		/*
		 * MongoClient mongoClient = new MongoClient( "localhost" , 27212 ); DB
		 * db = mongoClient.getDB( "MicrobialDB" );
		 * 
		 * DBCollection coll = db.getCollection("microbialColl");
		 */
	/*	MongoCredential credential = MongoCredential.createCredential("exafMicrobial", "MicrobialDB",
				"exafMicrobial123".toCharArray());
		MongoClient mongoClient = new MongoClient(new ServerAddress("localhost", 27212), Arrays.asList(credential));

		DB db = mongoClient.getDB("MicrobialDB");

		DBCollection coll = db.getCollection("microbialColl");*/
		
		
		Util utilObj=new Util();
		MongoClient mongoClient;
		DB db;
		mongoClient=utilObj.getMongoClient();
		db=utilObj.getDb();
		DBCollection coll = utilObj.getMicroCellColl();
		
		BasicDBObject doc = new BasicDBObject("mc", mc).append("mc_Date", dat).append("nameOfOrganism", org);

		DBCursor cur = coll.find(doc);
		if (cur.hasNext()) {
			mongoClient.close();
			response.getWriter().write("1");

		} else {

			BasicDBObject doc1 = new BasicDBObject("mc", mc);
			DBCursor cur1 = coll.find(doc1);
			
			if (cur1.hasNext()) {
				mongoClient.close();
				utilObj.serverMongoClient.close();
				response.getWriter().write("11");
			} else {
				mongoClient.close();
				utilObj.serverMongoClient.close();
				response.getWriter().write("0");
			}

		}

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doGet(request, response);

		response.getWriter().append("Served at:ww ").append(request.getContextPath());
	}

}
