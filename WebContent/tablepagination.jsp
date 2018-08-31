<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="https://code.jquery.com/jquery-3.1.1.min.js" defer></script>
<script src="https://cdn.datatables.net/1.10.13/js/jquery.dataTables.min.js" defer></script>
<script src="https://cdn.datatables.net/1.10.13/js/dataTables.bootstrap.min.js" defer></script>
   
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="https://cdn.datatables.net/1.10.13/css/dataTables.bootstrap.min.css">

<script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.10.6/moment.min.js"></script>   
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
  
<script type="text/javascript">
$(document).ready(function() {
    $('#example').DataTable();
} );
</script>


<script type="text/javascript">
$(document).ready(function() {

	 var myTable;
	 myTable=$('#example').DataTable({
	    "paging": true,
	        "lengthChange": false,
	        "searching": false,
	        "ordering": true,
	        "info": true,
	        "autoWidth": false,
	        "sDom": 'lfrtip'
	});
	    
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
</script>
</head>
<body>
<table id="example" class="table table-striped table-bordered" cellspacing="0" width="100%">
        <thead>
            <tr>
                <th>Name</th>
                <th>Date</th>
                <th>Name Of Organism</th>
                <th>Modified Date</th>
                <th>Action</th>
                
            </tr>
        </thead>
       
        <tbody id="tBodyId">
            
            
        </tbody>
    </table>
</body>
</html>