<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*"%>
      <%@ taglib prefix="c" 
           uri="http://java.sun.com/jsp/jstl/core" %>
     <%@page import="com.mongodb.DBCursor"%>
<%@page import="com.mongodb.BasicDBObject"%>
<%@page import="com.mongodb.DBObject"%>
<%@page import="com.mongodb.DBCollection"%>
<%@page import="com.mongodb.DB"%>
<%@page import="com.mongodb.Mongo"%>
<%@page import="com.mongodb.MongoClient"%>
<%@page import="com.mongodb.*"%>
<%@page import="java.util.regex.Pattern"%>
<%@page import="com.util.Util"%>
<%@page import="org.bson.types.ObjectId" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%

String htmlText = "";

Util utilObj=new Util();
MongoClient mongoClient;
DB db;
mongoClient=utilObj.getMongoClient();
db=utilObj.getDb();
DBCollection coll=utilObj.getMicroCellColl();
if(request.getParameter("table") !=null)
{
DBCursor cursor = coll.find();
List<DBObject> dbList=new ArrayList<DBObject>();

while(cursor.hasNext() & cursor.count()>0)
{
	
DBObject obj=cursor.next();
 
htmlText+="<tr><td>"+obj.get("mc")+"</a></td>";
htmlText+="<td>"+obj.get("mc_Date")+"</td>";
htmlText+="<td>"+obj.get("nameOfOrganism")+"</td>";
htmlText+="<td>"+obj.get("ModifiedDate")+"</td>";
htmlText+="<td><i class=icon-edit><button class='btn btn-info' onclick=editRec('"+obj.get("_id")+"')><span class='glyphicon glyphicon-edit'></span></button>&nbsp;<button type=Button class='btn btn-info' onclick=deleteRecord('"+obj.get("_id")+"','"+obj.get("mc")+"','"+obj.get("mc_Date")+"','"+obj.get("nameOfOrganism").toString().replaceAll("\\s+","")+"')><span class='glyphicon glyphicon-remove'></span></button></td></tr> </tr>";

}
mongoClient.close();
//utilObj.serverMongoClient.close();
Util.serverMongoClient.close();
}
if(request.getParameter("mc")!=null && request.getParameter("dateId")!=null && request.getParameter("nameOfOrganism")!=null)
{
	BasicDBObject queryObj=new BasicDBObject();
	if(request.getParameter("mc")!=null)
	queryObj.put("mc", Pattern.compile(request.getParameter("mc").trim(), Pattern.CASE_INSENSITIVE));
	if(request.getParameter("dateId").trim()!=null)
	queryObj.put("mc_Date", Pattern.compile(request.getParameter("dateId").trim(), Pattern.CASE_INSENSITIVE));
	if(request.getParameter("nameOfOrganism").trim()!=null)
	queryObj.put("nameOfOrganism", Pattern.compile(request.getParameter("nameOfOrganism").trim(), Pattern.CASE_INSENSITIVE));
	
	DBCursor cursor = coll.find(queryObj);
	List<DBObject> dbList=new ArrayList<DBObject>();
	if(cursor.count()>0)
	{
	while(cursor.hasNext())
	{
		
	DBObject obj=cursor.next();

	htmlText+="<tr><td>"+obj.get("mc")+"</a></td>";
	htmlText+="<td>"+obj.get("mc_Date")+"</td>";
	htmlText+="<td>"+obj.get("nameOfOrganism")+"</td>";
	htmlText+="<td>"+obj.get("ModifiedDate")+"</td>";
	htmlText+="<td><i class=icon-edit><button class='btn btn-info' onclick=editRec('"+obj.get("_id")+"')><span class='glyphicon glyphicon-edit'></span></button>&nbsp;<button type=Button class='btn btn-info' onclick=deleteRecord('"+obj.get("_id")+"','"+obj.get("mc")+"','"+obj.get("mc_Date")+"','"+obj.get("nameOfOrganism").toString().replaceAll("\\s+","")+"')><span class='glyphicon glyphicon-remove'></span></button></td></tr> </tr>";

	}
	}
	else
	{
		htmlText+="<tr align=center style=color:red;font-size:17px;><td>No Matching result found</td><tr>";	
	}
	
	mongoClient.close();
	//utilObj.serverMongoClient.close();
	Util.serverMongoClient.close();
}





if(request.getParameter("synchDb")!=null)
{
	
}

if(request.getParameter("deleteRecord")!=null && request.getParameter("id")!=null)
{
	if (ObjectId.isValid(request.getParameter("id").trim())) {
		
		BasicDBObject whereQuery = new BasicDBObject();
		whereQuery.put("_id", new ObjectId(request.getParameter("id").trim()));
		DBCollection collection = utilObj.getMicroCellColl();
		DBCursor cursor = collection.find(whereQuery);
		if (cursor.hasNext()) {
			BasicDBObject doc = new BasicDBObject();
			doc = (BasicDBObject) cursor.next();
			collection.remove(doc);
			cursor = collection.find();
			while(cursor.hasNext() & cursor.count()>0)
			{
			DBObject obj=cursor.next();			
			htmlText+="<tr><td>"+obj.get("mc")+"</a></td>";
			htmlText+="<td>"+obj.get("mc_Date")+"</td>";
			htmlText+="<td>"+obj.get("nameOfOrganism")+"</td>";
			htmlText+="<td>"+obj.get("ModifiedDate")+"</td>";
			htmlText+="<td><i class=icon-edit><button class='btn btn-info' onclick=editRec('"+obj.get("_id")+"')><span class='glyphicon glyphicon-edit'></span></button>&nbsp;<button type=Button class='btn btn-info' onclick=deleteRecord('"+obj.get("_id")+"','"+obj.get("mc")+"','"+obj.get("mc_Date")+"','"+obj.get("nameOfOrganism").toString().replaceAll("\\s+","")+"')><span class='glyphicon glyphicon-remove'></span></button></td></tr> </tr>";
			
			}
		}
		mongoClient.close();
		//utilObj.serverMongoClient.close();
		Util.serverMongoClient.close();
	}
	mongoClient.close();
	//utilObj.serverMongoClient.close();
	Util.serverMongoClient.close();
}
response.setContentType("text/plain");  // Set content type of the response so that jQuery knows what it can expect.
response.setCharacterEncoding("UTF-8"); // You want world domination, huh?
response.getWriter().write(htmlText);

%>

</body>
</html>