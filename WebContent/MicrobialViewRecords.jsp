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


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">

<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap-theme.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datetimepicker/4.17.37/css/bootstrap-datetimepicker.min.css" />

<script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.10.6/moment.min.js"></script>   
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>

<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datetimepicker/4.17.37/js/bootstrap-datetimepicker.min.js"></script>
  
<script>
 $('#datetimepicker9').data("DateTimePicker").FUNCTION()


</script>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Microbial View Record</title>
<script type="text/javascript">
$(document).ready(function() {
	var userAuthentication=false;
	$("#message").hide();
	  $.ajax({			 
	      type: "POST",
	      url: "getMicrobialRecord.jsp",
	      data: {	                	
	      	 
	      	table:"initialLoad"
	      },
	      success: function(data) {
	      	  
	      	 $("#tBodyId").html(data)
	      },
	       error: function() {
	           
	      },
	      complete: function() {
	  
	      }
	    });  
	
	  
});
function filter()
{
	$("#message").hide();
	var mc=$('#mc').val();
	var dateId=$('#mc_Date').val();
	var nameOfOrganism=$('#nameOfOrganism').val();
	
	
	  $.ajax({			 
	      type: "POST",
	      url: "getMicrobialRecord.jsp",
	      data: {	                		      	 
	    	  mc:mc,
	    	  dateId:dateId,
	    	  nameOfOrganism:nameOfOrganism,
	    	 
	      },
	      success: function(data) {
	      	  
	      	 $("#tBodyId").html(data)
	      },
	       error: function() {
	           
	      },
	      complete: function() {
	  
	      }
	    });  
	  
	  
}
function syncDb()
{
	
	  $.ajax({			 
	      type: "POST",
	      url: "getRecord.jsp",
	      data: {	                		      	 
	    	 synchDb:"syncDb"
	      },
	      success: function(data) {
	      
	      },
	       error: function() {
	           
	      },
	      complete: function() {
	  
	      }
	    });  
	  
	}
	function deleteRecord(id,mc,date,nameOfOrganism)
	{		
		
		$("#message").hide();
		$("#userName").val("")			 
		$('#myModal').modal('show');		
		$("#deleteIdd").val(id);
		$("#deleteMc").val(mc);
		$("#deleteNameOfOrganism").val(nameOfOrganism);
		$("#deleteDate").val(date);
		
		
		/* $.ajax({			 
		      type: "POST",
		      url: "getMicrobialRecord.jsp",
		      data: {	                		      	 
		    	  deleteRecord:"delete",
			    	 id:id
		      },
		      success: function(data) {
		    	  $("#tBodyId").html(data)
		    	   $("#message").text("Mc="+mc+", Date="+date+", Name of Organism="+nameOfOrganism+" has been deleted successfully");
		    	  $("#message").show();
		    	  
		    	  
		      },
		       error: function() {
		           
		      },
		      complete: function() {
		  
		    	  $("#tBodyId").html(data)
		      }
		    });  */ 
	}
	function confirmDeleteRec()
	{
		
		
		var enteredName=$("#userName").val()
		
		
		
		$.ajax({			 
		      type: "POST",
		      url: "PasswordValidation",
		      data: {	                		      	 
		    	 password:enteredName
		      },
		      success: function(data) {
		    	  
				if(data=="true")
				{
					deletethisRecord()				
							
				}
				else
					{
					$("#error").text("Please Enter Valid Password")		
					}
		    	  
		    	  
		      },
		       error: function() {
		           
		      },
		      complete: function() {
		  
		      }
		    });
		
		
	}
	function deletethisRecord()
	{
		$("#error").hide();
		$("#message").hide();
		var id=$("#deleteIdd").val();
		var mc=$("#deleteMc").val();
		var date=$("#deleteDate").val();
		var nameOfOrganism=$("#deleteNameOfOrganism").val();
		$.ajax({			 
		      type: "POST",
		      url: "getMicrobialRecord.jsp",
		      data: {	                		      	 
		    	  deleteRecord:"delete",
			    	 id:id
		      },
		      success: function(data) {
		    	  $("#tBodyId").html(data)
		    	   $("#message").text("Mc="+mc+", Date="+date+", Name of Organism="+nameOfOrganism+" has been deleted successfully");
		    	  $("#message").show();
		    	  
		    	  
		      },
		       error: function() {
		           
		      },
		      complete: function() {
		  
		    	  $("#tBodyId").html(data)
		      }
		    }); 
	}
	
	function editRec(id)
	{
		$('#editModal').modal('show');
		$("#editIdd").val(id);
		$("#edituserName").val("")
	
	}
	function redirectRec(id)
	{
		$("#error").hide();
		$("#message").hide();
		var enteredName=$("#edituserName").val()
		$.ajax({			 
		      type: "POST",
		      url: "PasswordValidation",
		      data: {	                		      	 
		    	 password:enteredName
		      },
		      success: function(data) {
		    	  
				if(data=="true")
				{
					
					var id=$("#editIdd").val();
					window.location = "selectedMicrobialRecord.jsp?id="+id;	
					$("#error").hide();
				}
				else
					{
					$("#error").text("Please Enter Valid Password")
					$("#error").show();
					}
		    	  
		    	  
		      },
		       error: function() {
		           
		      },
		      complete: function() {
		  
		      }
		    }); 
		
		
	}
</script> 

</head>

<body>

