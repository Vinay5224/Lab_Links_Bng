

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.Instant;
import java.util.Date;
import java.util.Set;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.joda.time.DateTime;

import com.mongodb.BasicDBObject;
import com.mongodb.DB;
import com.mongodb.DBCollection;
import com.mongodb.DBCursor;
import com.mongodb.DBObject;
import com.mongodb.MongoClient;
import com.util.Util;

/**
 * Servlet implementation class SysncDb
 */
@WebServlet("/SysncDb")
public class SysncDb extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SysncDb() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
				
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
			
		
		if(request.getParameter("MicrobialsyncDb")!=null)
		{
			
			
			
			/*
			Util utilObj=new Util();
			MongoClient mongoClient;
			MongoClient serverSideClient;
			DB db;
			DB db2;
			mongoClient=utilObj.getMongoClient();
			db=utilObj.getDb();
			db2 =utilObj.getClientDb();
			
			Client to Server start here
	         DBCollection coll2 = utilObj.getMicroCellColl();
	         Set<String> colls = utilObj.getDb().getCollectionNames();
	         
	         for (String s : colls) {		
	        	 
		       if(s.equals("microbialColl"))
		         {		        	 
		        	 DBCollection coll = db.getCollection(s);
		        	 DBCursor cursor = coll.find();
		        	 while (cursor.hasNext()) {		        		 
		        		 DBObject obj=cursor.next();		        		
		        		 BasicDBObject dbObj=new BasicDBObject();
		        		 dbObj.put("mc", obj.get("mc"));
		        		 dbObj.put("mc_Date", obj.get("mc_Date"));
		        		 dbObj.put("nameOfOrganism", obj.get("nameOfOrganism"));
						 DBCursor serverCursur=utilObj.getClientColl().find(dbObj);
						 //System.out.println("serverCursur="+serverCursur.hasNext());						 
						if(serverCursur.hasNext())
						{
							SimpleDateFormat sd = new SimpleDateFormat("MM/dd/YYYY G 'at' HH:mm:ss z");
							
							DBObject clientObj=serverCursur.next();
							DBObject checObj=obj;
							try {
								Date checObjModiFy = sd.parse(checObj.get("ModifiedDate").toString());
								Date objModiFy = sd.parse(clientObj.get("ModifiedDate").toString());
								if(checObjModiFy.compareTo(objModiFy)>0)
								{
									
									
									utilObj.getClientColl().update(dbObj, checObj);	
									 
								}
							} catch (ParseException e) {
								// TODO Auto-generated catch block
								e.printStackTrace();
							}
							
							
						}
						else {						
						
							
							DBObject checObj=obj;	
							utilObj.getClientColl().save(checObj);
						}
					}
		        	 
		        	 
		         }
		         }

	         client to server end here

	         DBCollection coll3 = utilObj.getClientColl();
	         Set<String> colls4 = utilObj.getClientDb().getCollectionNames();
	         
	         for (String s : colls4) {		
	        	 
		       if(s.equals("microbialColl"))
		         {		        	 
		        	 DBCollection coll = db2.getCollection(s);
		        	 DBCursor cursor = coll.find();
		        	 while (cursor.hasNext()) {		        		 
		        		 DBObject obj=cursor.next();		        		
		        		 BasicDBObject dbObj=new BasicDBObject();
		        		 dbObj.put("mc", obj.get("mc"));
		        		 dbObj.put("mc_Date", obj.get("mc_Date"));
		        		 dbObj.put("nameOfOrganism", obj.get("nameOfOrganism"));
						 DBCursor serverCursur=utilObj.getMicroCellColl().find(dbObj);
						 //System.out.println("serverCursur="+serverCursur.hasNext());						 
						if(serverCursur.hasNext())
						{
							System.out.println("Inside Update"+serverCursur.next());
							DBObject checObj=obj;							
							 System.out.println("checObj="+checObj);
								System.out.println("ipdate greater");
								utilObj.getMicroCellColl().update(dbObj, checObj);	
							 
							
							SimpleDateFormat sd = new SimpleDateFormat("MM/dd/YYYY G 'at' HH:mm:ss z");
							
							DBObject clientObj=serverCursur.next();
							DBObject checObj=obj;
							try {
								Date checObjModiFy = sd.parse(checObj.get("ModifiedDate").toString());
								Date objModiFy = sd.parse(clientObj.get("ModifiedDate").toString());
								if(checObjModiFy.compareTo(objModiFy)>0)
								{
									utilObj.getMicroCellColl().update(dbObj, checObj);	
									 
								}
							} catch (ParseException e) {
								// TODO Auto-generated catch block
								e.printStackTrace();
							}
							
							
						}
						else {						
						
							
							DBObject checObj=obj;	
							utilObj.getMicroCellColl().save(checObj);
						}
					}
		        	 
		        	 
		         }
		         }

	         
	         Server to client start here
	         
	         
	         
	         server to client end here*/
	         
	         
			
		}
		if(request.getParameter("syncDb")!=null)
		{
			/*System.out.println("SynDb");
			Util utilObj=new Util();
			MongoClient mongoClient;
			MongoClient serverSideClient;
			DB db;
			DB db2;
			mongoClient=utilObj.getMongoClient();
			db=utilObj.getDb();
			db2 =utilObj.getClientDb();  
			
			Client to Server start here
	         DBCollection coll2 = utilObj.getTorocelColl();
	         Set<String> colls = utilObj.getDb().getCollectionNames();
	         
	         for (String s : colls) {		
	        	 
	        	 System.out.println("Coll="+s);
		       if(s.equals("torocell"))
		         {	
		    	     
	        		 
		        	 DBCollection coll = db.getCollection(s);
		        	 DBCursor cursor = coll.find();
		        	 while (cursor.hasNext()) {		        		 
		        		 DBObject obj=cursor.next();		        		
		        		 
		        		 BasicDBObject dbObj=new BasicDBObject();
		        		 dbObj.put("tcc", obj.get("tcc"));
		        		 dbObj.put("date", obj.get("date"));
		        		 dbObj.put("pp_ss_Micromatrix", obj.get("pp_ss_Micromatrix"));
		        		 dbObj.put("pvc_pp_gl_ss_suspension", obj.get("pvc_pp_gl_ss_suspension"));
		        		
		        		 
		        		 BasicDBObject dbObj=new BasicDBObject();
		        		 dbObj.put("mc", obj.get("mc"));
		        		 dbObj.put("mc_Date", obj.get("mc_Date"));
		        		 dbObj.put("nameOfOrganism", obj.get("nameOfOrganism"));
						 DBCursor serverCursur=utilObj.getServerColl().find(dbObj);
						 System.out.println("serverCursur lentgth="+serverCursur.count());
						 //System.out.println("serverCursur="+serverCursur.hasNext());						 
						if(serverCursur.hasNext())
						{
							
							SimpleDateFormat sd = new SimpleDateFormat("MM/dd/YYYY G 'at' HH:mm:ss z");
							
							DBObject clientObj=serverCursur.next();
							DBObject checObj=obj;
							try {
								Date checObjModiFy = sd.parse(checObj.get("ModifiedDate").toString());
								Date objModiFy = sd.parse(clientObj.get("ModifiedDate").toString());
								if(checObjModiFy.compareTo(objModiFy)>0)
								{
									utilObj.getServerColl().update(dbObj, checObj);	
									 
								}
							} catch (ParseException e) {
								// TODO Auto-generated catch block
								e.printStackTrace();
							}
							
							
						}
						else {						
						
							
							DBObject checObj=obj;	
							utilObj.getServerColl().save(checObj);
						}
					}
		        	 
		        	 
		         }
		         }

	         client to server end here

	         DBCollection coll3 = utilObj.getClientColl();
	         Set<String> colls4 = utilObj.getClientDb().getCollectionNames();
	         
	         for (String s : colls4) {		
	        	 
		       if(s.equals("torocell"))
		         {		        
		    	   
		        	 DBCollection coll = db2.getCollection(s);  //client Db
		        	 DBCursor cursor = coll.find();
		        	 while (cursor.hasNext()) {		    
		        		 System.out.println("Inside While");
		        		 DBObject obj=cursor.next();		        		
		        		 BasicDBObject dbObj=new BasicDBObject();
		        		 dbObj.put("tcc", obj.get("tcc"));
		        		 dbObj.put("date", obj.get("date"));
		        		 dbObj.put("pp_ss_Micromatrix", obj.get("pp_ss_Micromatrix"));
		        		 dbObj.put("pvc_pp_gl_ss_suspension", obj.get("pvc_pp_gl_ss_suspension"));
		        		 
						 DBCursor serverCursur=utilObj.getTorocelColl().find(dbObj);
						 //System.out.println("serverCursur="+serverCursur.hasNext());						 
						if(serverCursur.hasNext())
						{
							System.out.println("Inside Update"+serverCursur.next());
							DBObject checObj=obj;							
							 System.out.println("checObj="+checObj);
								System.out.println("ipdate greater");
								utilObj.getMicroCellColl().update(dbObj, checObj);	
							 
							
							SimpleDateFormat sd = new SimpleDateFormat("MM/dd/YYYY G 'at' HH:mm:ss z");
							
							DBObject clientObj=serverCursur.next();
							DBObject checObj=obj;
							try {
								Date checObjModiFy = sd.parse(checObj.get("ModifiedDate").toString());
								Date objModiFy = sd.parse(clientObj.get("ModifiedDate").toString());
								if(checObjModiFy.compareTo(objModiFy)>0)
								{
									utilObj.getTorocelColl().update(dbObj, checObj);	
									 
								}
							} catch (ParseException e) {
								// TODO Auto-generated catch block
								e.printStackTrace();
							}
							
							
						}
						else {						
						
							
							DBObject checObj=obj;	
							utilObj.getTorocelColl().save(checObj);
						}
					}
		        	 
		        	 
		         }
		         }

	         
	         Server to client start here
	         
	         
	         
	         server to client end here
	         response.sendRedirect("viewAllRecord.jsp");
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			System.out.println("Inside Syn Db");
			Util utilObj=new Util();
			MongoClient mongoClient;
			MongoClient serverSideClient;
			DB db;
			DB db2;
			mongoClient=utilObj.getMongoClient();
			db=utilObj.getDb();
	         db2 =utilObj.getClientDb();
	         	
	               
	         DBCollection coll2 = utilObj.getTorocelColl();
	         
	         
	         Set<String> colls = utilObj.getDb().getCollectionNames();

	         for (String s : colls) {
	         
	        	 
	         if(s.equals("torocell"))
	         {
	        	 System.out.println("Inside MyColl");
	        	 DBCollection coll = db.getCollection(s);
	        	 DBCursor cursor = coll.find();
	        	 while (cursor.hasNext()) {
	        		 
	        		 DBObject obj=cursor.next();
	        		System.out.println("obj="+obj);
	        		 BasicDBObject dbObj=new BasicDBObject();
	        		 dbObj.put("tcc", obj.get("tcc"));
	        		 dbObj.put("date", obj.get("date"));
	        		 dbObj.put("pp_ss_Micromatrix", obj.get("pp_ss_Micromatrix"));
	        		 dbObj.put("pvc_pp_gl_ss_suspension", obj.get("pvc_pp_gl_ss_suspension"));
					 System.out.println("dbObj="+dbObj);
					
					 DBCursor serverCursur=utilObj.getServerColl().find(dbObj);
					 System.out.println("serverCursur="+serverCursur.hasNext());
					 
					if(serverCursur.hasNext())
					{
						System.out.println("Inside Update");
						DBObject checObj=obj;
						utilObj.getServerColl().update(dbObj, checObj);
					}
					else {						
					
						System.out.println("Inside Save");
						DBObject checObj=obj;	
						utilObj.getServerColl().save(checObj);
					}
				}
	        	 
	        	 response.sendRedirect("viewAllRecord.jsp");
	         }
	         }
	         
		}*/

	}

	}
}
