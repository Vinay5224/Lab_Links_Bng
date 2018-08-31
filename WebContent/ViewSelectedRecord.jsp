<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.util.*"%>
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
<%@page import="org.bson.types.ObjectId" %>
<%@page import="com.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="https://code.jquery.com/jquery-3.1.1.min.js" defer></script>

<script src="https://momentjs.com/downloads/moment.min.js"></script>
  <script src="dist/js/bootstrap-checkbox.min.js" defer></script>
  <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/js/bootstrap-datepicker.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/css/bootstrap-datepicker3.css"/>
<title>TOROCELL CELL CULTURE</title>
<script type="text/javascript">
var Counts = [];
function changeDate(dateId,dateno)
{

$("#enteredDate"+dateno).text("   Date : "+$("#"+dateId).val());
if($("#"+dateId).val() !=null && $("#"+dateId).val() !="")
{
$('#currentSnoId'+dateno).text("")
}
else
{
$('#currentSnoId'+dateno).text("S.no" +dateno);
}
}

function validateDate(dateId,day)
{
	$('#errorDate'+day).hide();
	var dateString =$("#"+dateId).val();
	if(dateString.length != 0)
	{	
	if(!moment(dateString, 'DD/MM/YYYY',true).isValid())
		 {
		$('#errorDate'+day).text("Date must be of the format 'DD/MM/YYYY'")
		$('#errorDate'+day).css("color", "red");
		$('#errorDate'+day).show();
		$("#"+dateId).val("");
		$("#"+dateId).focus();
		 }
	 else
		 {
		
		  $('#errorDate'+day).text("");
		 $('#errorDate'+day).hide(); 
		 $('#errorDate'+day).css("color", "");
		 }
	}
	else
		{
		 $('#errorDate'+day).text("");
		 $('#errorDate'+day).hide(); 
		 $('#errorDate'+day).css("color", "");
		}
}








function removeDay(id)
{
	console.log(id);
	var i=0;
	for(i in Counts){
	    if(Counts[i]==id){
	    	Counts.splice(i,1);
	        console.log(id+Counts[i])
	        break;
	    }
	}
	/* var index = Counts.indexOf(id); */
	/* console.log("id"+index );
	Counts.splice(index, 1); */
	console.log(Counts);
	$("#Arr").val("");
	$("#Arr").val(Counts);
	$('#day'+id).css('display','none');
	$('#demo'+id).css('display','none');
	
}
$(window).keydown(function(event){
    if(event.keyCode == 13) {
      event.preventDefault();
      return false;
    }
  });
var countDays=0;
$( document ).ready(function() {
	
	var dayListSize=parseInt($("#totalDayAdded").val());
	//alert(dayListSize);
	//Counts=[0];
	 for( i=0;i<dayListSize;i++){
		//console.log(i); 
		Counts.push(i);
	}  
	$("#Arr").val("");
	$("#Arr").val(Counts);
	console.log(Counts);
});
function addNewDays()
{
	var totDay=parseInt($("#totalDayAdded").val());
	//alert(totDay)
	countDays=totDay;
	
	Counts.push(countDays);
	console.log(Counts);
	$("#Arr").val("");
	$("#Arr").val(Counts);
	
	var daysHtml="<br/><br/><button id=day"+countDays+" type=button class='btn btn-info' data-toggle=collapse data-target=#demo"+countDays+" style=width:100%;><span id=currentSnoId"+countDays+">S.no :"+countDays+"</span><span id=enteredDate"+countDays+"><span style=float:right>&#9660;</button>"
	daysHtml+="<div id=demo"+countDays+" class=collapse><center> <span id=errorDate"+countDays+"></span><center><button  type='button' class='btn btn-default' value='remove' style=''float:left' onclick=removeDay('"+countDays+"')>Remove</button> <div class=row><div class=col-md-3 col-md-offset-8>"
	daysHtml+="<div class=well well-sm style = margin-right:8%><div class=form-group><label for=text class=control-label col-xs-4>Date :</label>"
	daysHtml+="<div class=col-xs-8><input type=text class=form-control name=PreviousDate"+countDays+" onkeyup=changeDate('PreviousDate"+countDays+"',"+countDays+") id=PreviousDate"+countDays+" onchange=validateDate('PreviousDate"+countDays+"',"+countDays+")>(DD/MM/YYYY)(Ex:07/09/2017)<input type=hidden name=noOfDays> </div>"
	daysHtml+="</div></div></div></div><div class=col-md-3  col-md-offset-4><div class=well well-sm style =margin-right:-4% ;margin-left:-25%;margin-top:-33%;>"
	daysHtml+="<div class=form-groupstyle=float:center><label for=text class=control-label col-xs-9 style =margin-left:-2%>Sample Quantity: 10ml x 2 tubes</label>"
	daysHtml+="<div class=col-xs-1 style =margin-top:2%><input type=checkbox name=sampleQuantity"+countDays+"></div></div></div></div>"
	daysHtml+="<table class=table table-bordered ><thead><th> </th><th><input style=text-align:center type=text class=form-control  name=Time1"+countDays+" placeholder= Hours></th>"
	daysHtml+="<th><input style=text-align:center type=text class=form-control name=Time2"+countDays+" placeholder=Hours></th>"
	daysHtml+="<th><input style=text-align:center type=text class=form-control name=Time3"+countDays+" placeholder=Hours></th></thead>"
	daysHtml+="<tbody><tr><td><b>Physical Appearance of Culture fluid:</b></td><td><input type=text class=form-control name=physical1"+countDays+"></td>"
	daysHtml+="<td><input type=text class=form-control name=physical2"+countDays+"></td><td><input type=text class=form-control name=physical3"+countDays+"></td></tr>"
	daysHtml+="<tr><td><b>pH Culture fluid(Online <input type=checkbox name=phonline"+countDays+" autocomplete=off>/ Manual <input type=checkbox name=phmanual"+countDays+" autocomplete=off>):</td><td><input type=text class=form-control name=ph_Culture1"+countDays+"></td>"
	daysHtml+="<td><input type=text class=form-control name=ph_Culture2"+countDays+"></td><td><input type=text class=form-control name=ph_Culture3"+countDays+"></td></tr>"
	daysHtml+="<tr><td><b>dO2 Culture fluid(Online <input type=checkbox name=doonline"+countDays+" autocomplete=off>/ Manual <input type=checkbox name=domanual"+countDays+" autocomplete=off>):</td><td><input type=text class=form-control name=do2_Culture1"+countDays+"></td>"
	daysHtml+="<td><input type=text class=form-control name=do2_Culture2"+countDays+"></td><td><input type=text class=form-control name=do2_Culture3"+countDays+"></td><br><br></tr></tbody></table>"
	daysHtml+="<div class=form-group ><label for=text class=control-label col-xs-4 style=margin-left:-7%>Glucose concentration: Test Method:</label>"
	daysHtml+="<div class=col-xs-8 style=margin-left:5%><input type=text class=form-control name=glucose_concentration"+countDays+"></div></div>"
	daysHtml+="<div class=well well-sm style =width:96% ;margin-left:2%><table class=table table-bordered><thead><tr>"
	daysHtml+="<th>Per ml:</th><th style=text-align:center>100&#956;g</th><th style=text-align:center>200&#956;g</th><th style=text-align:center>300&#956;g"
	daysHtml+="</th><th style=text-align:center>400&#956;g</th><th style=text-align:center>500&#956;g</th><th style=text-align:center>600&#956;g</th></tr>"
	daysHtml+="</thead><tbody><tr><th class=col-xs-2>OD of Standard:</th><td><input type=text class=form-control name=100g"+countDays+"></td>"
	daysHtml+="<td><input type=text class=form-control name=200g"+countDays+"></td><td><input type=text class=form-control name=300g"+countDays+"></td>"
	daysHtml+="<td><input type=text class=form-control name=400g"+countDays+"></td><td><input type=text class=form-control name=500g"+countDays+"></td>"
	daysHtml+="<td><input type=text class=form-control name=600g"+countDays+"></td></tr></tbody></table></div>"
	daysHtml+="<div class=well well-sm style =border:df1010 ;width:96% ;margin-left:2%><div class=form-group>"
	daysHtml+="<label for=text class=control-label col-xs-3 style=text-align:left ; margin-left:2%>Gms/L : </label>"
	daysHtml+="<div class=col-xs-2style=margin-left:-1%><input type=text class=form-control name=gms"+countDays+">"
	daysHtml+="</div><label for=text class=control-label col-xs-3 style=margin-left:1%>OD of Test Sample :</label>"
	daysHtml+="<div class=col-xs-3 style=margin-left:3%><input type=text class=form-control name=odOfTestSample"+countDays+">"
	daysHtml+="</div></div></div><div class=well well-sm style =border:df1010 ;width:96% ;margin-left:2%>"
	daysHtml+="<div class=form-groupstyle=margin-left:-3%><label for=text class=control-label col-xs-4style=text-align:left ;margin-left:4%>"	
	daysHtml+="Media Conditioning, Additions and Remarks :</label><div class=col-xs-8style=margin-left:-6%;height:-750%>"
	daysHtml+="<textarea style=height:750% type=text class=form-control rows=14 cols=50 name=mediaConditioningRemarks"+countDays+"></textarea></div></div></div></div>"
	$('#daysId').append(daysHtml);
	countDays=countDays+1;
	$("#totalDayAdded").val(countDays);
}
</script>
<script type="text/javascript">
/* no_of_inlet_ports start here */
$(document).on('keypress','#no_of_inlet_ports',function( event ) { 
	if ((event.which != 46 || $(this).val().indexOf('.') != -1) &&
		    ((event.which < 48 || event.which > 57) &&
		      (event.which != 0 && event.which != 8))) {
		    event.preventDefault();
		  }

		  var text = $(this).val();

		  
		  if ((text.indexOf('.') != -1) &&
		    (text.substring(text.indexOf('.')).length > 2) &&
		    (event.which != 0 && event.which != 8) &&
		    ($(this)[0].selectionStart >= text.length - 2)) {
		    event.preventDefault();
		  }
		  
});

