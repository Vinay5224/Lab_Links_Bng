<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">


<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="https://code.jquery.com/jquery-3.3.7.min.js" defer></script>
  <script src="dist/js/bootstrap-checkbox.min.js" defer></script>
 <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/js/bootstrap-datepicker.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/css/bootstrap-datepicker3.css"/>
<title>TOROCELL CELL CULTURE</title>

<script type="text/javascript">


function removeDay(id)
{
	
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
   
	var daysHtml="<button id=day"+countDays+" type=button class=btn btn-info data-toggle=collapse data-target=#demo"+countDays+" style=width:100%;>Day"+countDays+"<span style=float:right>&#9660;</button>"
	daysHtml+="<div id=demo"+countDays+" class=collapse> <div class=row><div class=col-md-3 col-md-offset-8> <button type=button value=remove style=float:left onclick=removeDay('"+countDays+"')>Remove</button>"
	daysHtml+="<div class=well well-sm style = margin-right:8%><div class=form-group><label for=text class=control-label col-xs-4>Date :</label>"
	daysHtml+="<div class=col-xs-8><input type=text class=form-control name=PreviousDate"+countDays+" id=Date ><input type=hidden name=noOfDays> </div>"
	daysHtml+="</div></div></div></div><div class=col-md-3  col-md-offset-4><div class=well well-sm style =margin-right:-4% ;margin-left:-25%;margin-top:-33%;>"
	daysHtml+="<div class=form-groupstyle=float:center><label for=text class=control-label col-xs-9 style =margin-left:-2%>Sample Quantity: 10ml x 2 tubes</label>"
	daysHtml+="<div class=col-xs-1 style =margin-top:2%><input type=checkbox name=sampleQuantity"+countDays+"></div></div></div></div>"
	daysHtml+="<table class=table table-bordered ><thead><th> </th><th><input style=text-align:center type=text class=form-control  name=Time1"+countDays+" placeholder= Hours></th>"
	daysHtml+="<th><input style=text-align:center type=text class=form-control name=Time2"+countDays+" placeholder=Hours></th>"
	daysHtml+="<th><input style=text-align:center type=text class=form-control name=Time3"+countDays+" placeholder=Hours></th></thead>"
	daysHtml+="<tbody><tr><td><b>Physical Appearance of Culture fluid:</b></td><td><input type=text class=form-control name=physical1"+countDays+"></td>"
	daysHtml+="<td><input type=text class=form-control name=physical2"+countDays+"></td><td><input type=text class=form-control name=physical3"+countDays+"></td></tr>"
	daysHtml+="<tr><td><b>pH Culture fluid(Online <input type=checkbox name=phonline"+countDays+" autocomplete=off> / Manual<input type=checkbox name=phmanual"+countDays+" autocomplete=off>):</td><td><input type=text class=form-control name=ph_Culture1"+countDays+"></td>"
	daysHtml+="<td><input type=text class=form-control name=ph_Culture2"+countDays+"></td><td><input type=text class=form-control name=ph_Culture3"+countDays+"></td></tr>"
	daysHtml+="<tr><td><b>dO2 Culture fluid(Online<input type=checkbox name=doonline"+countDays+" autocomplete=off> / Manual <input type=checkbox name=domanual"+countDays+" autocomplete=off>):</td><td><input type=text class=form-control name=do2_Culture1"+countDays+"></td>"
	daysHtml+="<td><input type=text class=form-control name=do2_Culture2"+countDays+"></td><td><input type=text class=form-control name=do2_Culture3"+countDays+"></td><br><br></tr></tbody></table>"
	daysHtml+="<div class=form-group ><label for=text class=control-label col-xs-4 style=margin-left:0%>Glucose concentration: Test Method:</label>"
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
	

	});