<%
 

 response.setHeader("Cache-Control","no-cache"); //HTTP 1.1 
 response.setHeader("Pragma","no-cache"); //HTTP 1.0 
 response.setDateHeader ("Expires", 0); //prevents caching at the proxy server  

%>

<div class="col-md-12 col-sm-12 col-xs-12" style="background-color:rgb(204,204,204); height:auto;">
 
<div class="col-md-3 " style="background-color:rgb(204,204,204); height:120px;">


<!-- Modal -->
<div id="myModal" class="modal fade" role="dialog">
  <div class="modal-dialog modal-sm">

    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4 class="modal-title">Enter Password to continue</h4>
      </div>
      <div class="modal-body">
        <p>
        <input type="hidden" id="deleteIdd"/>
        <input type="hidden" id="deleteMc"/>
        <input type="hidden" id="deleteNameOfOrganism"/>
		<input type="hidden" id="deleteDate"/>        
        
        <input type="password" id="userName"/>
        <button type="button" data-toggle="modal" data-target="#myModal" onclick="confirmDeleteRec()">Submit</button>
        </p>
      </div>
     
    </div>

  </div>
</div>



<!-- Edit Record Start Here -->

<div id="editModal" class="modal fade" role="dialog">
  <div class="modal-dialog modal-sm">

    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4 class="modal-title">Enter Password to continue</h4>
      </div>
      <div class="modal-body">
        <p>
        <input type="hidden" id="editIdd"/>
               
        
        <input type="password" id="edituserName"/>
        <button type="button" data-toggle="modal" data-target="#editModal" onclick="redirectRec()">Submit</button>
        </p>
      </div>
     
    </div>

  </div>
</div>

<!-- Edit Model End Here -->
<!-- Model End here -->
<a href="Microbial.jsp" ><p style="height:60px; width:200px; background-image:url(Lablinkslogo.png); background-repeat:no-repeat; margin-top:10%;"> </p></a>
</div>

<div class="col-md-6" style="background-color:rgb(204,204,204); height:120px;">
<h2 style="color:rgb(0,0,0); text-align:center; margin-top:8%;"><b>Microbial Culture Record</b></h2>


</div>
<!-- <div class="col-md-3 " style="background-color:rgb(204,204,204); height:80px;">
<p style="height:100px; width:200px; background-image:url(companylogo.png); background-repeat:no-repeat; margin-top:0%; m"> </p>
</div> -->

</div>
<div class="col-md-12 col-sm-12 col-xs-12" style="background-color:#; height:auto; margin-top:2%;">

<center><span style="color: red" id="error"></span></center>
<div class="col-md-3" style="background-color: #; height:75px;">

          
        
<p style="margin-top:4%;">  <div class="form-group">
<a href="Microbial.jsp" style="float: left;">
          <span title="Back to Home" class="glyphicon glyphicon-circle-arrow-left" style="margin-top:-10px;margin-bottom: 10px;">Back</span>
        </a> 
  <input type="text" class="form-control" id="mc" placeholder="mc"></p>
</div>

</div>

<div class="col-md-3" style="background-color: #; height:75px;">

<div class="container" style="margin-top:8%;">
    <div class="col-sm-3" style="height:75px;">
        <div class="form-group">
            <div class='input-group date' id='datetimepicker9'>
                <input id="mc_Date" type='text' class="form-control" />
                <span class="input-group-addon">
                    <span class="glyphicon glyphicon-calendar">
                    </span>
                </span>
            </div>
        </div>
    </div>
    <script type="text/javascript">
        $(function () {
            $('#datetimepicker9').datetimepicker({
                /* viewMode: 'years' */
            	format: "MM/DD/YYYY"
            });
        });
        
    </script>
</div>
</div>
<div class="col-md-4" style="background-color: #; height:75px;">

<p style="margin-top:7%;">

<input type="text" class="form-control" id="nameOfOrganism" placeholder="Name of Organism">

</p>


</div>

<div class="col-md-2" style="background-color: #; height:75px;">

<p style="margin-top:10%;">
<a href="Torocell.jsp" type="button">Torocell Cell Culture Card </a>
 <button type="button" class="btn btn-info" name="search" onclick="filter()">
      <span class="glyphicon glyphicon-search"></span> Search
    </button>


</p>


<!-- <form action="SysncDb" method="post">
 <button type="submit" class="btn btn-info" value="SyncDb" name="MicrobialsyncDb">
<span>SyncDb</span>
</button> 

</form> -->
</div>
<div class="col-md-9" style="background-color:#; height:auto; margin-top:2%;">
<center><p id="message" style="color: red;"></p></center>
<div class="table-responsive">
    <table id="productSizes" class="table">
        <thead>
            <tr>
                <th class="col-xs-3">MC</th>
              <th class="col-xs-2">Date</th>
                <th class="col-xs-2">Name Of Organism</th>
                <th class="col-xs-2">Modified Date</th>
                <th class="col-xs-2">Action</th>
                
            </tr>
        </thead>
        <tbody id="tBodyId">
        
            
            
            <%-- <c:out value="tab=${tableObj }"></c:out> --%>
                 <%--  <td><c:out value="${tableObj.tcc.toString()}"></c:out></td> 
                <td>${tableObj.date}</td>
                <td>${tableObj.pvc_pp_gl_ss_suspension}</td>
                <td>${tableObj.pp_ss_Micromatrix}</td>  --%>
           
          
           
        </tbody>
    </table>
</div>
</div>







</div>

</div>


</div>



</body>
</html>
    