/* no_of_outlet_ports start here */
$(document).on('keypress','#no_of_outlet_ports',function( event ) { 
	if ((event.which != 46 || $(this).val().indexOf('.') != -1) &&
		    ((event.which < 48 || event.which > 57) &&
		      (event.which != 0 && event.which != 8))) {
		    event.preventDefault();
		  }

		  var text = $(this).val();

		  
		  if ((text.indexOf('.') != -1) &&
		    (text.substring(text.indexOf('.')).length > 2) &&
		    (event.which != 0 && event.which != 8) &&
		    ($(this)[0].selectionStart >= text.length - 2)) {
		    event.preventDefault();
		  }
		  
});

/* Cell_spreader start here */

$(document).on('keypress','#Cell_spreader',function( event ) { 
	if ((event.which != 46 || $(this).val().indexOf('.') != -1) &&
		    ((event.which < 48 || event.which > 57) &&
		      (event.which != 0 && event.which != 8))) {
		    event.preventDefault();
		  }

		  var text = $(this).val();

		  
		  if ((text.indexOf('.') != -1) &&
		    (text.substring(text.indexOf('.')).length > 2) &&
		    (event.which != 0 && event.which != 8) &&
		    ($(this)[0].selectionStart >= text.length - 2)) {
		    event.preventDefault();
		  }
		  
});

/* Cell_sampler_coverSlip start here */
$(document).on('keypress','#Cell_sampler_coverSlip',function( event ) { 
	if ((event.which != 46 || $(this).val().indexOf('.') != -1) &&
		    ((event.which < 48 || event.which > 57) &&
		      (event.which != 0 && event.which != 8))) {
		    event.preventDefault();
		  }

		  var text = $(this).val();

		  
		  if ((text.indexOf('.') != -1) &&
		    (text.substring(text.indexOf('.')).length > 2) &&
		    (event.which != 0 && event.which != 8) &&
		    ($(this)[0].selectionStart >= text.length - 2)) {
		    event.preventDefault();
		  }
		  
});

/* no_matrix start Here */
$(document).on('keypress','#no_matrix',function( event ) { 
	if ((event.which != 46 || $(this).val().indexOf('.') != -1) &&
		    ((event.which < 48 || event.which > 57) &&
		      (event.which != 0 && event.which != 8))) {
		    event.preventDefault();
		  }

		  var text = $(this).val();

		  
		  if ((text.indexOf('.') != -1) &&
		    (text.substring(text.indexOf('.')).length > 2) &&
		    (event.which != 0 && event.which != 8) &&
		    ($(this)[0].selectionStart >= text.length - 2)) {
		    event.preventDefault();
		  }
		  
});

/* carbonate_left start here */
$(document).on('keypress','#carbonate_left',function( event ) { 
	if ((event.which != 46 || $(this).val().indexOf('.') != -1) &&
		    ((event.which < 48 || event.which > 57) &&
		      (event.which != 0 && event.which != 8))) {
		    event.preventDefault();
		  }

		  var text = $(this).val();

		  
		  if ((text.indexOf('.') != -1) &&
		    (text.substring(text.indexOf('.')).length > 2) &&
		    (event.which != 0 && event.which != 8) &&
		    ($(this)[0].selectionStart >= text.length - 2)) {
		    event.preventDefault();
		  }
		  
});

/* carbonate_right start here */
$(document).on('keypress','#carbonate_right',function( event ) { 
	if ((event.which != 46 || $(this).val().indexOf('.') != -1) &&
		    ((event.which < 48 || event.which > 57) &&
		      (event.which != 0 && event.which != 8))) {
		    event.preventDefault();
		  }

		  var text = $(this).val();

		  
		  if ((text.indexOf('.') != -1) &&
		    (text.substring(text.indexOf('.')).length > 2) &&
		    (event.which != 0 && event.which != 8) &&
		    ($(this)[0].selectionStart >= text.length - 2)) {
		    event.preventDefault();
		  }
		  
});

/* no sensor start here */

$(document).on('keypress','#no_sensors',function( event ) { 
	if ((event.which != 46 || $(this).val().indexOf('.') != -1) &&
		    ((event.which < 48 || event.which > 57) &&
		      (event.which != 0 && event.which != 8))) {
		    event.preventDefault();
		  }

		  var text = $(this).val();

		  
		  if ((text.indexOf('.') != -1) &&
		    (text.substring(text.indexOf('.')).length > 2) &&
		    (event.which != 0 && event.which != 8) &&
		    ($(this)[0].selectionStart >= text.length - 2)) {
		    event.preventDefault();
		  }
		  
});


/* nocontainers start here */  


$(document).on('keypress','.nocontainers',function( event ) { 
	if ((event.which != 46 || $(this).val().indexOf('.') != -1) &&
		    ((event.which < 48 || event.which > 57) &&
		      (event.which != 0 && event.which != 8))) {
		    event.preventDefault();
		  }

		  var text = $(this).val();

		  
		  if ((text.indexOf('.') != -1) &&
		    (text.substring(text.indexOf('.')).length > 2) &&
		    (event.which != 0 && event.which != 8) &&
		    ($(this)[0].selectionStart >= text.length - 2)) {
		    event.preventDefault();
		  }
		  
});

</script>
</head>

<style>
@page {
  size:9.9in 11.2in;
}
body {
    margin-top:40px;
}
.stepwizard-step p {
    margin-top: 10px;
}
.stepwizard-row {
    display: table-row;
}
.stepwizard {
    display: table;
    width: 50%;
    position: relative;
}
.stepwizard-step button[disabled] {
    opacity: 1 !important;
    filter: alpha(opacity=100) !important;
}
.stepwizard-row:before {
    top: 14px;
    bottom: 0;
    position: absolute;
    content: " ";
    width: 63%;
    height: 1px;
    background-color: #ccc;
    z-order: 0;
}
.stepwizard-step {
    display: table-cell;
    text-align: center;
    position: relative;
}
input[type=line] {
    background: transparent;
    border: none;
    border-bottom: 2px solid #000000;
    width:5%;
}
.btn-circle {
    width: 30px;
    height: 30px;
    text-align: center;
    padding: 6px 0;
    font-size: 12px;
    line-height: 1.428571429;
    border-radius: 15px;
}
body{background:url("http://dg.jshwebdesigns.com/wp-content/uploads/2014/12/Gray-plain-website-background.jpg")center center;
background-repeat: no-repeat;
background-attachment: fixed;
background-position: center;
background-size: cover;
}

.img-figure img {
	position: relative;	
	overflow: hidden;
	-webkit-transition: all 1s ease;
	-moz-transition: all 1s ease;
	-ms-transition: all 1s ease;
	-o-transition: all 1s ease;
	transition: all 1s ease;
}

.news:hover .img-figure img {
	-webkit-transform: scale(1.10);
	-moz-transform: scale(1.10);
	-ms-transform: scale(1.10);
	-o-transform: scale(1.10);
	transform: scale(1.10);
}

.btn span.glyphicon {    			
	opacity: 0;	
				
}
.btn.active span.glyphicon {				
	opacity: 1;	
   width:50px;		
}
.new{
margin-top:-34px;
margin-right:-54%;
margin-top:0px;
}
.rare{ 
margin-top:-6%;
padding:0%;
right:-4%;
}

.p{
margin-right: 10px;
}
.h{
margin-top:-1%;
margin-right:26px;
}
.m{
margin-top:-3% }
</style>
<body>
<div class="news">
					<div class="img-figure">
  <div class="panel panel-default" style="box-shadow: 8px 8px 3px gray;">
  <div class="panel-heading custom_class" style="height:200px;background-color:white; " >
  <h1 align="center" style="margin-left:6%;color:black;text-shadow: 2px 2px 1px black;"><b>TOROCELL CELL CULTURE CARD</b></h1>