function addNewDays()
{
	countDays=countDays+1;

	var daysHtml="<button id=day"+countDays+" type=button class=btn btn-info data-toggle=collapse data-target=#demo"+countDays+" style=width:100%;>Day"+countDays+"<span style=float:right>&#9660;</button>"
	daysHtml+="<div id=demo"+countDays+" class=collapse> <div class=row><div class=col-md-3 col-md-offset-8><button type=button value=remove style=float:left onclick=removeDay('"+countDays+"')>Remove</button>"
	daysHtml+="<div class=well well-sm style = margin-right:8%><div class=form-group><label for=text class=control-label col-xs-4>Date :</label>"
	daysHtml+="<div class=col-xs-8><input type=text class=form-control name=PreviousDate"+countDays+" id=Date ><input type=hidden name=noOfDays> </div>"
	daysHtml+="</div></div></div></div><div class=col-md-3  col-md-offset-4><div class=well well-sm style =margin-right:-4% ;margin-left:-25%;margin-top:-33%;>"
	daysHtml+="<div class=form-groupstyle=float:center><label for=text class=control-label col-xs-9 style =margin-left:-2%>Sample Quantity: 10ml x 2 tubes</label>"
	daysHtml+="<div class=col-xs-1 style =margin-top:2%><input type=checkbox name=sampleQuantity"+countDays+"></div></div></div></div>"
	daysHtml+="<table class=table table-bordered ><thead><th> </th><th><input style=text-align:center type=text class=form-control  name=Time1"+countDays+" placeholder= Hours></th>"
	daysHtml+="<th><input style=text-align:center type=text class=form-control name=Time2"+countDays+" placeholder=Hours></th>"
	daysHtml+="<th><input style=text-align:center type=text class=form-control name=Time3"+countDays+" placeholder=Hours></th></thead>"
	daysHtml+="<tbody><tr><td><b>Physical Appearance of Culture fluid:</b></td><td><input type=text class=form-control name=physical1"+countDays+"></td>"
	daysHtml+="<td><input type=text class=form-control name=physical2"+countDays+"></td><td><input type=text class=form-control name=physical3"+countDays+"></td></tr>"
	daysHtml+="<tr><td><b>pH Culture fluid(Online <input type=checkbox name=phonline"+countDays+" >/ Manual <input type=checkbox name=phmanual"+countDays+" >):</td><td><input type=text class=form-control name=ph_Culture1"+countDays+"></td>"
	daysHtml+="<td><input type=text class=form-control name=ph_Culture2"+countDays+"></td><td><input type=text class=form-control name=ph_Culture3"+countDays+"></td></tr>"
	daysHtml+="<tr><td><b>dO2 Culture fluid(Online <input type=checkbox name=doonline"+countDays+" >/ Manual <input type=checkbox name=domanual"+countDays+" >):</td><td><input type=text class=form-control name=do2_Culture1"+countDays+"></td>"
	daysHtml+="<td><input type=text class=form-control name=do2_Culture2"+countDays+"></td><td><input type=text class=form-control name=do2_Culture3"+countDays+"></td><br><br></tr></tbody></table>"
	daysHtml+="<div class=form-group ><label for=text class=control-label col-xs-4 style=margin-left:0%>Glucose concentration: Test Method:</label>"
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

	
}
/* function checkUniquOrNot()
{
	
	var tcc = $("#uniqueTcc").val();

	var dat = $("#uniqueDate").val();
	if(tcc !=null && dat !=null)
		{
	
		$.ajax({			 
		      type: "POST",
		      url: "getRecord.jsp",
		      data: {	                		      	 
		    	  tcc:tcc,
		    	  dat:dat
		    	  
		      },
		      success: function(data) {
		    	  
		      	 if(data=="true")
		      		 {
		      		 
		      		$("#uniqueTcc").val("");
		      		$("#uniqueDate").val("");
		      		 }
		      },
		       error: function() {
		           
		      },
		      complete: function() {
		  
		      }
		    });  

		}
	} */
	

</script>
<script type="text/javascript">
$(document).ready(function () {
	
	 
	 
	 $("#toroCellForm")
		.submit(
				function(event) {

				
					var tcc = $("#uniqueTcc").val();

					var dat = $("#uniqueDate").val();

					if (tcc != null && tcc != ""
							&& dat != null && dat != "") {

					} else {

						alert("Please Enter Tcc & Date");
						return false;
					}

				});
	    });
	    
function checkValidation()
{
     
	
	 var ID =$("#uniqueTcc").val();
	 var datee=$("#uniqueDate").val();
	 var f=$('#checkbox1').is(":checked"); // $("#checkbox1").val();
	 var g=$('#checkbox2').is(":checked"); //$("#checkbox2").val(); 
	 
 
	 
	 if( (ID !== "") && (datee!=="")){
		
		////////////////////////// 
		  $.ajax({
			 
			 url : 'ViewRec',
			  
				data : {
					 
					ID:ID,
					datee:datee,
					f:f,
					g:g
					
					
				},
				success : function(responseText) {
					console.log("res"+responseText);
					
					if(responseText==="1"){
						
						
						$("#snackbar").text("Record with TCC :"+ID+" and Date:"+datee+" already found. Please enter different TCC/Date");
						$("#uniqueTcc").val("");				
						$("#uniqueDate").val("");
			 	var x = document.getElementById("snackbar")
					    x.className = "show";
					    setTimeout(function(){ x.className = x.className.replace("show", ""); }, 5000); 
						 
					} 
			}
			}); 
	 }
/* 	 var ID =$("#uniqueTcc").val();
	 var datee=$("#uniqueDate").val();
	 var f=$('#checkbox1').is(":checked"); // $("#checkbox1").val();
	 var g=$('#checkbox2').is(":checked"); //$("#checkbox2").val(); 
	 
 System.out.println(f+"===============");
 System.out.println(g);
 
	 
	 if( (ID !== "") && (datee!=="")){
		
		////////////////////////// 
		  $.ajax({
			 
			 url : 'ViewRec',
			  
				data : {
					 
					ID:ID,
					datee:datee,
					f:f,
					g:g
					
					
				},
				success : function(responseText) {
					console.log(responseText);
					
					if(responseText==="1"){
						$("#uniqueTcc").val("");
						$("#uniqueDate").val("");
			 	var x = document.getElementById("snackbar")
					    x.className = "show";
					    setTimeout(function(){ x.className = x.className.replace("show", ""); }, 3000); 
						 
					} 
			}
			}); 
	
	 }
	 
 */	 
	 
}
</script>
</head>

