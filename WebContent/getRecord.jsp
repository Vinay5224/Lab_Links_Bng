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
DBCollection coll=utilObj.getTorocelColl();
if(request.getParameter("table") !=null)
{
DBCursor cursor = coll.find();
List<DBObject> dbList=new ArrayList<DBObject>();

while(cursor.hasNext())
{
	
DBObject obj=cursor.next();
 
htmlText+="<tr><td>"+obj.get("tcc")+"</td>";
htmlText+="<td>"+obj.get("date")+"</td>";
htmlText+="<td>"+obj.get("pvc_pp_gl_ss_suspension")+"</td>";
htmlText+="<td>"+obj.get("pp_ss_Micromatrix")+"</td>";
htmlText+="<td>"+obj.get("ModifiedDate")+"</td>";
htmlText+="<td><i class=icon-edit><button class='btn btn-info' onclick=editRec('"+obj.get("_id")+"')><span class='glyphicon glyphicon-edit'></span></button>&nbsp;&nbsp;<button type=Button class='btn btn-info' style=margin-top:5px value=delete onclick=deleteRecord('"+obj.get("_id")+"')><span class='glyphicon glyphicon-remove'></span></button></td></tr> </tr>";

}
mongoClient.close();
utilObj.serverMongoClient.close();
}
if(request.getParameter("tccVal")!=null && request.getParameter("dateId")!=null && request.getParameter("pvcId")!=null && request.getParameter("ppId")!=null)
{
	BasicDBObject queryObj=new BasicDBObject();
	if(request.getParameter("tccVal").trim()!=null)
	queryObj.put("tcc", Pattern.compile(request.getParameter("tccVal").trim(), Pattern.CASE_INSENSITIVE));
	if(request.getParameter("dateId").trim()!=null)
	queryObj.put("date", Pattern.compile(request.getParameter("dateId").trim(), Pattern.CASE_INSENSITIVE));

	if(request.getParameter("ppId")!=null)
	{
				
	if(request.getParameter("ppId").toString().equals("true"))
	{
	queryObj.put("pp_ss_Micromatrix","on");
	}
	/* else
	{
		queryObj.put("pp_ss_Micromatrix","false");
	} */
	}
	
	if(request.getParameter("pvcId")!=null)
	{
	if(request.getParameter("pvcId").toString().equals("true"))
	{
	queryObj.put("pvc_pp_gl_ss_suspension","on");
	}
	/* else
	{
		queryObj.put("pvc_pp_gl_ss_suspension", "false");
	} */
	}
	
	DBCursor cursor = coll.find(queryObj);
	List<DBObject> dbList=new ArrayList<DBObject>();
	if(cursor.count()>0)
	{
	while(cursor.hasNext())
	{
		
	DBObject obj=cursor.next();
	
	htmlText+="<tr><td>"+obj.get("tcc")+"</td>";
	htmlText+="<td>"+obj.get("date")+"</td>";
	htmlText+="<td>"+obj.get("pvc_pp_gl_ss_suspension")+"</td>";
	htmlText+="<td>"+obj.get("pp_ss_Micromatrix")+"</td>";
	htmlText+="<td>"+obj.get("ModifiedDate")+"</td>";
	htmlText+="<td><i class=icon-edit><button class='btn btn-info' onclick=editRec('"+obj.get("_id")+"')><span class='glyphicon glyphicon-edit'></span></button>&nbsp;&nbsp;<button type=Button class='btn btn-info' style=margin-top:5px value=delete onclick=deleteRecord('"+obj.get("_id")+"')><span class='glyphicon glyphicon-remove'></span></button></td></tr> </tr>";
	}
	}
	else
	{
		htmlText+="<tr align=center style=color:red;font-size:17px;><td>No Matching result found</td><tr>";	
	}
	mongoClient.close();
	utilObj.serverMongoClient.close();	
}


if(request.getParameter("tcc")!=null && request.getParameter("tcc")!="" && request.getParameter("dat") !=null && request.getParameter("dat")!="")
{
	
	BasicDBObject queryObj=new BasicDBObject();
	queryObj.put("tcc", request.getParameter("tcc"));
	queryObj.put("date", request.getParameter("dat"));
	
	
	DBCursor cursor = coll.find(queryObj);
	
	if(cursor.hasNext())
	{
		htmlText="true";
		
	}
	else
	{
		htmlText="false";
	}
	mongoClient.close();
	utilObj.serverMongoClient.close();
}

if(request.getParameter("synchDb")!=null)
{
	mongoClient.close();
	utilObj.serverMongoClient.close();
	
}

if(request.getParameter("deleteRecord")!=null && request.getParameter("id")!=null)
{
	if (ObjectId.isValid(request.getParameter("id").trim())) {
		
		BasicDBObject whereQuery = new BasicDBObject();
		whereQuery.put("_id", new ObjectId(request.getParameter("id").trim()));
		DBCollection collection = utilObj.getTorocelColl();
		DBCursor cursor = collection.find(whereQuery);
		if (cursor.hasNext()) {
			BasicDBObject doc = new BasicDBObject();
			doc = (BasicDBObject) cursor.next();
			collection.remove(doc);
			cursor = collection.find();
			while(cursor.hasNext() & cursor.count()>0)
			{
				
			DBObject obj=cursor.next();
			htmlText+="<tr><td>"+obj.get("tcc")+"</td>";
			htmlText+="<td>"+obj.get("date")+"</td>";
			htmlText+="<td>"+obj.get("pvc_pp_gl_ss_suspension")+"</td>";
			htmlText+="<td>"+obj.get("pp_ss_Micromatrix")+"</td>";
			htmlText+="<td>"+obj.get("ModifiedDate")+"</td>";
			htmlText+="<td><i class=icon-edit><button class='btn btn-info' onclick=editRec('"+obj.get("_id")+"')><span class='glyphicon glyphicon-edit'></span></button>&nbsp;&nbsp;<button type=Button class='btn btn-info' style=margin-top:5px value=delete onclick=deleteRecord('"+obj.get("_id")+"')><span class='glyphicon glyphicon-remove'></span></button></td></tr> </tr>";	
			}
		}
	}
	mongoClient.close();
	utilObj.serverMongoClient.close();
}

response.setContentType("text/plain");  // Set content type of the response so that jQuery knows what it can expect.
response.setCharacterEncoding("UTF-8"); // You want world domination, huh?
response.getWriter().write(htmlText);

%>

</body>
</html>