<div id="image" style="float:right; margin-RIGHT:6%;">
<img src="companylogo.png" class="media-object" style="width:170px;height:120px"align="right"/>
</div>
<div id="image" style="float:left; margin-right:4%;margin-left:4%; margin-bottom:5%;">
<a href="Torocell.jsp"><img src="Lablinkslogo.png" class="media-object" style="width:230px ; height:100px"align="left"/></a>
</div>

  </div>
  </div>
  </div>
</div><br>


<form action="UpdateRecord" class="form-horizontal" method="post" >
<%
 

 response.setHeader("Cache-Control","no-cache"); //HTTP 1.1 
 response.setHeader("Pragma","no-cache"); //HTTP 1.0 
 response.setDateHeader ("Expires", 0); //prevents caching at the proxy server  
 	Util utilObj=new Util();
	MongoClient mongoClient;
	DB db;
	mongoClient=utilObj.getMongoClient();
	db=utilObj.getDb();
	
/* MongoClient mongoClient = new MongoClient( "localhost" , 27017);
DB db = mongoClient.getDB("Microbial");
 */
/* String Pos=request.getParameter("previousname_of_the_organism"); */
 

BasicDBObject whereQuery = new BasicDBObject();
/* whereQuery.put("tcc", tcc);whereQuery.put("date", PreviousDate); *//* whereQuery.put("nameOfOrganism", Pos); */
if (ObjectId.isValid(request.getParameter("id"))) { 
whereQuery.put("_id", new ObjectId(request.getParameter("id"))); 
/* DBCollection coll = db.getCollection("torocell"); */
DBCollection coll = utilObj.getTorocelColl();
DBCursor cursor = coll.find(whereQuery);



if(cursor.hasNext()){

while(cursor.hasNext()){
	 DBObject result=cursor.next();
		
		Map resultmap=result.toMap();  

%>
<div class="container">


<div class="stepwizard col-md-offset-3" >
    <div class="stepwizard-row setup-panel">
      <div class="stepwizard-step">
        <a href="#step-1" type="button" class="btn btn-primary btn-circle">1</a>
        <p style="color:white"><b>Basic Details</b></p>
      </div>
      <div class="stepwizard-step">
        <a href="#step-2" type="button" class="btn btn-default btn-circle" >2</a>
        <p style="color:white"><b>Fill the Bioreactor Container Details</b></p>
      </div>
      <div class="stepwizard-step">
        <a href="#step-3" type="button" class="btn btn-default btn-circle" >3</a>
        <p style="color:white"><b>Fill the Day Details  </b></p>
      </div>
      <div class="stepwizard-step">
        <a href="#step-4" type="button" class="btn btn-default btn-circle" >4</a>
        <p style="color:white"><b>Enter the Summary & Remarks </b></p>
      </div>
  <!--     <div class="stepwizard-step">
        <a href="#step-5" type="button" class="btn btn-default btn-circle" >View Exist Record</a>
        <p style="color:white"><b>Previous Records</b></p>
      </div>
   -->
      <a style="float: right;width: 150px;" href="viewAllRecord.jsp" type="button" class="btn btn-default btn-circle" >Show Existing Records</a>
    </div>
  </div>
  
<!--  <form role="form" class="form-horizontal" action="" method="post"> -->
  
  <div class="row setup-content" id="step-1">
  <div class="row">
<div class="col-md-3 ">

<div class="well well-sm" style ="margin-left:9%">
<div class="form-group">
<label for="text" class="control-label col-xs-5">TCC :</label>
<div class="col-xs-5">
<input type="text" class="form-control" name="tcc" id="uniqueTcc" title="TCC" placeholder="TCC"   value="<% out.println(resultmap.get("tcc")); %>" readonly>
</div>
</div>
</div>

</div>

<div class="col-md-3 col-md-offset-6">
<input type="hidden" value="<%out.println(resultmap.get("_id")); %>" name="formId">
<div class="well well-sm date" >
<div class="form-group ">
<label for="text" class="control-label col-xs-4">Date :</label>
<div class="col-xs-8 "data-provide=datepicker">
<input type="text" class="form-control u" name="Date" id="uniqueDate" id="Date" title="Date" placeholder="Date"  value="<%out.println(resultmap.get("date")); %>" readonly>

</div>
</div>
</div>

</div>


<div class="well well-sm col-md-5  col-md-offset-3 rare" >
<div class="btn " data-toggle="buttons">
			
			
			<% if(resultmap.get("pvc_pp_gl_ss_suspension").toString().equals("on"))
	{%>
	<label class="btn btn-primary active">
				<input type="radio" name="pvc_pp_gl_ss_suspension" title="PVC/PP/GL/SS SUSPENSION" id="option2" autocomplete="off" checked>
				<span class="glyphicon glyphicon-ok"></span>
				</label>
				<% } else {%>
				<label class="btn btn-primary ">
				<input type="radio" name="pvc_pp_gl_ss_suspension" title="PVC/PP/GL/SS SUSPENSION" id="option2" autocomplete="off" >
				<span class="glyphicon glyphicon-ok"></span>
				</label>
				<% } %>
				
			<b>PVC/PP/GL/SS SUSPENSION</b>

			
			<% 
			
			if(resultmap.get("pp_ss_Micromatrix").toString().equalsIgnoreCase("on"))
	{%>
		<label class="btn btn-primary active">
				<input type="radio" name="pp_ss" title="PP/SS MACROMATRIX" id="option1" autocomplete="off" checked>
				<span class="glyphicon glyphicon-ok"></span>
				</label>
				<% } else {%>
				<label class="btn btn-primary ">
				<input type="radio" name="pp_ss" title="PP/SS MACROMATRIX" id="option1" autocomplete="off">
				<span class="glyphicon glyphicon-ok"></span>
				</label>
				<% } %>
				<span class="glyphicon glyphicon-ok"></span>
			<b>PP/SS MACROMATRIX</b>

			
		</div>
		</div>
 </div>

<!-- <div class="well well-sm" style ="margin-left:2%;width:30%;">
<h4 style ="margin-left:1%"><b>TOROCELL SYSTEM ID NO:</b></h4>
  </div> -->
  <div class="well well-sm" style ="margin-left:2%;width:98%;">
<div class="form-group">
<label for="text" class="control-label col-xs-3"style="text-align:left ;margin-left:2%"><b>TOROCELL SYSTEM ID NO:</b></label>
<div class="col-xs-2"style="margin-left:-1%">
<input type="text" class="form-control" name="torocell_system_id_no" id="torocell_system_id_no" title="TOROCELL SYSTEM ID NO" placeholder="TOROCELL SYSTEM ID NO" value="<% out.println(resultmap.get("torocellSystemIdNo")); %>">
</div>
<label for="text" class="control-label col-xs-2" style="margin-right:4%;margin-left:1%">Barcode : </label>
<div class="col-xs-3" style="margin-left:5%">
<textarea class="form-control" name="barcode" rows="1" id="Barcode" title="Barcode" placeholder="Barcode"><% out.println(resultmap.get("barcode")); %></textarea>
</div>
</div>
</div> 

  <div class="well well-sm" style ="margin-left:2%">
  <h5><b>Details Of Assembly:</b> Mark 	&#10004; as appropriate.</h5><br>

<p align=left><b>VESSEL TYPE :</b></p>
 <div class="btn" data-toggle="buttons">
			<% 
   BasicDBObject valuesvessel= (BasicDBObject) resultmap.get("vesselType");
			Map resultmapvessel=valuesvessel.toMap();		 
	%>
			
			<%
			String sslsmall=resultmapvessel.get("pvc").toString();
			if(sslsmall.equalsIgnoreCase("on")){
				
				%>
			<label class="btn btn-primary col-md-2 p active">
			<input type="checkbox" autocomplete="off" name="pvc" checked>
			
				<span class="glyphicon glyphicon-ok"></span>
				<b>PVC</b>
			</label>
			
			<%} else {%>
			<label class="btn btn-primary col-md-2 p ">
			<input type="checkbox" autocomplete="off" name="pvc" >
			<span class="glyphicon glyphicon-ok"></span>
				<b>PVC</b>
			</label>
			<% } %>
				

			
			<% if(resultmapvessel.get("pp").equals("on")){ %>
			<label class="btn btn-primary col-md-2 p active">
			<input type="checkbox" autocomplete="off" name="pp" checked="checked">
			<span class="glyphicon glyphicon-ok"></span>
				 <b>PP</b>
			</label>		
			<% } else {%>
			<label class="btn btn-primary col-md-2 p ">
			<input type="checkbox" autocomplete="off" name="pp">
			<span class="glyphicon glyphicon-ok"></span>
				 <b>PP</b>
			</label>		
			<% } %>
				
					
		
			
			<% if(resultmapvessel.get("ss_small_lit").toString().equals("on")) {
%>
<label class="btn btn-primary col-md-3 p active">
<input type="checkbox" autocomplete="off" name="ss_small_lit" checked="checked">
<span class="glyphicon glyphicon-ok"></span>
				 <b>SS Small Lit</b>
			</label>	
<%} else {%>
<label class="btn btn-primary col-md-3 p ">
<input type="checkbox" autocomplete="off" name="ss_small_lit">
<span class="glyphicon glyphicon-ok"></span>
				 <b>SS Small Lit</b>
			</label>	
<%} %>
				
				
			
			
			<% if(resultmapvessel.get("ss_big_lit").equals("on")) { %>
			
			<label class="btn btn-primary col-md-4 p active">
			<input type="checkbox" autocomplete="off" name="ss_big_lit" checked="checked">
			<span class="glyphicon glyphicon-ok"></span>
			         <b>SS Big Lit</b></label>	
			<% } else { %>
			<label class="btn btn-primary col-md-4 p">
			<input type="checkbox" autocomplete="off" name="ss_big_lit" >
			<span class="glyphicon glyphicon-ok"></span>
			         <b>SS Big Lit</b></label>	
			<% } %>
				
				
						

			
			
			<% if(resultmapvessel.get("conditional_vessel").equals("on")) {%>
			<label class="btn btn-primary col-md-4 new active">
			<input type="checkbox" autocomplete="off" name="conditional_vessel" checked="checked">
			<span class="glyphicon glyphicon-ok"></span>
			 <b>Conditional Vessel</b></label>		
			<% } else {%>
			<label class="btn btn-primary col-md-4 new">
			<input type="checkbox" autocomplete="off" name="conditional_vessel" checked="checked">
			<span class="glyphicon glyphicon-ok"></span>
			 <b>Conditional Vessel</b></label>		
			<%} %>
				
								
		</div>
		</div>
     <div class="well well-sm" style ="margin-left:2%">
     <h5 align=left><b>PORTS :</b></h5>

 <div class="form-group">
      <div class="col-xs-2">
      <% 
   BasicDBObject valuesport= (BasicDBObject) resultmap.get("port");
			Map resultmapport=valuesport.toMap();		 
	%>
        <label for="ex1">No of Inlet ports<b></b></label>
        <input class="form-control" name="no_of_inlet_ports" id="no_of_inlet_ports" type="text" title="No of Inlet ports" placeholder="No of Inlet ports" value="<% out.println(resultmapport.get("noOfInletPorts" )); %>">
      </div>
      <div class="col-xs-3">
        <label for="ex2">No of Outlet Ports(Dipping)</label>
        <input class="form-control" name="no_of_outlet_ports" id="no_of_outlet_ports" type="text" title="No of Outlet Ports" placeholder="No of Outlet Ports" value="<% out.println(resultmapport.get("noOfOutletPorts" )); %>">
      </div>
      <div class="col-xs-2">
        <label for="ex3">Cell Spreader</label>
        <input class="form-control" name="Cell_spreader" type="text" id="Cell_spreader" title="Cell Spreader" placeholder="Cell Spreader" value="<% out.println(resultmapport.get("cellSpreader" )); %>">
      </div>

      <div class="col-xs-3">
        <label for="ex4">Cell Sampler CoverSlip</label>
        <input class="form-control" id="Cell_sampler_coverSlip" name="Cell_sampler_coverSlip" type="text" title="Cell Sampler CoverSlip" placeholder="Cell Sampler CoverSlip" value="<% out.println(resultmapport.get("cellSamplerCoverSlip" )); %>">
      </div>
  
    </div>
    </div>
    <div class="well well-sm" style ="margin-left:2%">
    <h5 align=left><b>MATRIX :</b></h5>
<div class="form-group">
  
  <% 
   BasicDBObject valuesmatrix= (BasicDBObject) resultmap.get("matrix");
			Map resultmapmatrix=valuesmatrix.toMap();		 
	%>
	
     <div class="col-xs-2">
        <label for="No Matrix">No Matrix</label>
        <input class="form-control" id="no_matrix" name="no_matrix" type="text" title="No Matrix" placeholder="No Matrix" value="<% out.println(resultmapmatrix.get("noOfMatrix" )); %>">
      </div>
      
      <div class="col-xs-2">
        <label for="Other Type">Other Type Details</label>
        <input class="form-control" name="other_type" type="text" title="Other Type Details" placeholder="Other Type Details" value="<% out.println(resultmapmatrix.get("otherTypeDetails" )); %>">
         </div>
          <div class="col-xs-2">
        <label for="Other Type">OtherType Value</label>
        <input class="form-control" name="otherTypeVal" type="text" title="OtherType Value" placeholder="OtherType Value" value="<% out.println(resultmapmatrix.get("otherTypeValue" )); %>">
      </div>
      
      

<!-- <div class="funkyradio-primary col-md-2"style="float:center;margin-top:-6%;margin-bottom:2%;margin-left:35%"> -->
 <div class="col-xs-2">
<label for="checkbox8"><b>Carbonate Left </b></label>
            <input type="text" id="carbonate_left" name="carbonate_left" class="form-control" title="Carbonate Left" value="<% out.println(resultmapmatrix.get("carbonateLeft" )); %>"/>
            
        </div>
			
      
<!--  <div class="col-xs-3"style="float:center;margin-top:-8%;margin-bottom:2%;margin-left:53%">
        <label for="No. Plates"> PolyCarbonate No. Plates</label>
        <input class="form-control" name="No_Plates" type="text">
      </div>
      
      
     <div class="funkyradio"> -->

<!-- <div class="funkyradio-primary col-md-2"style="float:center;margin-top:-8%;margin-bottom:2%;margin-left:78%"> -->
 <div class="col-xs-2">
<label for="checkbox9"><b>Carbonate Right </b></label>
            <input class="form-control" type="text" name="carbonate_right" id="carbonate_right" title="Carbonate Right" value="<% out.println(resultmapmatrix.get("carbonateRight" )); %>" />
            
        </div>
			</div>
      </div>
      
      
      <div class="well well-sm" style ="margin-left:2%">
      <h5 align=left><b>SENSORS :</b></h5>
<div class="form-group">
<% 
   BasicDBObject valuessensor= (BasicDBObject) resultmap.get("sensor");
			Map resultmapsensor=valuessensor.toMap();		 
	%>
<div class="col-sm-2">
        <label for="no sensors">No Sensors :</label>
        <input class="form-control" name="no_sensors" id="no_sensors" type="text" title="No Sensors" placeholder="No Sensors" value="<% out.println(resultmapsensor.get("noOFSensor" )); %>">
      </div>
 
      <div class="form-group phdo">
     
    
     <% if(resultmapsensor.get("pH")!=null && resultmapsensor.get("pH").toString().equals("on")){%>
      <label class="btn btn-primary col-xs-4 h active">
				<input type="checkbox" autocomplete="off" name="pHCheckBox" checked>
				<span class="glyphicon glyphicon-ok"></span>
				 <label for="make">pH</label>
        <b>Make</b>    
        <input class="form-control" placeholder="pH_Make" name="ph_make" type="text" value="<% out.println(resultmapsensor.get("pH_make" )); %>">
      </label>
				<%} else {%>
				
					<label class="btn btn-primary col-xs-4 h">
				<input type="checkbox" autocomplete="off" name="pHCheckBox" >
				<span class="glyphicon glyphicon-ok"></span>
				 <label for="make">pH</label>
        <b>Make</b>    
        <input class="form-control" placeholder="pH_Make" name="ph_make" type="text" value="<% out.println(resultmapsensor.get("pH_make" )); %>">
      </label>
      
				<%} %>
			
 
	
           <% if(resultmapsensor.get("DO")!=null && resultmapsensor.get("DO").toString().equals("on")){%>
     <label class="btn btn-primary col-xs-4 h active" >
				<input type="checkbox" autocomplete="off" name="doCheckBox" checked>
				<span class="glyphicon glyphicon-ok"  ></span>
				<label for="make">DO</label>
					<b>Make</b>    			
        <input class="form-control" placeholder="do_Make" name="do_Make" type="text" value="<% out.println(resultmapsensor.get("do_Make" )); %>">
				<% } else {%>
				<label class="btn btn-primary col-xs-4 h " >
				<input type="checkbox" autocomplete="off" name="doCheckBox">
				<span class="glyphicon glyphicon-ok"  ></span>
				<label for="make">DO</label>
					<b>Make</b>    
			
		  
        <input class="form-control" placeholder="do_Make" name="do_Make" type="text" value="<% out.println(resultmapsensor.get("do_Make" )); %>">
				<%} %>
		
      </label>	</label></div>
    
      
  
      </div>
      </div>
   
      <div class="well well-sm" style ="margin-left:2%">
<div class="form-group">
<label for="text" class=" col-xs-6"style="text-align:left ;margin-left:0%">Remarks on the system.Details of AIR/GAS connections, Air Pumps etc:</label><br><br>
<div class=" col-xs-6"style="text-align:right;margin-left:45%;margin-top:-3%" >
<textarea name="Remarks"  type="text" class="form-control" title="Remarks on the system.Details of AIR/GAS connections, Air Pumps" placeholder="Remarks on the system.Details of AIR/GAS connections, Air Pumps"name="Remarks" rows="12" cols="40" >
<% out.println(resultmap.get("Remarks_OnTheSystem" )); %>
</textarea>
</div>
</div>
</div>
<div  style ="margin-left:2%;margin-top:-%;color:white">
<h6>QUALITY ASSURANCE: <h7>This Form Comes Into Effect From Jan 2014. See Page 6 For Approvals:</h7> </h6>
</div>
  <!-- <button type="button" class="btn btn-default previousBtn btn-lg pull-left prev-step"style="width:120px;border: 2px solid #fff">Previous</button> -->
  	<button onclick="myFunction()" class="btn btn-danger printBtn btn-lg pull-left" type="button">Print</button>
          <button class="btn btn-primary nextBtn btn-lg pull-right" type="button" style="margin-left:5px">Next</button>
  </div>
 <!-- second page starts from here --> 
 
  <div class="row setup-content" id="step-2">

<div class="well well-sm" style ="width:96% ;margin-left:2%;">
<div class="form-group"  >
<h3 align="center">PREPARATION OF BIOREACTOR CONTAINER</h3><br>
<% 
   BasicDBObject valuesbio= (BasicDBObject) resultmap.get("bioReactorContainer");
			Map resultmapbio=valuesbio.toMap();		 
	%>
<label class="control-label col-sm-3" for="if Bag:Bag irradiated">If Bag:Bag irradiated:</label>
<div class="col-sm-2">
<input type="text" class="form-control" name="ifbagbagirradiated" title="If Bag:Bag irradiated" placeholder="If Bag:Bag irradiated" value="<% out.println(resultmapbio.get("bagIrradiated:")); %>"><br>
</div> 
<label class="control-label col-sm-3" for="Irradation Batch No:">Irradation Batch No:</label>
<div class="col-sm-2">
<input type="text" class="form-control" name="irradationBatchNo" title="Irradation Batch No" placeholder="Irradation Batch No" value="<% out.println(resultmapbio.get("irradationBatchNo" )); %>"><br>
</div>
<label class="control-label col-sm-3" for="If vessel: Sterilized on">If Vessel:Sterilized on:</label>
<div class="col-sm-2">
<input type="text" class="form-control" name="vesselSterilizedOn" title="If Vessel:Sterilized on" placeholder="If Vessel:Sterilized on" value="<% out.println(resultmapbio.get("vesselSterilizedOn" )); %>"><br>
</div>
<label class="control-label col-sm-3" for="Method">Method:</label>
<div class="col-sm-2">
<input type="text" class="form-control" name="method"  title="Method" placeholder="Method" value="<% out.println(resultmapbio.get("method" )); %>"><br>
</div>
<label class="control-label col-sm-3" for="Sterilization Run NO:">Sterilization Run No:</label>
<div class="col-sm-2">
<input type="text" class="form-control" name="sterilizationRunno" title="Sterilization Run No" placeholder="Sterilization Run No" value="<% out.println(resultmapbio.get("sterilizationRunno" )); %>"><br>
</div>
<label class="control-label col-sm-3" for="QC Check OF Sterility">QC Check Of Sterility:</label>
<div class="col-sm-2">
<input type="text" class="form-control" name="QcCheckofSterility" title="QC Check Of Sterility" placeholder="QC Check Of Sterility" value="<% out.println(resultmapbio.get("QcCheckofSterility" )); %>"><br>
</div>
</div>
</div>



<div class="well well-sm" style ="width:96% ;margin-left:2%">
         <div class="form-group"  >
 <label class="control-label col-sm-1" for="cells">Cells:</label>
<div class="col-sm-2">
<input type="text" class="form-control" name="cells" title="Cells" placeholder="Cells" value="<% out.println(resultmap.get("cells" )); %>">

 </div>

<label class="control-label col-sm-2" for="Passage No" style="margin-left:-40px">Passage No:</label>
<div class="col-sm-2">
<input type="text" class="form-control" name="passageno" title="Passage No" placeholder="Passage No" value="<% out.println(resultmap.get("passageno" )); %>" >
</div>

<label class="control-label col-sm-1" for="Source" style="margin-left:0px">Source:</label>
<div class="col-sm-4">
<input type="text" class="form-control" name="source" title="Source" placeholder="Source" value="<% out.println(resultmap.get("source" )); %>">
  </div>
  </div>
</div>

<div class="well well-sm" style ="width:96% ;margin-left:2%">

	<div class="row">
      <div class="col-lg-12">
          
          <table class="table table-bordered " id="tableAddRow">
              <thead >
                  <tr >
                      <th style="text-align:center">CM No:</th>
        <th style="text-align:center">No.Containers:</th>
        <th style="text-align:center">Yield/Cont.</th>
        <th style="text-align:center">Cell Yield/sq.cm</th>
        <th style="text-align:center">Total cell:</th>
                      <th style="width:10px"><span class="glyphicon glyphicon-plus addBtn" id="addBtn_0"></span></th>
</tr>
              </thead>
              <tbody>
                 <% 
    BasicDBList valuescell =(BasicDBList)  resultmap.get("cellCm");
               
     if(valuescell.size() >0)
     {
	for(int i=0;i<valuescell.size();i++){
		
		 BasicDBObject dbObject1= (BasicDBObject) valuescell.get(i);
			Map resultmapcell=dbObject1.toMap(); 
			 
			%>
                  <tr id="tr_0">
                  
                  <%if(resultmapcell.containsKey("cmNo")) {%>
                  
                  
                  <td><input type="text" name="cmno" class="form-control" value="<% out.println(resultmapcell.get("cmNo")); %>"/></td>
                  <% } else {%>
				<td><input type="text" name="cmno" class="form-control" value=""/></td>                      
                   <% } %>
                   
                   <%if(resultmapcell.containsKey("noOfContainer")){ %>
                   
                   <td><input type="text" name="nocontainers" class="form-control nocontainers" value="<% out.println(resultmapcell.get("noOfContainer")); %>"/></td>
                   <%} else { %>
                   <td><input type="text" name="nocontainers" class="form-control nocontainers" value=""/></td>
                   <% } %>
                      
                      
                      <% if(resultmapcell.containsKey("yieldCount")){ %>
                      
                      <td><input type="text" name="yield" class="form-control" value="<% out.println(resultmapcell.get("yieldCount")); %>" /></td>
                      <%} else { %>
                      <td><input type="text" name="yield" class="form-control" value="" /></td>
                      <%} %>
                      <%if(resultmapcell.containsKey("cellYield")) {%>
                      <td><input type="text" name="cellyield" class="form-control" value="<% out.println(resultmapcell.get("cellYield")); %>"/></td>
                      <% } else { %>
                      <td><input type="text" name="cellyield" class="form-control" value=""/></td>
                      <% } %>
                       <% if(resultmapcell.containsKey("cellCount")){ %>
                       
                       <td><input type="text" name="totalcell" class="form-control" value="<% out.println(resultmapcell.get("cellCount")); %>"/></td>
                       <% } else{ %>
                       <td><input type="text" name="totalcell" class="form-control" value=""/></td>
                       <% } %>
                        
                      <td><span class="glyphicon glyphicon-minus addBtnRemove" id="addBtnRemove_0"></span></td>
                  </tr>
                  
<% 
			
	}  
     }
     else
     {
    %>
     <tr id="tr_0">
                 
                  <td><input type="text" name="cmno" class="form-control" value=""/></td>                      
                   <td><input type="text" name="nocontainers" class="form-control nocontainers" value=""/></td>
                      <td><input type="text" name="yield" class="form-control" value="" /></td>
                      <td><input type="text" name="cellyield" class="form-control" value=""/></td>
                       <td><input type="text" name="totalcell" class="form-control" value=""/></td>
                  
                        
                      <td><span class="glyphicon glyphicon-minus addBtnRemove" id="addBtnRemove_0"></span></td>
                  </tr>
    
    <%} %>
              </tbody>
          </table>
      </div>
    </div>

</div>

<div class="well well-sm" style ="width:96% ;margin-left:2%">
<div class="form-group"  >
<label class="control-label col-sm-1" for="TRYPSIN">Trypsin:</label>
<div class="col-sm-2">
<input type="text" class="form-control" name="trypsin" title="Trypsin" placeholder="Trypsin_R" value="<% out.println(resultmap.get("trypsin_R" )); %>">
</div>

<label class="control-label col-sm-2 " for="Medium of cells" style="margin-left:-5%;">Medium Of cells:</label>
<div class="col-sm-1 " style="margin-right:7%;margin-left:-2%">
<input type ="text" name="medium_of_cells" title="Medium Of cells"  style = "border-bottom:1px dashed black; width:150px;" value="<% out.println(resultmap.get("mediumOfCell" )); %>">
</div>	
<div class="col-sm-2" style="margin-left:-1%">
<input type="text" class="form-control" name="mediumofcells_R" title="Medium Of cells_R" placeholder="R" value="<% out.println(resultmap.get("mediumnOfCell_R" )); %>">

</div>
<label class="control-label col-sm-1" for="Serum" style="margin-left:-3%">Serum :</label>
<div class="col-sm-1" style="margin-right:7%;margin-left:-2%">

<input type ="text" name="serum" title="Serum"  style = " border-bottom:1px dashed black; width:150px; "  value="<% out.println(resultmap.get("serum" )); %>" >
<p style="margin-top:-20px;margin-left:140px">%</p>
</div>	
<div class="col-sm-2"style="margin-left:-1%">

<input type="text" class="form-control" name="serum_r" id="Serum"  title="Serum_R" placeholder="R" value="<% out.println(resultmap.get("serum_r" )); %>">
</div>
</div>
</div>
<div class="well well-sm" style ="width:96% ;margin-left:2%;border:1px solid black">
<div class="form-group"  >
<label class="control-label col-sm-3" style ="margin-left:-2%"for="total no of cells seeded"><h4><b>Total No. of Cells Seeded:</b></h4></label>
<div class="col-sm-2" style ="margin-left:-2%;margin-top:1%">
<input type="text" class="form-control" name="totalNoofCellsceeded" title="Total No. of Cells Seeded" placeholder="Total No. of Cells Seeded" value="<% out.println(resultmap.get("totalNoofCellsceeded" )); %>">
</div>

<label class="control-label col-sm-2" for="Cells Per ml" style ="margin-left:-6%"><h4><b>Cells Per ml:</b></h4></label>
<div class="col-sm-2"style ="margin-top:1%;margin-left:5%">
<input type="text" class="form-control" name="cellsPerML" title="Cells Per ml" placeholder="Cells Per ml" value="<% out.println(resultmap.get("cellsPerML" )); %>">
</div>

<label class="control-label col-sm-2" for="Cells per Sq.Cm" style ="margin-left:-2%"><h4><b>Cells per Sq.Cm:</b></h4></label>
<div class="col-sm-2" style ="margin-left:-2%">

<input style="margin-top:7%" type="text" class="form-control" name="cellsPerSqCm"  title="Cells per Sq.Cm" placeholder="Cells per Sq.Cm" value="<% out.println(resultmap.get("cellsPerSqCm" )); %>">
</div>
</div>
</div>
<div class="well well-sm" style ="width:96% ;margin-left:2%">
<div class="form-group"  >


<label class="control-label col-sm-2" for="Medium of cells" style="margin-left:-7%;">Medium #</label>
<div class="col-sm-1" style="margin-right:7%;margin-left:-2%">
<input type ="text" name="medium" style = "border-bottom:1px dashed black; width:150px;" title="Medium" placeholders="Medium" value="<% out.println(resultmap.get("medium" )); %>">
</div>	
<div class="col-sm-2" style="margin-left:-2%">
<input type="text" class="form-control" name="medium_r" title="Medium_R"placeholder="R" value="<% out.println(resultmap.get("medium_R" )); %>">

</div>
<label class="control-label col-sm-1" for="Serum" style="margin-left:-2%">Serum #</label>
<div class="col-sm-1" style="margin-right:7%;margin-left:-2%">

<input type ="text" name="serumNo" style = " border-bottom:1px dashed black; width:60px; " value="<% out.println(resultmap.get("serumNo" )); %>">
<p style="margin-top:-20px;margin-left:60px">%</p>
</div>
<div class="col-sm-1" style="margin-left:-9%">
<input type ="text" name="serumPer" style = " border-bottom:1px dashed black; width:30px; " value="<% out.println(resultmap.get("serumPercentage" )); %>">

</div>	
<div class="col-sm-2"style="margin-left:-4%">

<input type="text" class="form-control" name="serumNo_R" id="Serum" title="Serum_R" placeholder="R" value="<% out.println(resultmap.get("serumNo_R" )); %>">
</div>
<label class="control-label col-sm-2" style="margin-left:-25px" >Sodium Bicarbonate #:</label>
<div class="col-sm-2"style="margin-left:-2%">
<input type="text" class="form-control" name="sodiumbicarbonate" title="Sodium Bicarbonate_R" placeholder="R" value="<% out.println(resultmap.get("sodiumbiCarbonate" )); %>">
</div><br><br>
<label class="control-label col-sm-2" for="Medium of cells" style="margin-left:-4%;">Antibiotics 1 #</label>
<div class="col-sm-1" style="margin-right:7%;margin-left:-2%">
<input type ="text" name="antibiotics1"style = "border-bottom:1px dashed black; width:110px;" value="<% out.println(resultmap.get("antibiotics1" )); %>">
</div>	
<div class="col-sm-2" style="margin-left:-5%">
<input type="text" class="form-control" name="antibiotics1_r" title="Antibiotics 1_R" placeholder="R" value="<% out.println(resultmap.get("antibiotics1_R" )); %>">

</div>
<label class="control-label col-sm-2" for="Serum" style="margin-left:-7%">Antibiotics 2 #</label>
<div class="col-sm-1" style="margin-right:7%;margin-left:-2%">

<input type ="text" name="antibiotics2" style = " border-bottom:1px dashed black; width:90px; "  value="<% out.println(resultmap.get("antibiotics2" )); %>">

</div>
	
<div class="col-sm-2"style="margin-left:-7%">

<input type="text" class="form-control" name="antibiotics2_R" title="Antibiotics 2_R" placeholder="R" value="<% out.println(resultmap.get("antibiotics2_R" )); %>">
</div>
<label class="control-label col-sm-1" style="margin-left:-42px" >Other:</label>
<div class="col-sm-1" style="margin-left:-2%">

<input type ="text" name="other" style = " border-bottom:1px dashed black; width:85px; " value="<% out.println(resultmap.get("other")); %>">
<p style="margin-top:-20px;margin-left:91px">#:</p>
</div>
<div class="col-sm-2"style="margin-left:2%;">
<input type="text" class="form-control" name="other_r" title="Other_R" placeholder="R" value="<% out.println(resultmap.get("other_r" )); %>">
</div>
</div>
</div>
<div class="well well-sm" style ="width:96% ;margin-left:2%">
<div class="form-group"  >
<h4 style ="margin-left:2%"><b>Total Volume of Medium for Initiating the Culture :</b></h4>
<div class="col-xs-4 " style ="margin-left:45%; margin-top:-3%"  >
<input type="text"  class="form-control" name="totalVolumeOfMedium" title="Total Volume of Medium for Initiating the Culture" placeholder="Total Volume of Medium for Initiating the Culture" value="<% out.println(resultmap.get("totalVolumeOfMedium" )); %>">
</div>

  </div>
</div>
<div class="well well-sm" style ="width:96% ;margin-left:2%">
<div class="form-group">
<label for="text" class=" col-xs-6"style="text-align:left ;margin-left:0%">Method of Setting up of Culture :</label><br><br>
<div class=" col-xs-9 m"style="text-align:left;margin-left:22%;" >
<textarea  type="text" class="form-control" name="settingUpCulture" title="Method of Setting up of Culture" placeholder="Method of Setting up of Culture" rows="12" cols="40" >
<% out.println(resultmap.get("settingUpCulture" )); %>
</textarea>
</div>
</div>
</div>
<div class="well well-sm" style ="border:df1010 ;width:96% ;margin-left:2%">
<div class="form-group"style ="margin-left:20%">
<label for="text" class="control-label" style ="margin-left:-20%" ><b>Culture Set up By :</b></label><br>
<% 
   BasicDBObject valuessetup= (BasicDBObject) resultmap.get("cultureSetUpBy");
			Map resultmapsetup=valuessetup.toMap();		 
	%>
<label for="text" class="control-label col-xs-2">Name :</label>
<div class="col-xs-3">
<input type="text" class="form-control " name="name1" title="Name" placeholder="Name" value="<% out.println(resultmapsetup.get("name1" )); %>">
</div>

<label for="text" class="control-label col-xs-2"style="margin-left:-4%">Designation :</label>
<div class="col-xs-3">
<input type="text" class="form-control " name="designation1"  title="Designation" placeholder="Designation" value="<% out.println(resultmapsetup.get("designation1" )); %>">

</div><br><br>
<label for="text" class="control-label col-xs-2">Name : </label>
<div class="col-xs-3">
<input type="text" class="form-control" name="secondname" title="Name" placeholder="Name" value="<% out.println(resultmapsetup.get("name2" )); %>">
</div>

<label for="text" class="control-label col-xs-2"style="margin-left:-4%">Designation :</label>
<div class="col-xs-3">
<input type="text" class="form-control " name="seconddesignation" title="Designation" placeholder="Designation" value="<% out.println(resultmapsetup.get("designation2" )); %>">

</div><br>
</div>
</div><br><br>

<button onclick="myFunction()" class="btn btn-danger printBtn btn-lg pull-left" type="button" >Print</button>
   <button type="button" class="btn btn-default previousBtn btn-lg pull-left prev-step" style="width:120px;border: 2px solid #fff;margin-left:5px">Previous</button>
   	
          <button class="btn btn-primary nextBtn btn-lg pull-right" type="button" >Next</button>
  </div>
  <div class="row setup-content" id="step-3">
   


<div class="well well-sm" style ="width:96% ;margin-left:2%;">
<div class="form-group"  >
<p align="center"><b  >Observation, Sampling and Quality Control tests. Note that All samples should be labelled as "Sample TCC xx Day xxx Date xxx "</b></p> 
</div>
</div>


<div class="well well-sm" style ="width:96% ;margin-left:2%">
  <% 
  BasicDBList daysList =(BasicDBList) resultmap.get("sampleTccDay");
  
  request.setAttribute("daysList", daysList );
  
  %>
    <input id="totalDayAdded" type="hidden" value="${daysList.size()}">
    <input type="hidden" id="Arr" name="DayArr">
    
<div id="daysId">
  <c:forEach var="i" items="${daysList}" varStatus="count" >
   <br/><br/>
  
 <button id="day${count.index}" type="button" class="btn btn-info" data-toggle="collapse" data-target="#demo${count.index}" style="width:100%;">
 
 <span id="currentSnoId${count.index}">
 <c:if test="${i.date ==''}">
 S.no : ${count.index}
 </c:if>
 </span> 
  <span class="glyphicon glyphicon-calendar"></span> <span id="enteredDate${count.index}">  Date : ${i.date}</span>
  <span style=float:right>&#9660;
  </button>
   <div id="demo${count.index}" class="collapse">   
  <center> <span id="errorDate${count.index}"></span><center>
  <button  type="button" class="btn btn-default" value="remove" style="float: left;" onclick="removeDay(${count.index})">Remove</button>
   <div class="row">

<div class="col-md-3 col-md-offset-8">

<div class="well well-sm" style =" margin-right:8%">
<%-- <button type="button" value="remove" style="float:left" onclick="removeDay(${count.index})">Remove</button> --%>
<div class="form-group">
<label for="text" class="control-label col-xs-4">Date :</label>
<div class="col-xs-8">
<input type="text" class="form-control" onchange="validateDate('PreviousDate${count.index}','${count.index}')" onkeyup="changeDate('PreviousDate${count.index}','${count.index}')"  name="PreviousDate${count.index}"  id="PreviousDate${count.index}" value=${i.date}>(DD/MM/YYYY) (Ex:07/09/2017)
<input type=hidden name=noOfDays>
</div>
</div>
</div>
</div>
</div>
<div class="col-md-3  col-md-offset-4">
<div class="well well-sm" style ="margin-right:-4% ;margin-left:-25%;margin-top:-33%;">
<div class="form-group"style="float:center">
<label for="text" class="control-label col-xs-9" style ="margin-left:-2%">Sample Quantity: 10ml x 2 tubes</label>
<div class="col-xs-1" style ="margin-top:2%">
<c:if test="${i.sampleQuantity}">
<input type="checkbox"   name="sampleQuantity${count.index}"  checked="checked"  >
</c:if>
<c:if test="${i.sampleQuantity!='true'}">
<input type="checkbox"   name="sampleQuantity${count.index}" >
</c:if>
</div>
</div>
</div>
</div>
   <table class="table table-bordered ">
   
  
        <thead>
          <th> </th>
        <th><input style="text-align:center" type="text" class="form-control " name="Time1${count.index}"  value="${i.Hours1.Hours1}" placeholder= "Hours"></th>
        <th><input style="text-align:center" type="text" class="form-control" name="Time2${count.index}"  value="${i.Hours2.Hours2}" placeholder="Hours"></th>
        <th><input style="text-align:center" type="text" class="form-control" name="Time3${count.index}"  value="${i.Hours3.Hours3}" placeholder="Hours"></th>
        </thead>
        <tbody>
            <tr>
      <td><b>Physical Appearance of Culture fluid:</b></td> 
        <td><input type="text" class="form-control" name="physical1${count.index}" value="${i.Hours1.physicalApperence1}"></td>
        <td><input type="text" class="form-control" name="physical2${count.index}" value="${i.Hours2.physicalApperence2}"></td>
        <td><input type="text" class="form-control" name="physical3${count.index}" value="${i.Hours3.physicalApperence3}"></td>
     </tr>
        <tr>
        
        <td>
        <b>pH Culture fluid(Online
        <c:if test="${i.Hours2.phonline}">
        <input type="checkbox" name="phonline${count.index}" value="${i.Hours2.phonline}" checked="checked">
        </c:if>
        <c:if test="${i.Hours2.phonline!='true'}">
        <input type="checkbox" name="phonline${count.index}" value="${i.Hours2.phonline}" >
        </c:if>
        
        / Manual
        <c:if test="${i.Hours2.phmanual}">
        <input name="phmanual${count.index}" type="checkbox"  value="${i.Hours2.phmanual}" checked="checked">
        </c:if>
        <c:if test="${i.Hours2.phmanual!='true'}">
        <input name="phmanual${count.index}" type="checkbox"  value="${i.Hours2.phmanual}">
        </c:if>
        
        ):</td>
    <%--     <td><input type="text"  name="phonline"  value="${i.Hours2.phonline}" ></td>
        <td><input type="text"  name="phmanual"  value="${i.Hours2.phmanual}" ></td>  --%>
        <td><input type="text" class="form-control" name="ph_Culture1${count.index}" value="${i.Hours1.ph_Culture1}"></td>
        <td><input type="text" class="form-control" name="ph_Culture2${count.index}" value="${i.Hours2.ph_Culture2}"></td>
        <td><input type="text" class="form-control" name="ph_Culture3${count.index}" value="${i.Hours3.ph_Culture3}"></td>
   </tr>
           <tr>
        <td><b>dO2 Culture fluid(Online
        <c:if test="${i.Hours3.doonline}">
        <input type="checkbox" name="doonline${count.index}"  value="${i.Hours3.doonline}" checked="checked" >
        </c:if>
        <c:if test="${i.Hours3.doonline!='true'}">
        <input type="checkbox" name="doonline${count.index}" value="${i.Hours3.doonline}" >
        </c:if>
        / Manual
        <c:if test="${i.Hours3.domanual}">
        <input type="checkbox" name="domanual${count.index}" value="${i.Hours3.domanual}" checked="checked">):
        </c:if>
        <c:if test="${i.Hours3.domanual!='true'}">
        <input type="checkbox" name="domanual${count.index}" value="${i.Hours3.domanual}" >):
        </c:if>
        
        </td>
       <%--  <td><input type="text"  name="doonline"  value="${i.Hours3.doonline}" ></td>
        <td><input type="text"  name="domanual"  value="${i.Hours3.domanual}" ></td>  --%>
        <td><input type="text" class="form-control" name="do2_Culture1${count.index}" value="${i.Hours1.do2_Culture1}"></td>
        <td><input type="text" class="form-control" name="do2_Culture2${count.index}" value="${i.Hours2.do2_Culture2}"></td>
        <td><input type="text" class="form-control" name="do2_Culture3${count.index}" value="${i.Hours3.do2_Culture3}"></td><br><br>
      </tr>
        </tbody> 
    </table>
    <div class="form-group" >
<label for="text" class="control-label col-xs-4" style="margin-left:-7%">Glucose concentration: Test Method:</label>
<div class="col-xs-8" style="margin-left:5%">
<input type="text" class="form-control" name="glucose_concentration${count.index}"  value=${i.glucoseConcentration}>

</div>
</div>
    
    <div class="well well-sm" style ="width:96% ;margin-left:2%">
<table class="table table-bordered">
    <thead>
      <tr>
        <th>Per ml:</th>
        <th style="text-align:center">100&#956;g</th>
        <th style="text-align:center">200&#956;g</th>
        <th style="text-align:center">300&#956;g</th>
        <th style="text-align:center">400&#956;g</th>
        <th style="text-align:center">500&#956;g</th>
        <th style="text-align:center">600&#956;g</th>
      </tr>
    </thead>
    <tbody>
      <tr>
      <th class="col-xs-2">OD of Standard:</th>
        <td><input type="text" class="form-control" name="100g${count.index}" value="${i.odOfStandard.hundredG}"></td>
        <td><input type="text" class="form-control" name="200g${count.index}" value="${i.odOfStandard.twoHundredG}"></td>
        <td><input type="text" class="form-control" name="300g${count.index}" value="${i.odOfStandard.threeHundredG}"></td>
        <td><input type="text" class="form-control" name="400g${count.index}" value="${i.odOfStandard.fourHundredG}"></td>
        <td><input type="text" class="form-control" name="500g${count.index}" value="${i.odOfStandard.fiveHundredG}"></td>
        <td><input type="text" class="form-control" name="600g${count.index}" value="${i.odOfStandard.sixHundredG}"></td>
      </tr>
      
    </tbody>
  </table>
  </div>
  <div class="well well-sm" style ="border:df1010 ;width:96% ;margin-left:2%">
<div class="form-group">
<label for="text" class="control-label col-xs-3"style="text-align:left ;margin-left:2%">Gms/L : </label>
<div class="col-xs-2"style="margin-left:-1%">
<input type="text" class="form-control" name="gms${count.index}" value="${i.GmsL}">
</div>
<label for="text" class="control-label col-xs-3" style="margin-left:1%">OD of Test Sample :</label>
<div class="col-xs-3" style="margin-left:3%">
<input type="text" class="form-control" name="odOfTestSample${count.index}"  value="${i.odOfSample}">
</div>
</div>
</div>
<div class="well well-sm" style ="border:df1010 ;width:96% ;margin-left:2%">
<div class="form-group"style="margin-left:-3%">
<label for="text" class="control-label col-xs-4"style="text-align:left ;margin-left:4%">Media Conditioning, Additions and Remarks :</label>
<div class="col-xs-8"style="margin-left:-6%;height:-750%">
<textarea style="height:750%" name="mediaConditioningRemarks${count.index}" type="text" class="form-control" rows="14" cols="50" ><c:out value="${i.mediaConditioning_AdditionAndRemark}"></c:out> </textarea>
</div>
</div>
</div>   
  </div>
  </c:forEach>
  </div>
   
    
  <button type="button" value="Add Days" class="btn btn-primary" onclick="addNewDays()">Add Days</button>
  </div>



   
<br><br>

<button onclick="myFunction()" class="btn btn-danger printBtn btn-lg pull-left" type="button" >Print</button>
   <button  type="button" class="btn btn-default previousBtn btn-lg pull-left prev-step" style="width:120px;border: 2px solid #fff;margin-left:5px">Previous</button>
   
          <button class="btn btn-primary nextBtn btn-lg pull-right" type="button" >Next</button>
  </div>




<!--<div class="row">

</div> -->
       <div class="row setup-content" id="step-4">
   
        <div class="well well-sm" style ="width:96% ;margin-left:2%">
<div class="form-group"style="margin-left:-3%">
<label for="text" class=" col-xs-4"style="text-align:left ;margin-left:4%">TERMINATION OF CULTURE :</label>
<div class="col-xs-11"style="margin-left:6%;height:-950%">
<textarea type="text" class="form-control"  name="termination_culture"  title="TerminationOfCulture" rows="24" cols="50" ><% out.println(resultmap.get("TerminationCulture" )); %></textarea>
</div>
</div>
</div>
    <div class="well well-sm" style ="width:96% ;margin-left:2%">
<div class="form-group"style="margin-left:-3%">
<label for="text" class=" col-xs-4"style="text-align:left ;margin-left:4%">SUMMARY :</label>

<div class="col-xs-11"style="margin-left:6%;height:-450%">
<textarea type="text" class="form-control"  name="summary" rows="14" cols="50" title="Summary" ><% out.println(resultmap.get("Summary" )); %></textarea>
</div>
</div>
</div>
<div class="well well-sm" style ="border:df1010 ;width:96% ;margin-left:2%">
<div class="form-group">
<label for="text" class="control-label" style ="margin-left:2%" ><b>CONTROL & APPROVAL : This Form comes to effect from 1st january 2014.</b></label><br><br>
<% 
   BasicDBObject valuescontrol= (BasicDBObject) resultmap.get("Control&Approval");
			Map resultmapcontrol=valuescontrol.toMap();		 
	%>
<label for="text" class="control-label col-xs-2 "style ="margin-left:0%">Prepared by: </label>
<div class="col-xs-2">
<input type="text" class="form-control" name="Prepared_by" id="Prepared_by" value="<% out.println(resultmapcontrol.get("preparedby:" )); %>">
</div>


<label for="text" class="control-label col-xs-2"style ="margin-left:0%">Dept. Head :</label>
<div class="col-xs-2">
<input type="text" class="form-control " name="Dept_Head" id="Dept_Head" value="<% out.println(resultmapcontrol.get("DeptHead" )); %>">
</div>


<label for="text" class="control-label col-xs-2"style ="margin-left:0%">QAD: </label>
<div class="col-xs-2">
<input type="text" class="form-control" name="QAD" id="inputsource" value="<% out.println(resultmapcontrol.get("QAD" )); %>">
</div><br><br>
</div>
</div>
<button onclick="myFunction()" class="btn btn-danger printBtn btn-lg pull-left" type="button" >Print</button>
<button type="button" class="btn btn-default previousBtn btn-lg pull-left prev-step" style="width:120px;border: 2px solid #fff;margin-left:5px">Previous</button>
           <button class="btn btn-primary btn-lg pull-right" type="submit" name="save">Update</button>   
          
    </div>
   
   
    </div>
         <div class="row setup-content" id="step-5">    

<button> <a href="viewAllRecord.jsp" type="button" class="btn btn-warninig btn-lg pull-center">view all records</a></button>
 </div>
 
   <%
  }
mongoClient.close();
utilObj.mongoClient.close();
utilObj.serverMongoClient.close();
}else{
	mongoClient.close();
	utilObj.mongoClient.close();
	utilObj.serverMongoClient.close();
	 out.println("<div  style='color: red;'>NO RECORD FOUND</div>");
 }
}
 %>
  </form>
  

