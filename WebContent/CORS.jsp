<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
    import="java.io.*,javax.servlet.*,labs.Cors"
    %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
try{
	
	response.setContentType("text/plain");
	response.setCharacterEncoding("UTF-8");
	
	 String msg=(String)request.getParameter("msg");
	 int typeis =Integer.parseInt(request.getParameter("type"));
	 System.out.println(typeis);
	 String Result="";
	   if(typeis == 1){
	 	 Result=Cors.getForecastResult(msg);
	   }
	else{
		Result=Cors.getForecastResultClassi(msg);}  
	 
	response.getWriter().write(Result+"@");
}catch(Exception e)
{
System.out.println(e.getMessage());
e.getStackTrace();
}
finally{
	System.out.println(" ");
}
	%>

</body>
</html>