<style>
#snackbar {
    visibility: hidden;
    min-width: 250px;
    margin-left: -125px;
    background-color:red;
    color: white;
    text-align: center;
    border-radius: 2px;
    padding: 16px;
    position: fixed;
    z-index: 1;
    left: 50%;
    bottom: 30px;
    font-size: 17px;
}

#snackbar.show {
    visibility: visible;
    -webkit-animation: fadein 0.5s, fadeout 0.5s 2.5s;
    animation: fadein 0.5s, fadeout 0.5s 2.5s;
}


@-webkit-keyframes fadein {
    from {bottom: 0; opacity: 0;} 
    to {bottom: 30px; opacity: 1;}
}

@keyframes fadein {
    from {bottom: 0; opacity: 0;}
    to {bottom: 30px; opacity: 1;}
}

@-webkit-keyframes fadeout {
    from {bottom: 30px; opacity: 1;} 
    to {bottom: 0; opacity: 0;}
}

@keyframes fadeout {
    from {bottom: 30px; opacity: 1;}
    to {bottom: 0; opacity: 0;}
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
    margin-top:9px;
    margin-left:18px;
    position: absolute;
    content: " ";
    width: 65%;
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
<a href="homePage.jsp"><img src="Lablinkslogo.png" class="media-object" style="width:230px ; height:100px"align="left"/></a>
</div>

  </div>
  </div>
  </div>
</div><br>


<form action="Torocell" class="form-horizontal" method="post" id="toroCellForm">
<div class="container">
<a style="float: right;width: 150px ; margin-left:-15px" href="Microbial.jsp" type="button" class="btn btn-default btn-circle" >Microbial Cell Culture</a>

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
        <a href="#step-4" type="button" style="margin-left:20px" class="btn btn-default btn-circle" >4</a>
        <p style="color:white;margin-left:9px"><b>Enter the Summary & Remarks </b></p>
      </div>
     <!--  <div class="stepwizard-step">
        
        <a href="#step-5" type="button" class="btn btn-default btn-circle" >5</a> 
        <p style="color:white"><b>Previous Records</b></p>
      </div> -->
  <a style="float: right;width: 150px ; margin-left:-15px" href="viewAllRecord.jsp" type="button" class="btn btn-default btn-circle" >Show Existing Records</a>
    
    </div>
  
  </div>
   
<!--  <form role="form" class="form-horizontal" action="" method="post"> -->
  
  <div class="row setup-content" id="step-1">
  <div class="row">
<div class="col-md-3 ">

<div class="well well-sm" style ="margin-left:9%">
<div class="form-group">
<label for="text" class="control-label col-xs-5"><span style="color: red;">*</span>TCC :</label>
<div class="col-xs-5">
<input type="text" class="form-control" name="tcc" id="uniqueTcc" title="TCC" placeholder="TCC" onblur="checkValidation()">
</div>
</div>
</div>

</div>




<div class="col-md-3 col-md-offset-6">

 <div class="well well-sm date" >
<div class="form-group ">
<label for="text" class="control-label col-xs-4"><span style="color: red;">*</span>Date :</label>
<div class="col-xs-8 "data-provide=datepicker">
<input type="text" class="form-control u" name="Date" id="uniqueDate" title="Date" placeholder="Date" onchange="checkValidation()" >
<!-- <div class="well well-sm date" >
<div class="form-group ">
<label for="text" class="control-label col-xs-4">Date :</label>
<div class="col-xs-8 "data-provide=datepicker">
<input type="text" class="form-control u" name="Date" id="uniqueDate" title="Date" placeholder="Date"  > -->
</div>
</div>
</div>

</div>


<div class="well well-sm col-md-5  col-md-offset-3 rare" >
<div class="btn " data-toggle="buttons">
			
			<label class="btn btn-primary">
				<input type="radio" name="pvc_pp_gl_ss_suspension" title="PVC/PP/GL/SS SUSPENSION" id="checkbox1" autocomplete="off" chacked onclick="checkValidation()">
				<span class="glyphicon glyphicon-ok"></span>
			<b>PVC/PP/GL/SS SUSPENSION</b></label>

			<label class="btn btn-primary">
				<input type="radio" name="pp_ss" title="PP/SS MACROMATRIX" id="checkbox2" autocomplete="off" onclick="checkValidation()">
				<span class="glyphicon glyphicon-ok"></span>
			<b>PP/SS MACROMATRIX</b></label>

			
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
<input type="text" class="form-control" name="torocell_system_id_no" id="torocell_system_id_no" title="TOROCELL SYSTEM ID NO" placeholder="TOROCELL SYSTEM ID NO">
</div>
<label for="text" class="control-label col-xs-2" style="margin-right:4%;margin-left:1%">Barcode : </label>
<div class="col-xs-3" style="margin-left:5%">
<textarea class="form-control" name="barcode" rows="1" id="Barcode" title="Barcode" placeholder="Barcode"></textarea>
</div>
</div>
</div> 

  <div class="well well-sm" style ="margin-left:2%">
  <h5><b>Details Of Assembly:</b> Mark 	&#10004; as appropriate. Use '&#x2716;' to deselect</h5><br>

<p align=left><b>VESSEL TYPE :</b></p>
 <div class="btn" data-toggle="buttons">
			
			<label class="btn btn-primary col-md-2 p">
				<input type="checkbox" autocomplete="off" name="pvc">
				<span class="glyphicon glyphicon-ok"></span>
				<b>PVC</b>
			</label>

			<label class="btn btn-primary col-md-2 p">
				<input type="checkbox" autocomplete="off" name="pp">
				<span class="glyphicon glyphicon-ok"></span>
				 <b>PP</b>
			</label>			
		
			<label class="btn btn-primary col-md-3 p">
				<input type="checkbox" autocomplete="off" name="ss_small_lit">
				<span class="glyphicon glyphicon-ok"></span>
				 <b>SS Small Lit</b>
			</label>	
			<label class="btn btn-primary col-md-4 p">
			
				<input type="checkbox" autocomplete="off" name="ss_big_lit">
				<span class="glyphicon glyphicon-ok"></span>
			         <b>SS Big Lit</b></label>			

			<label class="btn btn-primary col-md-4 new">
			
				<input type="checkbox" autocomplete="off" name="conditional_vessel">
				<span class="glyphicon glyphicon-ok"></span>
			 <b>Conditional Vessel</b></label>						
		</div>
		</div>
     <div class="well well-sm" style ="margin-left:2%">
     <h5 align=left><b>PORTS :</b></h5>

 <div class="form-group">
      <div class="col-xs-2">
        <label for="ex1">No of Inlet ports<b></b></label>
        <input class="form-control" name="no_of_inlet_ports" type="text" title="No of Inlet ports" placeholder="No of Inlet ports">
      </div>
      <div class="col-xs-3">
        <label for="ex2">No of Outlet Ports(Dipping)</label>
        <input class="form-control" name="no_of_outlet_ports" type="text" title="No of Outlet Ports" placeholder="No of Outlet Ports">
      </div>
      <div class="col-xs-2">
        <label for="ex3">Cell Spreader</label>
        <input class="form-control" name="Cell_spreader" type="text" title="Cell Spreader" placeholder="Cell Spreader">
      </div>

      <div class="col-xs-3">
        <label for="ex4">Cell Sampler CoverSlip</label>
        <input class="form-control" name="Cell_sampler_coverSlip" type="text" title="Cell Sampler CoverSlip" placeholder="Cell Sampler CoverSlip">
      </div>
  
    </div>
    </div>
    <div class="well well-sm" style ="margin-left:2%">
    <h5 align=left><b>MATRIX :</b></h5>
<div class="form-group">
  
     <div class="col-xs-2">
        <label for="No Matrix">No Matrix</label>
        <input class="form-control" name="no_matrix" type="text" title="No Matrix" placeholder="No Matrix">
      </div>
      
      <div class="col-xs-2">
        <label for="Other Type">Other Type Details</label>
        <input class="form-control" name="other_type" type="text" title="Other Type Details" placeholder="Other Type Details">
         </div>
          <div class="col-xs-2">
        <label for="Other Type">OtherType Value</label>
        <input class="form-control" name="otherTypeVal" type="text" title="OtherType Value" placeholder="OtherType Value">
      </div>
      
      

<!-- <div class="funkyradio-primary col-md-2"style="float:center;margin-top:-6%;margin-bottom:2%;margin-left:35%"> -->
 <div class="col-xs-2">
<label for="checkbox8"><b>Carbonate Left </b></label>
            <input type="text" name="carbonate_left" class="form-control" title="Carbonate Left"  placeholder="Carbonate Left"/>
            
        </div>
			
      
<!--  <div class="col-xs-3"style="float:center;margin-top:-8%;margin-bottom:2%;margin-left:53%">
        <label for="No. Plates"> PolyCarbonate No. Plates</label>
        <input class="form-control" name="No_Plates" type="text">
      </div>
      
      
     <div class="funkyradio"> -->

<!-- <div class="funkyradio-primary col-md-2"style="float:center;margin-top:-8%;margin-bottom:2%;margin-left:78%"> -->
 <div class="col-xs-2">
<label for="checkbox9"><b>Carbonate Right </b></label>
            <input class="form-control" type="text" name="carbonate_right" title="Carbonate Right" placeholder="Carbonate Right"/>
            
        </div>
			</div>
      </div>
      
      
      <div class="well well-sm" style ="margin-left:2%">
      <h5 align=left><b>SENSORS :</b></h5>
<div class="form-group">
<div class="col-sm-2">
        <label for="no sensors">No Sensors :</label>
        <input class="form-control" name="no_sensors" id="no_sensors" type="text" title="No Sensors" placeholder="No Sensors">
      </div>
 <div class="form-group phdo">
      <label class="btn btn-primary col-xs-4 h">
				<input type="checkbox" autocomplete="off" name="pHCheckBox">
				<span class="glyphicon glyphicon-ok"></span>
			<b>pH</b>    
        <label for="make">Make</label>
        <input class="form-control" placeholder="pH_Make" name="ph_make" type="text">
      </label>
     <label class="btn btn-primary col-xs-4 h">
				<input type="checkbox" autocomplete="off">
				<span class="glyphicon glyphicon-ok" name="doCheckBox"></span>
			<b>DO</b>    
        <label for="make">Make</label>
        <input class="form-control" placeholder="Do Make" name="do_Make" name="make" type="text">
      </div></label>
  
      </div>
      </div>
      <div class="well well-sm" style ="margin-left:2%">
<div class="form-group">
<label for="text" class=" col-xs-6"style="text-align:left ;margin-left:0%">Remarks on the system.Details of AIR/GAS connections, Air Pumps etc:</label><br><br>
<div class=" col-xs-6"style="text-align:right;margin-left:45%;margin-top:-3%" >
<textarea name="Remarks"  type="text" class="form-control" title="Remarks on the system.Details of AIR/GAS connections, Air Pumps" placeholder="Remarks on the system.Details of AIR/GAS connections, Air Pumps" name="Remarks" rows="12" cols="40" ></textarea>
</div>
</div>
</div>
<div  style ="margin-left:2%;margin-top:-%;color:white">
<h6>QUALITY ASSURANCE: <h7>This Form Comes Into Effect From Jan 2014. See Page 6 For Approvals:</h7> </h6>
</div>
  <!-- <button type="button" class="btn btn-default previousBtn btn-lg pull-left prev-step"style="width:120px;border: 2px solid #fff">Previous</button> -->
  
          <button class="btn btn-primary nextBtn btn-lg pull-right" type="button" >Next</button>
  </div>
 <!-- second page starts from here --> 
 
  <div class="row setup-content" id="step-2">
  <div class="row">



</div>
<div class="well well-sm" style ="width:96% ;margin-left:2%;">
<div class="form-group"  >
<h3 align="center">PREPARATION OF BIOREACTOR CONTAINER</h3><br>
<label class="control-label col-sm-3" for="if Bag:Bag irradiated">If Bag:Bag irradiated:</label>
<div class="col-sm-2">
<input type="text" class="form-control" name="ifbagbagirradiated" title="If Bag:Bag irradiated" placeholder="If Bag:Bag irradiated" ><br>
</div> 
<label class="control-label col-sm-3" for="Irradation Batch No:">Irradation Batch No:</label>
<div class="col-sm-2">
<input type="text" class="form-control" name="irradationBatchNo" title="Irradation Batch No" placeholder="Irradation Batch No" ><br>
</div>
<label class="control-label col-sm-3" for="If vessel: Sterilized on">If Vessel:Sterilized on:</label>
<div class="col-sm-2">
<input type="text" class="form-control" name="vesselSterilizedOn" title="If Vessel:Sterilized on" placeholder="If Vessel:Sterilized on" ><br>
</div>
<label class="control-label col-sm-3" for="Method">Method:</label>
<div class="col-sm-2">
<input type="text" class="form-control" name="method"  title="Method" placeholder="Method"><br>
</div>
<label class="control-label col-sm-3" for="Sterilization Run NO:">Sterilization Run No:</label>
<div class="col-sm-2">
<input type="text" class="form-control" name="sterilizationRunno" title="Sterilization Run No" placeholder="Sterilization Run No" ><br>
</div>
<label class="control-label col-sm-3" for="QC Check OF Sterility">QC Check Of Sterility:</label>
<div class="col-sm-2">
<input type="text" class="form-control" name="QcCheckofSterility" title="QC Check Of Sterility" placeholder="QC Check Of Sterility" ><br>
</div>
</div>
</div>



<div class="well well-sm" style ="width:96% ;margin-left:2%">
         <div class="form-group"  >
 <label class="control-label col-sm-1" for="cells">Cells:</label>
<div class="col-sm-2">
<input type="text" class="form-control" name="cells" title="Cells" placeholder="Cells" >

 </div>

<label class="control-label col-sm-2" for="Passage No" style="margin-left:-40px">Passage No:</label>
<div class="col-sm-2">
<input type="text" class="form-control" name="passageno" title="Passage No" placeholder="Passage No"  >
</div>

<label class="control-label col-sm-2" for="Source" style="margin-left:-70px">Source:</label>
<div class="col-sm-4">
<input type="text" class="form-control" name="source" title="Source" placeholder="Source" >
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
                  <tr id="tr_0">
                       <td><input type="text" name="cmno" class="form-control"/></td>
                      <td><input type="text" name="nocontainers" class="form-control" /></td>
                      <td><input type="text" name="yield" class="form-control" /></td>
                       <td><input type="text" name="cellyield" class="form-control"/></td>
                        <td><input type="text" name="totalcell" class="form-control"/></td>
                      <td><span class="glyphicon glyphicon-minus addBtnRemove" id="addBtnRemove_0"></span></td>
                  </tr>
              </tbody>
          </table>
      </div>
    </div>

</div>

<div class="well well-sm" style ="width:96% ;margin-left:2%">
<div class="form-group"  >
<label class="control-label col-sm-1" for="TRYPSIN">Trypsin:</label>
<div class="col-sm-2">
<input type="text" class="form-control" name="trypsin" title="Trypsin" placeholder="Trypsin_R">
</div>

<label class="control-label col-sm-2 " for="Medium of cells" style="margin-left:-5%;">Medium Of cells:</label>
<div class="col-sm-1 " style="margin-right:7%;margin-left:-2%">
<input type ="text" name="medium_of_cells" title="Medium Of cells"  style = "border-bottom:1px dashed black; width:150px;" >
</div>	
<div class="col-sm-2" style="margin-left:-1%">
<input type="text" class="form-control" name="mediumofcells_R" title="Medium Of cells_R" placeholder="R" >

</div>
<label class="control-label col-sm-1" for="Serum" style="margin-left:-3%">Serum :</label>
<div class="col-sm-1" style="margin-right:7%;margin-left:-2%">

<input type ="text" name="serum" title="Serum"  style = " border-bottom:1px dashed black; width:150px; "  >
<p style="margin-top:-20px;margin-left:140px">%</p>
</div>	
<div class="col-sm-2"style="margin-left:-1%">

<input type="text" class="form-control" name="serum_r" id="Serum"  title="Serum_R" placeholder="R" >
</div>
</div>
</div>
<div class="well well-sm" style ="width:96% ;margin-left:2%;border:1px solid black">
<div class="form-group"  >
<label class="control-label col-sm-3" style ="margin-left:-2%"for="total no of cells seeded"><h4><b>Total No. of Cells Seeded:</b></h4></label>
<div class="col-sm-2" style ="margin-left:-2%;margin-top:1%">
<input type="text" class="form-control" name="totalNoofCellsceeded" title="Total No. of Cells Seeded" placeholder="Total No. of Cells Seeded">
</div>

<label class="control-label col-sm-2" for="Cells Per ml" style ="margin-left:-6%"><h4><b>Cells Per ml:</b></h4></label>
<div class="col-sm-2"style ="margin-top:1%;margin-left:5%">
<input type="text" class="form-control" name="cellsPerML" title="Cells Per ml" placeholder="Cells Per ml"  >
</div>

<label class="control-label col-sm-2" for="Cells per Sq.Cm" style ="margin-left:-2%"><h4><b>Cells per Sq.Cm:</b></h4></label>
<div class="col-sm-2" style ="margin-left:-2%">

<input style="margin-top:7%" type="text" class="form-control" name="cellsPerSqCm"  title="Cells per Sq.Cm" placeholder="Cells per Sq.Cm">
</div>
</div>
</div>
<div class="well well-sm" style ="width:96% ;margin-left:2%">
<div class="form-group"  >


<label class="control-label col-sm-2" for="Medium of cells" style="margin-left:-7%;">Medium #</label>
<div class="col-sm-1" style="margin-right:7%;margin-left:-2%">
<input type ="text" name="medium" style = "border-bottom:1px dashed black; width:150px;" title="Medium" placeholders="Medium" >
</div>	
<div class="col-sm-2" style="margin-left:-2%">
<input type="text" class="form-control" name="medium_r" title="Medium_R"placeholder="R" >

</div>
<label class="control-label col-sm-1" for="Serum" style="margin-left:-2%">Serum #</label>
<div class="col-sm-1" style="margin-right:7%;margin-left:-2%">

<input type ="text" name="serumNo" style = " border-bottom:1px dashed black; width:60px; "  >
<p style="margin-top:-20px;margin-left:60px">%</p>
</div>
<div class="col-sm-1" style="margin-left:-9%">
<input type ="text" name="serumPer" style = " border-bottom:1px dashed black; width:30px; "  >

</div>	
<div class="col-sm-2"style="margin-left:-4%">

<input type="text" class="form-control" name="serumNo_R" id="Serum" title="Serum_R" placeholder="R" >
</div>
<label class="control-label col-sm-2" style="margin-left:-25px" >Sodium Bicarbonate #:</label>
<div class="col-sm-2"style="margin-left:-2%">
<input type="text" class="form-control" name="sodiumbicarbonate" title="Sodium Bicarbonate_R" placeholder="R">
</div><br><br>
<label class="control-label col-sm-2" for="Medium of cells" style="margin-left:-4%;">Antibiotics 1 #</label>
<div class="col-sm-1" style="margin-right:7%;margin-left:-2%">
<input type ="text" name="antibiotics1"style = "border-bottom:1px dashed black; width:110px;" >
</div>	
<div class="col-sm-2" style="margin-left:-5%">
<input type="text" class="form-control" name="antibiotics1_r" title="Antibiotics 1_R" placeholder="R" >

</div>
<label class="control-label col-sm-2" for="Serum" style="margin-left:-7%">Antibiotics 2 #</label>
<div class="col-sm-1" style="margin-right:7%;margin-left:-2%">

<input type ="text" name="antibiotics2" style = " border-bottom:1px dashed black; width:90px; "  >

</div>
	
<div class="col-sm-2"style="margin-left:-7%">

<input type="text" class="form-control" name="antibiotics2_R" title="Antibiotics 2_R" placeholder="R" >
</div>
<label class="control-label col-sm-2" style="margin-left:-140px" >Other:</label>
<div class="col-sm-1" style="margin-left:-2%">

<input type ="text" name="other" style = " border-bottom:1px dashed black; width:85px; "  >
<p style="margin-top:-20px;margin-left:91px">#:</p>
</div>
<div class="col-sm-2"style="margin-left:2%;">
<input type="text" class="form-control" name="other_r" title="Other_R" placeholder="R">
</div>
</div>
</div>
<div class="well well-sm" style ="width:96% ;margin-left:2%">
<div class="form-group"  >
<h4 style ="margin-left:2%"><b>Total Volume of Medium for Initiating the Culture :</b></h4>
<div class="col-xs-4 " style ="margin-left:45%; margin-top:-3%"  >
<input type="text"  class="form-control" name="totalVolumeOfMedium" title="Total Volume of Medium for Initiating the Culture" placeholder="Total Volume of Medium for Initiating the Culture">
</div>

  </div>
</div>
<div class="well well-sm" style ="width:96% ;margin-left:2%">
<div class="form-group">
<label for="text" class=" col-xs-6"style="text-align:left ;margin-left:0%">Method of Setting up of Culture :</label><br><br>
<div class=" col-xs-9 m"style="text-align:left;margin-left:22%;" >
<textarea  type="text" class="form-control" name="settingUpCulture" title="Method of Setting up of Culture" placeholder="Method of Setting up of Culture" rows="12" cols="40" ></textarea>
</div>
</div>
</div>
<div class="well well-sm" style ="border:df1010 ;width:96% ;margin-left:2%">
<div class="form-group"style ="margin-left:20%">
<label for="text" class="control-label" style ="margin-left:-20%" ><b>Culture Set up By :</b></label><br>

<label for="text" class="control-label col-xs-2">Name :</label>
<div class="col-xs-3">
<input type="text" class="form-control " name="name1" title="Name" placeholder="Name">
</div>

<label for="text" class="control-label col-xs-2"style="margin-left:-4%">Designation :</label>
<div class="col-xs-3">
<input type="text" class="form-control " name="designation1"  title="Designation" placeholder="Designation">

</div><br><br>
<label for="text" class="control-label col-xs-2">Name : </label>
<div class="col-xs-3">
<input type="text" class="form-control" name="secondname" title="Name" placeholder="Name" >
</div>

<label for="text" class="control-label col-xs-2"style="margin-left:-4%">Designation :</label>
<div class="col-xs-3">
<input type="text" class="form-control " name="seconddesignation" title="Designation" placeholder="Designation" >

</div><br>
</div>
</div><br><br>

   <button type="button" class="btn btn-default previousBtn btn-lg pull-left prev-step"style="width:120px;border: 2px solid #fff">Previous</button>
          <button class="btn btn-primary nextBtn btn-lg pull-right" type="button" >Next</button>
  </div>
  <div class="row setup-content" id="step-3">
   

 <div class="row">

</div>
<div class="well well-sm" style ="width:96% ;margin-left:2%;">
<div class="form-group"  >
<p align="center"><b  >Observation, Sampling and Quality Control tests. Note that All samples should be labelled as "Sample TCC xx Day xxx Date xxx "</b></p> 
</div>
</div>


<div class="well well-sm" style ="width:96% ;margin-left:2%">
  <div id="daysId">
  
  </div>
   
    
  <button type="button" value="Add Days" class="btn btn-primary" onclick="addNewDays()">Add Days</button>
  
 </div>
<br><br>

   <button type="button" class="btn btn-default previousBtn btn-lg pull-left prev-step"style="width:120px;border: 2px solid #fff">Previous</button>
          <button class="btn btn-primary nextBtn btn-lg pull-right" type="button" >Next</button>
  </div>




<!--<div class="row">

</div> -->
  <div class="row setup-content" id="step-4">
   
        <div class="well well-sm" style ="width:96% ;margin-left:2%">
<div class="form-group"style="margin-left:-3%">
<label for="text" class=" col-xs-4"style="text-align:left ;margin-left:4%">TERMINATION OF CULTURE :</label>
<div class="col-xs-11"style="margin-left:6%;height:-950%">
<textarea type="text" style="height:1050%" name="termination_culture"  class="form-control" title="TerminationOfCulture" placeholder="Termnation Of Culture" rows="24" cols="50" ></textarea>
</div>
</div>
</div>
    <div class="well well-sm" style ="width:96% ;margin-left:2%">
<div class="form-group"style="margin-left:-3%">
<label for="text" class=" col-xs-4"style="text-align:left ;margin-left:4%">SUMMARY :</label>
<div class="col-xs-11"style="margin-left:6%;height:-450%">
<textarea type="text"  name="summary" class="form-control" title="Summary" placeholder="Summary" rows="14" cols="50" ></textarea>
</div>
</div>
</div>
<div class="well well-sm" style ="border:df1010 ;width:96% ;margin-left:2%">
<div class="form-group">
<label for="text" class="control-label" style ="margin-left:2%" ><b>CONTROL & APPROVAL : This Form comes to effect from 1st january 2014.</b></label><br><br>
<label for="text" class="control-label col-xs-2 "style ="margin-left:-5%">Prepared by: </label>
<div class="col-xs-2">
<input type="text" class="form-control" name="Prepared_by" id="Prepared_by" >
</div>


<label for="text" class="control-label col-xs-2"style ="margin-left:-8%">Dept. Head :</label>
<div class="col-xs-2">
<input type="text" class="form-control " name="Dept_Head" id="Dept_Head" >
</div>


<label for="text" class="control-label col-xs-2"style ="margin-left:-12%">QAD: </label>
<div class="col-xs-2">
<input type="text" class="form-control" name="QAD" id="inputsource" >
</div><br><br>

</div>
</div>
<button type="button" class="btn btn-default previousBtn btn-lg pull-left prev-step"style="width:120px;border: 2px solid #fff">Previous</button>
          <button class="btn btn-success btn-lg pull-right" type="submit" name="save">Save</button>
    </div>
   
   
    </div>
         <div class="row setup-content pull-center" id="step-5">    
<div class="col-xs-6" style="margin-top: 20px;"></div>

<button> <a href="viewAllRecord.jsp" type="button" class="btn btn-warninig btn-lg pull-center">view all records</a></button>
 </div>
 
  </form>
  
</div>

<script>





$(document).ready(function () {

	
	
	$("#torocell_system_id_no").click(function(){
		
		
		 var ID =$("#uniqueTcc").val();
		 var datee=$("#uniqueDate").val();
		 var f=$('#checkbox1').is(":checked"); // $("#checkbox1").val();
		 var g=$('#checkbox2').is(":checked"); //$("#checkbox2").val(); 
		 
	 
		 
		 if( (ID !== "") && (datee!=="")){
			
			////////////////////////// 
			  /* $.ajax({
				 
				 url : 'ViewRec',
				  
					data : {
						 
						ID:ID,
						datee:datee,
						f:f,
						g:g
						
						
					},
					success : function(responseText) {
						console.log("res"+responseText);
						
						if(responseText==="1"){
							$("#uniqueTcc").val("");
							$("#uniqueDate").val("");
				 	var x = document.getElementById("snackbar")
						    x.className = "show";
						    setTimeout(function(){ x.className = x.className.replace("show", ""); }, 3000); 
							 
						} 
				}
				});  */
		
		 }
		 
		
	});
	
	
	
	$(document).on('focus', '.u', function(){
		 
		 
		// var container=$('.bootstrap-iso form').length>0 ? $('.bootstrap-iso form').parent() : "body";
		 
		 $(this).datepicker({
			 
			  format: 'mm/dd/yyyy',
			 
		        todayHighlight: true,
		        autoclose: true, 
		    });
	});
	
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
	        var tempTr = $('<tr><td><input type="text" name="cmno" class="form-control" title="CM No" placeholder="CM No"/></td><td><input type="text" name="nocontainers" class="form-control" title="No.Containers" placeholder="No.Containers"/></td><td><input type="text" name="yield" class="form-control" title="Yield/Cont" placeholder="Yield/Cont."/></td><td><input type="text" name="cellyield" class="form-control" title="Cell Yield/sq.cm" placeholder="Cell Yield/sq.cm"/></td><td><input type="text" name="totalcell" class="form-control" title="TotalCell" placeholder="TotalCell"/></td><td><span class="glyphicon glyphicon-minus addBtnRemove" id="addBtn_' + i + '"></span></td></tr>').on('click', function () {
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
</script> 
<div id="snackbar"></div>
<div id="snackbar1"> ID already found ! </div>
</body>
</html>