<script>

$(document).ready(function () {
	
	
	
	
	
	  var navListItems = $('div.setup-panel div a'),
	          allWells = $('.setup-content'),
	          allNextBtn = $('.nextBtn');

	  allWells.hide();

	  navListItems.click(function (e) {
	      e.preventDefault();
	      var $target = $($(this).attr('href')),
	              $item = $(this);

	      if (!$item.hasClass('disabled')) {
	          navListItems.removeClass('btn-primary').addClass('btn-default');
	          $item.addClass('btn-primary');
	          allWells.hide();
	          $target.show();
	          $target.find('input:eq(0)').focus();
	      }
	  });
	  $(".next-step").click(function (e) {

		  var $active = $('.wizard .nav-tabs li.active');
		  $active.next().removeClass('disabled');
		  nextTab($active);

		  });
		  $(".prev-step").click(function (e) {

		  var $active = $('.wizard .nav-tabs li.active');
		  prevTab($active);

		  });
	  allNextBtn.click(function(){
	      var curStep = $(this).closest(".setup-content"),
	          curStepBtn = curStep.attr("id"),
	          nextStepWizard = $('div.setup-panel div a[href="#' + curStepBtn + '"]').parent().next().children("a"),
	          curInputs = curStep.find("input[type='text'],input[type='url']"),
	          isValid = true;

	      $(".form-group").removeClass("has-error");
	      for(var i=0; i<curInputs.length; i++){
	          if (!curInputs[i].validity.valid){
	              isValid = false;
	              $(curInputs[i]).closest(".form-group").addClass("has-error");
	          }
	      }

	      if (isValid)
	          nextStepWizard.removeAttr('disabled').trigger('click');
	  });

	  $('div.setup-panel div a.btn-primary').trigger('click');
	    $('.addBtn').on('click', function () {
	        //var trID;
	        //trID = $(this).closest('tr'); // table row ID 
	        addTableRow();
	    });
	     $('.addBtnRemove').click(function () {
	        $(this).closest('tr').remove();  
	    })
	    var i = 1;
	    function addTableRow()
	    {
	        var tempTr = $('<tr><td><input type="text" name="cmno" class="form-control" title="CM No" placeholder="CM No"/></td><td><input type="text" name="nocontainers" class="form-control nocontainers" title="No.Containers" placeholder="No.Containers"/></td><td><input type="text" name="yield" class="form-control" title="Yield/Cont" placeholder="Yield/Cont."/></td><td><input type="text" name="cellyield" class="form-control" title="Cell Yield/sq.cm" placeholder="Cell Yield/sq.cm"/></td><td><input type="text" name="totalcell" class="form-control" title="TotalCell" placeholder="TotalCell"/></td><td><span class="glyphicon glyphicon-minus addBtnRemove" id="addBtn_' + i + '"></span></td></tr>').on('click', function () {
	           /* $(this).closest('tr').remove();  */
	           $(document.body).on('click', '.addBtnRemove', function (e) {
	                $(this).closest('tr').remove();  
	            });
	        });
	        $("#tableAddRow").append(tempTr)
	        i++;
	    }
	    $('.datepicker').datepicker({
	        format: 'mm/dd/yyyy',
	        startDate: '-3d'
	    });
	});
	

function myFunction() {
    window.print();
}
</script> 
</body>
</html>