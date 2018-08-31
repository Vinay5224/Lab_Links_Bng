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
 <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/js/bootstrap-datepicker.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/css/bootstrap-datepicker3.css"/>
<title>Insert title here</title>

<script type="text/javascript">
$(document).ready(function () {
	
	 $("#uniqueDate").blur(function(){
	      
		
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
		 
		 
		 
	 });
	 
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
</script>
</head>
<style>
.wizard {
    margin: 20px auto;
    background: #fff;
}

    .wizard .nav-tabs {
        position: relative;
        margin: 40px auto;
        margin-bottom: 0;
        border-bottom-color: #e0e0e0;
    }

    .wizard > div.wizard-inner {
        position: relative;
    }

.connecting-line {
    height: 2px;
    background: #e0e0e0;
    position: absolute;
    width: 80%;
    margin: 0 auto;
    left: 0;
    right: 0;
    top: 50%;
    z-index: 1;
}

.wizard .nav-tabs > li.active > a, .wizard .nav-tabs > li.active > a:hover, .wizard .nav-tabs > li.active > a:focus {
    color: #555555;
    cursor: default;
    border: 0;
    border-bottom-color: transparent;
}

span.round-tab {
    width: 50px;
    height: 50px;
    line-height: 50px;
    display: inline-block;
    border-radius: 100px;
    background: #fff;
    border: 2px solid #e0e0e0;
    z-index: 2;
    position: absolute;
    left:-3px;
    text-align: center;
    font-size: 25px;
    top:-3px;
}
span.round-tab i{
    color:#555555;
}
.wizard li.active span.round-tab {
    background: #fff;
    border: 2px solid #5bc0de;
    
}
.wizard li.active span.round-tab i{
    color: #5bc0de;
}

span.round-tab:hover {
    color: #333;
    border: 2px solid #333;
}

.wizard .nav-tabs > li {
    width: 20%;
}

.wizard li:after {
    content: " ";
    position: absolute;
    left: 46%;
    opacity: 0;
    margin: 0 auto;
    bottom: 0px;
    border: 5px solid transparent;
    border-bottom-color: #5bc0de;
    transition: 0.1s ease-in-out;
}

.wizard li.active:after {
    content: " ";
    position: absolute;
    left: 46%;
    opacity: 1;
    margin: 0 auto;
    bottom: 0px;
    border: 10px solid transparent;
    border-bottom-color: #5bc0de;
}

.wizard .nav-tabs > li a {
    width: 45px;
    height: 45px;
    margin: 20px auto;
    border-radius: 100%;
    padding: 0;
    
    
}

    .wizard .nav-tabs > li a:hover {
        background: transparent;
    }

.wizard .tab-pane {
    position: relative;
    padding-top: 50px;
}

.wizard h3 {
    margin-top: 0;
}

@media( max-width : 585px ) {

    .wizard {
        width: 90%;
        height: auto !important;
    }

    span.round-tab {
        font-size: 16px;
        width: 50px;
        height: 50px;
        line-height: 50px;
    }

    .wizard .nav-tabs > li a {
        width: 50px;
        height: 50px;
        line-height: 50px;
    }

    .wizard li.active:after {
        content: " ";
        position: absolute;
        left: 35%;
    }
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
.d{
    padding: 10px;
}
</style>
<body>
<div class="news">
					<div class="img-figure">
  <div class="panel panel-default" style="box-shadow: 8px 8px 3px gray;margin-top:7px ">
  <div class="panel-heading custom_class" style="height:200px;background-color:white;  " >
  <h1 align="center" style="margin-left:6%;color:black;text-shadow: 2px 2px 1px black;"><b>TOROCELL CELL CULTURE CARD</b></h1>
<div id="image" style="float:right; margin-RIGHT:6%;">
<img src="https://s7.postimg.org/sh4qpee0r/150x150companylogo.png" class="media-object" style="width:170px;height:120px"align="right"/>
</div>
<div id="image" style="float:left; margin-right:4%;margin-left:4%; margin-bottom:5%;">
<img src="https://s3.postimg.org/6jjemfbr7/Lablinkslogo.png" class="media-object" style="width:230px ; height:100px"align="left"/>
</div>

  </div>
  </div>
  </div>
</div><br>
<form action="Torocell" class="form-horizontal" method="post" id="toroCellForm">
<div class="container">
	<div class="row">
		<section>
        <div class="wizard" style="background: transparent;" >
            <div class="wizard-inner">
                <div class="connecting-line"></div>
                <ul class="nav nav-tabs" role="tablist">

                    <li role="presentation" class="active">
                        <a href="#step1" data-toggle="tab" aria-controls="step1" role="tab" >
                            <span class="round-tab">
                                1</i>
                            </span>
                        </a>
                    </li>

                    <li role="presentation" class="">
                        <a href="#step2" data-toggle="tab" aria-controls="step2" role="tab" >
                            <span class="round-tab">
                                2</i>
                            </span>
                        </a>
                    </li>
                    <li role="presentation" class="">
                        <a href="#step3" data-toggle="tab" aria-controls="step3" role="tab" >
                            <span class="round-tab">
                                3</i>
                            </span>
                        </a>
                    </li>
                     <li role="presentation" class="">
                        <a href="#step4" data-toggle="tab" aria-controls="step4" role="tab" >
                            <span class="round-tab">
                                4</i>
                            </span>
                        </a>
                    </li>

                    <li role="presentation" class="">
                        <a href="#step5" data-toggle="tab" aria-controls="step5" role="tab" >
                            <span class="round-tab">
                                5</i>
                            </span>
                        </a>
                    </li>
                </ul>
            </div>

            <form role="form">
                <div class="tab-content">
                    <div class="tab-pane active" role="tabpanel" id="step1">
                        <h3 style="color:white">Basic Details</h3><br>
                       
                       <div class="row">
<div class="col-md-3 ">

<div class="well well-sm" style ="margin-left:9%">
<div class="form-group">
<label for="text" class="control-label col-xs-5">TCC :</label>
<div class="col-xs-5">
<input type="text" class="form-control" name="tcc" id="uniqueTcc" title="TCC" placeholder="TCC" >
</div>
</div>
</div>
</div>
<div class="col-md-3 col-md-offset-6">

 <div class="well well-sm date" >
<div class="form-group ">
<label for="text" class="control-label col-xs-4">Date :</label>
<div class="col-xs-8 "data-provide=datepicker">
<input type="text" class="form-control u" name="Date" id="uniqueDate" title="Date" placeholder="Date"  >
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
				<input type="radio" name="pvc_pp_gl_ss_suspension" title="PVC/PP/GL/SS SUSPENSION" id="checkbox1" autocomplete="off" chacked>
				<span class="glyphicon glyphicon-ok"></span>
			<b>PVC/PP/GL/SS SUSPENSION</b></label>

			<label class="btn btn-primary">
				<input type="radio" name="pp_ss" title="PP/SS MACROMATRIX" id="checkbox2" autocomplete="off">
				<span class="glyphicon glyphicon-ok"></span>
			<b>PP/SS MACROMATRIX</b></label>

			
		</div>
		</div>
 </div>
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
            <input type="text" name="carbonate_left" class="form-control" title="Carbonate Left"/>
            
        </div>

 <div class="col-xs-2">
<label for="checkbox9"><b>Carbonate Right </b></label>
            <input class="form-control" type="text" name="carbonate_right" title="Carbonate Right" />
            
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
        <input class="form-control" name="do_Make" name="make" type="text">
      </div></label>
  
      </div>
      </div>
      <div class="well well-sm" style ="margin-left:2%">
<div class="form-group">
<label for="text" class=" col-xs-6"style="text-align:left ;margin-left:0%">Remarks on the system.Details of AIR/GAS connections, Air Pumps etc:</label><br><br>
<div class=" col-xs-6"style="text-align:right;margin-left:45%;margin-top:-3%" >
<textarea name="Remarks"  type="text" class="form-control" title="Remarks on the system.Details of AIR/GAS connections, Air Pumps" placeholder="Remarks on the system.Details of AIR/GAS connections, Air Pumps"name="Remarks" rows="12" cols="40" ></textarea>
</div>
</div>
</div>
<div  style ="margin-left:2%;margin-top:-%;color:white">
<h6>QUALITY ASSURANCE: <h7>This Form Comes Into Effect From Jan 2014. See Page 6 For Approvals:</h7> </h6>
</div>                         
                       
                        <ul class="list-inline pull-right">
                            <li><button type="button" class=" btn-lg btn btn-primary  next-step">Next</button></li>
                        </ul>
                    </div>
                    <div class="tab-pane" role="tabpanel" id="step2">
                        <h3 style="color:white">Fill the Bioreactor Container Details</h3><br>
                        
                         <div class="row">
<div class="col-md-3 ">

<div class="well well-sm" style ="margin-left:9%">
<div class="form-group">
<label for="text" class="control-label col-xs-5">TCC :</label>
<div class="col-xs-5">
<input type="text" class="form-control" name="tcc"  >
</div>
</div>
</div>

</div>

<div class="col-md-3 col-md-offset-6">

<div class="well well-sm" style =" margin-right:8%">
<div class="form-group">
<label for="text" class="control-label col-xs-4">Date :</label>
<div class="col-xs-8">
<input type="text" class="form-control u" name="Date" id="Date" >

</div>
</div>
</div>

</div>
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

</div>
</div>
</div>                        
                        
                        <ul class="list-inline pull-right">
                            <li><button type="button" class=" btn-lg btn btn-default prev-step">Previous</button></li>
                            <li><button type="button" class=" btn-lg btn btn-primary next-step">Next</button></li>
                        </ul>
                    </div>
                    <div class="tab-pane" role="tabpanel" id="step3">
                        <h3 style="color:white">Fill the Day Details</h3><br>
                    
                    <div class="row">
<div class="col-md-3 ">

<div class="well well-sm" style ="border:df1010 ;margin-left:9%">
<div class="form-group">
<label for="text" class="control-label col-xs-5">TCC :</label> <!-- remove it -->
<div class="col-xs-5">
<input type="text" class="form-control" name="tcc" title="TCC"  placeholder="TCC">
</div>
</div>
</div>

</div>

<div class="col-md-3 col-md-offset-6">

<div class="well well-sm" style =" margin-right:8%">
<div class="form-group">
<label for="text" class="control-label col-xs-4">Date :</label><!-- remove it -->
<div class="col-xs-8">
<input type="text" class="form-control u" name="Date" id="Date"  title="Date"  placeholder="Date">

</div>
</div>
</div> 

</div>
</div>
<div class="well well-sm" style ="width:96% ;margin-left:2%;">
<div class="form-group"  >
<p align="center"><b  >Observation, Sampling and Quality Control tests. Note that All samples should be labelled as "Sample TCC xx Day xxx Date xxx "</b></p> 
</div>
</div>


<div class="panel-group d" id="accordion">
  <div class="panel panel-default" style="width:96% ;margin-left:2%">
    <div class="panel-heading">
      <h4 class="panel-title">
        <button type="button" class="accordion-toggle btn" data-toggle="collapse" data-parent="#accordion" href="#collapseOne" style=" float:center;width:100%">
          Day #1
        </button>
      </h4>
    </div>
    <div id="collapseOne" class="panel-collapse collapse ">
      <div class="panel-body">
        <div class="row">

<div class="col-md-4  col-md-offset-4">
<div class="well well-sm" style ="margin-right:-6% ;margin-left:-20%;">
<div class="form-group">
		
			<div class="col-md-10 col-md-onset-4">
			<label style="margin-left:70px" ><b>Sample Quantity: 10ml x 2 tubes</b>
				<input type="checkbox" name="sample_quantity" autocomplete="off" >
			
				 </label>
									
		
</div>
</div>
</div>
</div>

<div class="well well-sm" style ="width:96% ;margin-left:2%">
         
  <table class="table table-bordered ">
        <thead>
            <th> </th>
        <th><input style="text-align:center" type="text" class="form-control " name="Time1" placeholder= "Hours"></th>
        <th><input style="text-align:center" type="text" class="form-control" name="Time2" placeholder="Hours"></th>
        <th><input style="text-align:center" type="text" class="form-control" name="Time3" placeholder="Hours"></th>
        </thead>
        <tbody>
            <tr>
      <td><b>Physical Appearance of Culture fluid:</b></td>     
        <td><input type="text" class="form-control" placeholder= "Physical Appearance " title="Physical Appearance of Culture fluid" name="physical1"></td>
        <td><input type="text" class="form-control" placeholder= "Physical Appearance " title="Physical Appearance of Culture fluid" name="physical2"></td>
        <td><input type="text" class="form-control" placeholder= "Physical Appearance " title="Physical Appearance of Culture fluid" name="physical3"></td>
     </tr>
        <tr>
        <td><b>pH Culture fluid(Online <input type="checkbox" name="phonline" autocomplete="off" > / Manual <input type="checkbox" name="phmanual" autocomplete="off" >):</td>
        <td><input type="text" class="form-control" placeholder= "pH Culture fluid" title="pH Culture fluid" name="ph1"></td>
        <td><input type="text" class="form-control" placeholder= "pH Culture fluid" title="pH Culture fluid"name="ph2"></td>
        <td><input type="text" class="form-control" placeholder= "pH Culture fluid" title="pH Culture fluid"name="ph3"></td>
   </tr>
           <tr>
        <td><b>DO2 Culture fluid(Online <input type="checkbox" name="doonline" autocomplete="off" > / Manual <input type="checkbox" name="domanual" autocomplete="off" >):</td>
        <td><input type="text" class="form-control" placeholder= "DO2 Culture fluid" title="DO2 Culture fluid"name="do1"></td>
        <td><input type="text" class="form-control" placeholder= "DO2 Culture fluid" title="DO2 Culture fluid"name="do2"></td>
        <td><input type="text" class="form-control" placeholder= "DO2 Culture fluid" title="DO2 Culture fluid"name="do3"></td><br><br>
      </tr>
        </tbody>
    </table>
  </table>
  
<div class="form-group" >
<label for="text" class="control-label col-xs-4" style="margin-left:-2%">Glucose concentration: Test Method:</label>
<div class="col-xs-8" style="margin-left:2%">
<input type="text" class="form-control" placeholder="Glucose concentration" title="Glucose concentration" name="glucose_concentration"  >

</div>
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
        <td><input type="text" class="form-control" name="100g"  ></td>
        <td><input type="text" class="form-control" name="200g"></td>
        <td><input type="text" class="form-control" name="300g"></td>
        <td><input type="text" class="form-control" name="400g"></td>
        <td><input type="text" class="form-control" name="500g"></td>
        <td><input type="text" class="form-control" name="600g"></td>
      </tr>
      
    </tbody>
  </table>
  </div>
  <div class="well well-sm" style ="border:df1010 ;width:96% ;margin-left:2%">
  <div class="form-group">
<label for="text" class="control-label col-xs-3"style="text-align:left ;margin-left:2%">Gms/L : </label>
<div class="col-xs-2"style="margin-left:-1%"><input type="text" class="form-control" name="gms" placeholder="Gms/L" title="Gms/L" >
</div>

<label for="text" class="control-label col-xs-3" style="margin-left:1%">OD of Test Sample :</label>
<div class="col-xs-3" style="margin-left:3%">
<input type="text" class="form-control" name="odoftestsample" placeholder="OD of Test Sample" title="OD of Test Sample"  >
</div>

</div>
</div>
<div class="well well-sm" style ="border:df1010 ;width:96% ;margin-left:2%">
<div class="form-group"style="margin-left:-3%">
<label for="text" class="control-label col-xs-4"style="text-align:left ;margin-left:4%">Media Conditioning, Additions and Remarks :</label>
<div class="col-xs-8"style="margin-left:-4%;height:-750%">
<textarea style="height:750%" type="text" placeholder="Media Conditioning, Additions and Remarks" title="Media Conditioning, Additions and Remarks" class="form-control" rows="14" cols="50" ></textarea>
</div>
</div>
</div>
      </div>
    </div>
  </div>
  </div>
  <div class="panel panel-default template" style ="width:96% ;margin-left:2%">
    <div class="panel-heading">
      <h4 class="panel-title">
        <button class="accordion-toggle btn" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" style=" float:center;width:100%" >
          Day #2 
        </button>
      </h4>
    </div>
    <div id="collapseTwo" class="panel-collapse collapse">
      <div class="panel-body">
        <div class="row">

<div class="col-md-4  col-md-offset-4">
<div class="well well-sm" style ="margin-right:-4% ;margin-left:-25%;">
<div class="form-group">
		<div class="col-md-10 col-md-onset-4">
			<label style="margin-left:70px" ><b>Sample Quantity: 10ml x 2 tubes</b>
				<input type="checkbox" name="sample_quantity" autocomplete="off" >
			
				 </label>
				 </div>
</div>
</div>
</div>

<div class="well well-sm" style ="width:96% ;margin-left:2%">
         
  <table class="table table-bordered ">
        <thead>
            <th> </th>
        <th><input style="text-align:center" type="text" class="form-control " name="Time1" placeholder= "Hours"></th>
        <th><input style="text-align:center" type="text" class="form-control" name="Time2" placeholder="Hours"></th>
        <th><input style="text-align:center" type="text" class="form-control" name="Time3" placeholder="Hours"></th>
        </thead>
        <tbody>
            <tr>
      <td><b>Physical Appearance of Culture fluid:</b></td>     
        <td><input type="text" class="form-control" placeholder= "Physical Appearance " title="Physical Appearance of Culture fluid" name="physical1"></td>
        <td><input type="text" class="form-control" placeholder= "Physical Appearance " title="Physical Appearance of Culture fluid" name="physical2"></td>
        <td><input type="text" class="form-control" placeholder= "Physical Appearance " title="Physical Appearance of Culture fluid" name="physical3"></td>
     </tr>
        <tr>
        <td><b>pH Culture fluid(Online <input type="checkbox" name="phonline" autocomplete="off" > / Manual <input type="checkbox" name="domanual" autocomplete="off" >):</td>
        <td><input type="text" class="form-control" placeholder= "pH Culture fluid" title="pH Culture fluid" name="ph1"></td>
        <td><input type="text" class="form-control" placeholder= "pH Culture fluid" title="pH Culture fluid"name="ph2"></td>
        <td><input type="text" class="form-control" placeholder= "pH Culture fluid" title="pH Culture fluid"name="ph3"></td>
   </tr>
           <tr>
        <td><b>DO2 Culture fluid(Online <input type="checkbox" name="phonline" autocomplete="off" >/ Manual <input type="checkbox" name="domanual" autocomplete="off" >):</td>
        <td><input type="text" class="form-control" placeholder= "DO2 Culture fluid" title="DO2 Culture fluid"name="do1"></td>
        <td><input type="text" class="form-control" placeholder= "DO2 Culture fluid" title="DO2 Culture fluid"name="do2"></td>
        <td><input type="text" class="form-control" placeholder= "DO2 Culture fluid" title="DO2 Culture fluid"name="do3"></td><br><br>
      </tr>
        </tbody>
    </table>
  </table>
  
<div class="form-group" >
<label for="text" class="control-label col-xs-4" style="margin-left:-2%">Glucose concentration: Test Method:</label>
<div class="col-xs-8" style="margin-left:2%">
<input type="text" class="form-control" placeholder="Glucose concentration" title="Glucose concentration" name="glucose_concentration"  >

</div>
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
        <td><input type="text" class="form-control" name="100g"  ></td>
        <td><input type="text" class="form-control" name="200g"></td>
        <td><input type="text" class="form-control" name="300g"></td>
        <td><input type="text" class="form-control" name="400g"></td>
        <td><input type="text" class="form-control" name="500g"></td>
        <td><input type="text" class="form-control" name="600g"></td>
      </tr>
      
    </tbody>
  </table>
  </div>
  <div class="well well-sm" style ="border:df1010 ;width:96% ;margin-left:2%">
  <div class="form-group">
<label for="text" class="control-label col-xs-3"style="text-align:left ;margin-left:2%">Gms/L : </label>
<div class="col-xs-2"style="margin-left:-1%"><input type="text" class="form-control" name="gms" placeholder="Gms/L" title="Gms/L" >
</div>

<label for="text" class="control-label col-xs-3" style="margin-left:1%">OD of Test Sample :</label>
<div class="col-xs-3" style="margin-left:3%">
<input type="text" class="form-control" name="odoftestsample" placeholder="OD of Test Sample" title="OD of Test Sample"  >
</div>

</div>
</div>
<div class="well well-sm" style ="border:df1010 ;width:96% ;margin-left:2%">
<div class="form-group"style="margin-left:-3%">
<label for="text" class="control-label col-xs-4"style="text-align:left ;margin-left:4%">Media Conditioning, Additions and Remarks :</label>
<div class="col-xs-8"style="margin-left:-4%;height:-750%">
<textarea style="height:750%" type="text" placeholder="Media Conditioning, Additions and Remarks" title="Media Conditioning, Additions and Remarks" class="form-control" rows="14" cols="50" ></textarea>
</div>
</div>
</div>
      </div>
    </div>
    </div>
    </div>
  

</div>
<button class="btn btn-lg btn-primary btn-add-panel">
    <i class="glyphicon glyphicon-plus"></i> Add Days
</button>
                    
                   
                        <ul class="list-inline pull-right">
                            <li><button type="button" class="btn-lg btn btn-default prev-step">Previous</button></li>
                      
                            <li><button type="button" class="btn-lg btn btn-primary btn-info-full next-step">Next</button></li>
                        </ul>
                    </div>
                    <div class="tab-pane" role="tabpanel" id="step4">
                        <h3 style="color:white">Enter the Summary & Remarks</h3>
                      
                      <div class="well well-sm" style ="width:96% ;margin-left:2%">
<div class="form-group"style="margin-left:-3%">
<label for="text" class=" col-xs-4"style="text-align:left ;margin-left:4%">TERMINATION OF CULTURE :</label>
<div class="col-xs-11"style="margin-left:6%;height:-950%">
<textarea style="height:1050%" type="text" name="termination_culture" class="form-control" rows="24" cols="50" ></textarea>
</div>
</div>
</div>
    <div class="well well-sm" style ="width:96% ;margin-left:2%">
<div class="form-group"style="margin-left:-3%">
<label for="text" class=" col-xs-4"style="text-align:left ;margin-left:4%">SUMMARY :</label>
<div class="col-xs-11"style="margin-left:6%;height:-450%">
<textarea style="height:750%" type="text"  name="summary" class="form-control" rows="14" cols="50" ></textarea>
</div>
</div>
</div>
<div class="well well-sm" style ="border:df1010 ;width:96% ;margin-left:2%">
<div class="form-group">
<label for="text" class="control-label" style ="margin-left:2%" ><b>CONTROL & APPROVAL : This Form comes to effect from 1st january 2014.</b></label><br><br>
<label for="text" class="control-label col-xs-2 "style ="margin-left:-5%">Prepared by: </label>
<div class="col-xs-3">
<input type="text" class="form-control" name="Prepared_by" id="Prepared_by" >
</div>


<label for="text" class="control-label col-xs-2"style ="margin-left:-8%">Dept. Head :</label>
<div class="col-xs-3">
<input type="text" class="form-control " name="Dept_Head" id="Dept_Head" >
</div>


<label for="text" class="control-label col-xs-2"style ="margin-left:-12%">QAD: </label>
<div class="col-xs-3">
<input type="text" class="form-control" name="QAD" id="inputsource" >
</div>

</div>
</div>                        
                      
                        <ul class="list-inline pull-right">
                            <li><button type="button" class="btn-lg btn btn-default prev-step">Previous</button></li>                           
                            <button class="btn btn-success btn-lg pull-right" type="submit" name="save">Submit</button>
                        </ul>
                    </div>
                    <div class="tab-pane" role="tabpanel" id="step5">
                        <h3 style="color:white">Previous Records</h3><br>
                        
                        <button> <a href="viewAllRecord.jsp" type="button" class="btn btn-warninig btn-lg pull-center">view all records</a></button>
                        
                    </div>
                    <div class="clearfix"></div>
                </div>
            </form>
        </div>
    </section>
   </div>
</div>
</form>
<script>
$(document).ready(function () {
    //Initialize tooltips
    $('.nav-tabs > li a[title]').tooltip();
    
    //Wizard
    $('a[data-toggle="tab"]').on('show.bs.tab', function (e) {

        var $target = $(e.target);
    
        if ($target.parent().hasClass('disabled')) {
            return false;
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
});

function nextTab(elem) {
    $(elem).next().find('a[data-toggle="tab"]').click();
}
function prevTab(elem) {
    $(elem).prev().find('a[data-toggle="tab"]').click();
}
var $template = $(".template");

var hash = 2;
$(".btn-add-panel").on("click", function () {
    var $newPanel = $template.clone();
    $newPanel.find(".collapse").removeClass("in");
    $newPanel.find(".accordion-toggle").attr("href",  "#" + (++hash))
             .text("Day #" + hash);
    $newPanel.find(".panel-collapse").attr("id", hash).addClass("collapse").removeClass("in");
    $("#accordion").append($newPanel.fadeIn());
});

</script>
</body>
</html>