

import java.io.IOException;
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
import com.util.Util;

/**
 * Servlet implementation class ViewRec
 */
@WebServlet("/ViewRec")
public class ViewRec extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ViewRec() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		 

		
		String ID = request.getParameter("ID");
		String datee = request.getParameter("datee");
		String f="";
		
		
		
		if(request.getParameter("f").toString().equals("true"))
		{
		 f= "on";
		}
		else
		{
			f="false";
		}
		String g="";
		if(request.getParameter("g").toString().equals("true"))
		{
		g= "on";
		}
		else
		{
			g="false";
		}
	
		
		Util utilObj=new Util();
		/*MongoClient mongoClient = new MongoClient("localhost",27017);
		DB db = mongoClient.getDB("Microbial");
		BasicDBObject whereQuery = new BasicDBObject();
		DBCollection coll = db.getCollection("torocell"); 
		
		*/
		MongoClient mongoClient = utilObj.getMongoClient();
		DB db=utilObj.getDb();
		BasicDBObject whereQuery = new BasicDBObject();
		DBCollection coll=utilObj.getTorocelColl();
		
		BasicDBObject doc = new BasicDBObject();
		doc.append("tcc", ID.trim());
		doc.append("date", datee.trim());
		doc.append("pp_ss_Micromatrix", g);
		doc.append("pvc_pp_gl_ss_suspension", f);
		
		 
		DBCursor cur = coll.find(doc);
		/*mongoClient.close();*/
		if (cur.hasNext()) {
			mongoClient.close();
			utilObj.serverMongoClient.close();
			response.getWriter().write("1");
			}else{
				mongoClient.close();
				utilObj.serverMongoClient.close();
				response.getWriter().write("0");
			}
 

		
		/*
		 

			
			String ID = request.getParameter("ID");
			String datee = request.getParameter("datee");
			String f="";
			if(request.getParameter("f").toString().equals("true"))
			{
			 f= "on";
			}
			else
			{
				f="false";
			}
			String g="";
			if(request.getParameter("g").toString().equals("true"))
			{
			g= "on";
			}
			else
			{
				g="false";
			}
			System.out.println("ID="+ID);
		
			System.out.println("datee="+datee);
			System.out.println("f="+f);
			System.out.println("g="+g);
			
			MongoClient mongoClient = new MongoClient("localhost",27017);
			DB db = mongoClient.getDB("Session2");
			BasicDBObject whereQuery = new BasicDBObject();
			DBCollection coll = db.getCollection("mycol"); 
			
			BasicDBObject doc = new BasicDBObject();
			doc.put("tcc", ID.trim());
			doc.put("date", datee.trim());
			doc.put("pp_ss_Micromatrix", g);
			doc.put("pvc_pp_gl_ss_suspension", f);
			
			 System.out.println("doc="+doc);
			DBCursor cur = coll.find(doc);
			if (cur.hasNext()) {
				response.getWriter().write("1");
				}else{
					response.getWriter().write("0");
				}
	 */

		
	 
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
