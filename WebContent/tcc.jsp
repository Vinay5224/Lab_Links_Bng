<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="https://code.jquery.com/jquery-3.1.1.min.js" defer></script>
  <script src="dist/js/bootstrap-checkbox.min.js" defer></script>
<title>Insert title here</title>
</head>
<style>
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
    width: 100%;
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
.funkyradio div {
  clear: both;
  overflow: hidden;
}

.funkyradio label {
  width: 100%;
  border-radius: 2px;
  border: 1px solid #D1D3D4;
  font-weight: normal;
}

.funkyradio input[type="radio"]:empty,
.funkyradio input[type="checkbox"]:empty {
  display: none;
}

.funkyradio input[type="radio"]:empty ~ label,
.funkyradio input[type="checkbox"]:empty ~ label {
  position: relative;
  line-height: 2.5em;
  text-indent: 3.25em;
  margin-top: 2em;
  cursor: pointer;
  -webkit-user-select: none;
     -moz-user-select: none;
      -ms-user-select: none;
          user-select: none;
}

.funkyradio input[type="radio"]:empty ~ label:before,
.funkyradio input[type="checkbox"]:empty ~ label:before {
  position: absolute;
  display: block;
  top: 0;
  bottom: 0;
  left: 0;
  content: '';
  width: 2.5em;
  background: #D1D3D4;
  border-radius: 3px 0 0 1px;
}

.funkyradio input[type="radio"]:checked ~ label:before,
.funkyradio input[type="checkbox"]:checked ~ label:before {
  content: '\2714';
  text-indent: .9em;
  color: #333;
  background-color: #ccc;
}
.funkyradio-primary input[type="radio"]:checked ~ label:before,
.funkyradio-primary input[type="checkbox"]:checked ~ label:before {
  color: #fff;
  background-color: #337ab7;
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



</style>
<body>
<div class="news">
					<div class="img-figure">
  <div class="panel panel-default" style="box-shadow: 8px 8px 3px gray;">
  <div class="panel-heading custom_class" style="height:200px;background-color:white; " >
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
<div class="container">


<div class="stepwizard col-md-offset-3" >
    <div class="stepwizard-row setup-panel">
      <div class="stepwizard-step">
        <a href="#step-1" type="button" class="btn btn-primary btn-circle">1</a>
        <p style="color:white">Step 1</p>
      </div>
      <div class="stepwizard-step">
        <a href="#step-2" type="button" class="btn btn-default btn-circle" >2</a>
        <p style="color:white">Step 2</p>
      </div>
      <div class="stepwizard-step">
        <a href="#step-3" type="button" class="btn btn-default btn-circle" >3</a>
        <p style="color:white">Step 3</p>
      </div>
      <div class="stepwizard-step">
        <a href="#step-4" type="button" class="btn btn-default btn-circle" >4</a>
        <p style="color:white">Step 4</p>
      </div>
      <div class="stepwizard-step">
        <a href="#step-5" type="button" class="btn btn-default btn-circle" >5</a>
        <p style="color:white">Step 5</p>
      </div>
      <div class="stepwizard-step">
        <a href="#step-6" type="button" class="btn btn-default btn-circle" >6</a>
        <p style="color:white">Step 6</p>
      </div>
      <div class="stepwizard-step">
        <a href="#step-7" type="button" class="btn btn-default btn-circle" >7</a>
        <p style="color:white">Step 7</p>
      </div>
      <div class="stepwizard-step">
        <a href="#step-8" type="button" class="btn btn-default btn-circle" >8</a>
        <p style="color:white">Step 8</p>
      </div>
    </div>
  </div>
  
<!--  <form role="form" class="form-horizontal" action="" method="post"> -->
  <form action="Torocell" class="form-horizontal" method="post" >
  <div class="row setup-content" id="step-1">
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
<input type="text" class="form-control" name="Date" id="Date" >

</div>
</div>
</div>

</div>
</div>
<div class="col-md-3  col-md-offset-6">
<div class="well well-sm" style ="margin-right:-4% ;margin-left:-3%;margin-top:-33%; width:110%;">
<div class="form-group"style="float:center;margin-top:-10%;margin-bottom:2%">
<div class="funkyradio">

<div class="funkyradio-primary col-md-12">
            <input type="checkbox" name="pvc_pp_gl_ss_suspension" id="checkbox1" checked/>
            <label for="checkbox1"><b>PVC/PP/GL/SS SUSPENSION</b></label>
        </div>
			</div>
 </div>
</div>


</div>
<div class="col-md-3  col-md-offset-3">
<div class="well well-sm" style ="margin-right:-4% ;margin-left:-8%;margin-top:-34%; width:110%;">
<div class="form-group"style="float:center;margin-top:-10%;margin-bottom:2%">
<div class="funkyradio">

<div class="funkyradio-primary col-md-12">
            <input type="checkbox" name="pp/ss" id="checkbox2" checked/>
            <label for="checkbox2"><b>PP/SS MACROMATRIX</b></label>
        </div>
			</div>
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
<input type="text" class="form-control" name="torocell_system_id_no" id="torocell_system_id_no" >
</div>
<label for="text" class="control-label col-xs-2" style="margin-right:4%;margin-left:1%">Barcode : </label>
<div class="col-xs-3" style="margin-left:5%">
<textarea class="form-control" name="barcode" rows="1" id="Barcode"></textarea>
</div>
</div>
</div> 

  <div class="well well-sm" style ="margin-left:2%">
  <h5><b>Details Of Assembly:</b> Mark 	&#10004; as appropriate. Use '&#x2716;' to deselect</h5><br>

<p align=left><b>VESSEL TYPE :</b></p>
 <div class="form-group"> 
       <div class="funkyradio">
<div class="funkyradio-primary col-md-2">
           <input type="checkbox" name="pvc" id="checkbox3" checked/>
            <label for="checkbox3"><b>PVC</b></label>
        </div>

<div class="funkyradio-primary col-md-2" style="float:center;margin-top:-6%;margin-bottom:2%;margin-left:17%">
            <input type="checkbox" name="pp" id="checkbox4" checked/>
            <label for="checkbox4"><b>PP</b></label>
        </div>
			

<div class="funkyradio-primary col-md-2"style="float:center;margin-top:-8%;margin-bottom:2%;margin-left:35%">
            <input type="checkbox" name="ss_small_lit" id="checkbox5" checked/>
            <label for="checkbox5"><b>SS Small Lit</b></label>
        </div>
			

<div class="funkyradio-primary col-md-2"style="float:center;margin-top:-8%;margin-bottom:2%;margin-left:53%">
            <input type="checkbox" name="ss_big_lit" id="checkbox6" checked/>
            <label for="checkbox6"><b>SS Big Lit</b></label>
        </div>
			
<div class="funkyradio-primary col-md-3"style="float:center;margin-top:-8%;margin-bottom:2%;margin-left:71%">
            <input type="checkbox" name="conditional_vessel" id="checkbox7" checked/>
            <label for="checkbox7"><b>Conditional Vessel</b></label>
        </div>
			</div>
      
    </div>
     </div>
     <div class="well well-sm" style ="margin-left:2%">
     <h5 align=left><b>PORTS :</b></h5>

 <div class="form-group">
      <div class="col-xs-2">
        <label for="ex1">No of Inlet ports<b></b></label>
        <input class="form-control" name="no_of_inlet_ports" type="text">
      </div>
      <div class="col-xs-3">
        <label for="ex2">No of Outlet Ports(Dipping)</label>
        <input class="form-control" name="no_of_outlet_ports" type="text">
      </div>
      <div class="col-xs-2">
        <label for="ex3">Cell Spreader</label>
        <input class="form-control" name="Cell_spreader" type="text">
      </div>

      <div class="col-xs-3">
        <label for="ex4">Cell Sampler CoverSlip</label>
        <input class="form-control" name="Cell_sampler_coverSlip" type="text">
      </div>
  
    </div>
    </div>
    <div class="well well-sm" style ="margin-left:2%">
    <h5 align=left><b>MATRIX :</b></h5>
<div class="form-group">
  
     <div class="col-xs-2">
        <label for="No Matrix">No Matrix</label>
        <input class="form-control" name="no_matrix" type="text">
      </div>
      
      <div class="col-xs-2">
        <label for="Other Type">Other Type </label>
        <input class="form-control" name="other_type" type="text">
      </div>
      
      <div class="funkyradio">

<div class="funkyradio-primary col-md-2"style="float:center;margin-top:-6%;margin-bottom:2%;margin-left:35%">
            <input type="checkbox" name="carbonate_left" id="checkbox8" checked/>
            <label for="checkbox8"><b>Carbonate Left </b></label>
        </div>
			</div>
      
 <div class="col-xs-3"style="float:center;margin-top:-8%;margin-bottom:2%;margin-left:53%">
        <label for="No. Plates"> PolyCarbonate No. Plates</label>
        <input class="form-control" name="No_Plates" type="text">
      </div>
      
      
     <div class="funkyradio">

<div class="funkyradio-primary col-md-2"style="float:center;margin-top:-8%;margin-bottom:2%;margin-left:78%">
            <input type="checkbox" name="carbonate_right" id="checkbox9" checked/>
            <label for="checkbox9"><b>Carbonate Right </b></label>
        </div>
			</div>
      </div>
      </div>
      
      <div class="well well-sm" style ="margin-left:2%">
      <h5 align=left><b>SENSORS :</b></h5>
<div class="form-group">
<div class="col-sm-2">
        <label for="no sensors">No Sensors :</label>
        <input class="form-control" name="no_sensors" id="no_sensors" type="text">
      </div>
      <div class="funkyradio">
     <div class="funkyradio-primary col-md-2"style="float:center;margin-top:-6%;margin-left:17%">
            <input type="checkbox" name="pH" id="checkbox11" checked/>
            <label for="checkbox11"><b>pH </b></label>
        </div>
      </div>
     
      
      <div class="col-sm-2"style="float:center;margin-top:-5%;margin-left:2%">
        <label for="make">Make</label>
        <input class="form-control" name="make" type="text">
      </div>
       
      
 
      <div class="funkyradio">
     <div class="funkyradio-primary col-md-2" style="float:center;margin-top:-6%;margin-left:57%">
            <input type="checkbox" name="DO" id="checkbox12" checked/>
            <label for="checkbox12"><b>DO </b></label>
        </div>
         </div>
       
        
      <div class="col-xs-2" style="float:center;margin-top:-5%;margin-left:2%">
        <label for="make">Make</label>
        <input class="form-control" name="Make" type="text">
      </div>
      </div>
      </div>
      <div class="well well-sm" style ="margin-left:2%">
<div class="form-group">
<label for="text" class=" col-xs-6"style="text-align:left ;margin-left:0%">Remarks on the system.Details of AIR/GAS connections, Air Pumps etc:</label><br><br>
<div class="col-xs-12"style="margin-left:0%;height:-450%">
<textarea style="height:750%" type="text" class="form-control" name="Remarks" rows="14" cols="50" ></textarea>
</div>
</div>
</div>
<div  style ="margin-left:2%;margin-top:-%;color:white">
<h6>QUALITY ASSURANCE: <h7>This Form Comes Into Effect From Jan 2014. See Page 6 For Approvals:</h7> </h6>
</div>
  <button type="button" class="btn btn-default previousBtn btn-lg pull-left prev-step"style="width:120px;border: 2px solid #fff">Previous</button>
          <button class="btn btn-primary nextBtn btn-lg pull-right" type="button" >Next</button>
  </div>
 <!-- second page starts from here --> 
 
  <div class="row setup-content" id="step-2">
  <div class="row">
<div class="col-md-3 ">

<div class="well well-sm" style ="border:df1010 ;margin-left:9%">
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
<input type="text" class="form-control" name="Date" id="Date" >

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
<input type="if Bag:Bag irradiated" class="form-control" name="ifbagbagirradiated"  ><br>
</div> 
<label class="control-label col-sm-3" for="Irradation Batch No:">Irradation Batch No:</label>
<div class="col-sm-2">
<input type="Irradation Batch No:" class="form-control" name="irradationbatchno"  ><br>
</div>
<label class="control-label col-sm-3" for="If vessel: Sterilized on">If Vessel:Sterilized on:</label>
<div class="col-sm-2">
<input type="If vessel:Sterilized on" class="form-control" name="ifvesselsterilizedon"  ><br>
</div>
<label class="control-label col-sm-3" for="Method">Method:</label>
<div class="col-sm-2">
<input type="Method" class="form-control" name="method"  ><br>
</div>
<label class="control-label col-sm-3" for="Sterilization Run NO:">Sterilization Run No:</label>
<div class="col-sm-2">
<input type="Sterilization Run NO:" class="form-control" name="sterilizationrunno"  ><br>
</div>
<label class="control-label col-sm-3" for="QC Check OF Sterility">QC Check Of Sterility:</label>
<div class="col-sm-2">
<input type="QC Check OF Sterility" class="form-control" name="QCcheckofsterility"  ><br>
</div>
</div>
</div>



<div class="well well-sm" style ="width:96% ;margin-left:2%">
         <div class="form-group"  >
 <label class="control-label col-sm-1" for="cells">Cells:</label>
<div class="col-sm-2">
<input type="Cells" class="form-control" name="cells"  >

 </div>

<label class="control-label col-sm-2" for="Passage No" style="margin-left:-50px">Passage No:</label>
<div class="col-sm-2">
<input type="Passage No" class="form-control" name="passageno"  >
</div>

<label class="control-label col-sm-2" for="Source" style="margin-left:-100px">Source:</label>
<div class="col-sm-4">
<input type="Source" class="form-control" name="source"  >
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
<input type="text" class="form-control" name="trypsin"  placeholder="R">
</div>

<label class="control-label col-sm-2" for="Medium of cells" style="margin-left:-5%;">Medium Of cells:</label>
<div class="col-sm-1" style="margin-right:7%;margin-left:-2%">
<input type ="line" name="medium_of_cells" style = "border-bottom:1px dashed black; width:150px;" >
</div>	
<div class="col-sm-2" style="margin-left:-1%">
<input type="text" class="form-control" name="mediumofcells" placeholder="R" >

</div>
<label class="control-label col-sm-1" for="Serum" style="margin-left:-3%">Serum :</label>
<div class="col-sm-1" style="margin-right:7%;margin-left:-2%">

<input type ="line" name="serum" style = " border-bottom:1px dashed black; width:150px; "  >
<p style="margin-top:-20px;margin-left:140px">%</p>
</div>	
<div class="col-sm-2"style="margin-left:-1%">

<input type="Serum" class="form-control" name="serum_r " id="Serum" placeholder="R" >
</div>
</div>
</div>
<div class="well well-sm" style ="width:96% ;margin-left:2%;border:1px solid black">
<div class="form-group"  >
<label class="control-label col-sm-3" style ="margin-left:-2%"for="total no of cells seeded"><h4><b>Total No. of Cells Seeded:</b></h4></label>
<div class="col-sm-2" style ="margin-left:-2%;margin-top:1%">
<input type="text" class="form-control" name="totalnoofcellsseeded" >
</div>

<label class="control-label col-sm-2" for="Cells Per ml" style ="margin-left:-6%"><h4><b>Cells Per ml:</b></h4></label>
<div class="col-sm-2"style ="margin-top:1%;margin-left:5%">
<input type="text" class="form-control" name="cellsperml"  >
</div>

<label class="control-label col-sm-2" for="Cells per Sq.Cm" style ="margin-left:-2%"><h4><b>Cells per Sq.Cm:</b></h4></label>
<div class="col-sm-2" style ="margin-left:-2%">

<input style="margin-top:7%" type="text" class="form-control" name="CellspersqCm"  >
</div>
</div>
</div>
<div class="well well-sm" style ="width:96% ;margin-left:2%">
<div class="form-group"  >


<label class="control-label col-sm-2" for="Medium of cells" style="margin-left:-7%;">Medium #</label>
<div class="col-sm-1" style="margin-right:7%;margin-left:-2%">
<input type ="line" name="medum#" style = "border-bottom:1px dashed black; width:150px;" >
</div>	
<div class="col-sm-2" style="margin-left:-2%">
<input type="text" class="form-control" name="medium#_r" placeholder="R" >

</div>
<label class="control-label col-sm-1" for="Serum" style="margin-left:-2%">Serum #</label>
<div class="col-sm-1" style="margin-right:7%;margin-left:-2%">

<input type ="line" name="serum#" style = " border-bottom:1px dashed black; width:60px; "  >
<p style="margin-top:-20px;margin-left:60px">%</p>
</div>
<div class="col-sm-1" style="margin-left:-9%">
<input type ="line" style = " border-bottom:1px dashed black; width:30px; "  >

</div>	
<div class="col-sm-2"style="margin-left:-4%">

<input type="text" class="form-control" name="serum#_r " id="Serum" placeholder="R" >
</div>
<label class="control-label col-sm-2" style="margin-left:-25px" >Sodium Bicarbonate #:</label>
<div class="col-sm-2"style="margin-left:-2%">
<input type="text" class="form-control" name="sodiumbicarbonate"  placeholder="R">
</div><br><br>
<label class="control-label col-sm-2" for="Medium of cells" style="margin-left:-4%;">Antibiotics 1 #</label>
<div class="col-sm-1" style="margin-right:7%;margin-left:-2%">
<input type ="line" name="antibiotics1line"style = "border-bottom:1px dashed black; width:110px;" >
</div>	
<div class="col-sm-2" style="margin-left:-5%">
<input type="text" class="form-control" name="antibiotics1_r" placeholder="R" >

</div>
<label class="control-label col-sm-2" for="Serum" style="margin-left:-7%">Antibiotics 2 #</label>
<div class="col-sm-1" style="margin-right:7%;margin-left:-2%">

<input type ="line" name="antibiotics2line"style = " border-bottom:1px dashed black; width:90px; "  >

</div>
	
<div class="col-sm-2"style="margin-left:-7%">

<input type="text" class="form-control" name="antibiotics2_r " placeholder="R" >
</div>
<label class="control-label col-sm-2" style="margin-left:-140px" >Other:</label>
<div class="col-sm-1" style="margin-left:-2%">

<input type ="line" name="other" style = " border-bottom:1px dashed black; width:85px; "  >
<p style="margin-top:-20px;margin-left:91px">#:</p>
</div>
<div class="col-sm-2"style="margin-left:2%;">
<input type="text" class="form-control" name="other_r"  placeholder="R">
</div>
</div>
</div>
<div class="well well-sm" style ="width:96% ;margin-left:2%">
<h4 align="center"><b>Total Volume of Medium for Initiating the Culture :</b></h4>
  </div>

<div class="well well-sm" style ="width:96% ;margin-left:2%">
<div class="form-group"style="margin-left:-3%">
<label for="text" class=" col-xs-4"style="text-align:left ;margin-left:4%">Method of Setting up of Culture :</label>
<div class="col-xs-11"style="margin-left:6%;height:-450%">
<textarea style="height:750%" type="text" name="method_of_setting_up_of_culture"class="form-control" rows="14" cols="50" ></textarea>
</div>
</div>
</div>
<div class="well well-sm" style ="border:df1010 ;width:96% ;margin-left:2%">
<div class="form-group"style ="margin-left:20%">
<label for="text" class="control-label" style ="margin-left:-20%" ><b>Culture Set up By :</b></label><br>

<label for="text" class="control-label col-xs-2">Name :</label>
<div class="col-xs-3">
<input type="text" class="form-control " name="name">
</div>

<label for="text" class="control-label col-xs-2"style="margin-left:-4%">Designation :</label>
<div class="col-xs-3">
<input type="text" class="form-control u" name="designation"  >

</div><br><br>
<label for="text" class="control-label col-xs-2">Name : </label>
<div class="col-xs-3">
<input type="text" class="form-control" name="secondname"  >
</div>

<label for="text" class="control-label col-xs-2"style="margin-left:-4%">Designation :</label>
<div class="col-xs-3">
<input type="text" class="form-control u" name="seconddesignation"  >

</div><br>
</div>
</div><br><br>

   <button type="button" class="btn btn-default previousBtn btn-lg pull-left prev-step"style="width:120px;border: 2px solid #fff">Previous</button>
          <button class="btn btn-primary nextBtn btn-lg pull-right" type="button" >Next</button>
  </div>
  <div class="row setup-content" id="step-3">
   

 <div class="row">
<div class="col-md-3 ">

<div class="well well-sm" style ="border:df1010 ;margin-left:9%">
<div class="form-group">
<label for="text" class="control-label col-xs-5">TCC :</label> <!-- remove it -->
<div class="col-xs-5">
<input type="text" class="form-control" name="tcc"  >
</div>
</div>
</div>

</div>

<div class="col-md-3 col-md-offset-6">

<div class="well well-sm" style =" margin-right:8%">
<div class="form-group">
<label for="text" class="control-label col-xs-4">Date :</label><!-- remove it -->
<div class="col-xs-8">
<input type="text" class="form-control" name="Date" id="Date" >

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
<div class="row">
<div class="col-md-1 ">

<div class="well well-sm" style =" margin-left:35%">
<div class="form-group" >
<label for="text" class="control-label" style =" margin-left:17%">Day0</label>

</div>
</div>

</div>

<div class="col-md-3 col-md-offset-8">

<div class="well well-sm" style =" margin-right:8%">
<div class="form-group">
<label for="text" class="control-label col-xs-4">Date :</label>
<div class="col-xs-8">
<input type="text" class="form-control" name="PreviousDate" id="Date" >

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
<input type="checkbox"   name="sample"  >
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
        <td><input type="text" class="form-control" name="physical1"></td>
        <td><input type="text" class="form-control" name="physical2"></td>
        <td><input type="text" class="form-control" name="physical3"></td>
     </tr>
        <tr>
        <td><b>pH Culture fluid(Online / Manual):</td>
        <td><input type="text" class="form-control" name="ph1"></td>
        <td><input type="text" class="form-control" name="ph2"></td>
        <td><input type="text" class="form-control" name="ph3"></td>
   </tr>
           <tr>
        <td><b>dO2 Culture fluid(Online / Manual):</td>
        <td><input type="text" class="form-control" name="do1"></td>
        <td><input type="text" class="form-control" name="do2"></td>
        <td><input type="text" class="form-control" name="do3"></td><br><br>
      </tr>
        </tbody>
    </table>
  </table>
  
<div class="form-group" >
<label for="text" class="control-label col-xs-4" style="margin-left:-7%">Glucose concentration: Test Method:</label>
<div class="col-xs-8" style="margin-left:5%">
<input type="text" class="form-control" name="glucose_concentration"  >

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
<div class="col-xs-2"style="margin-left:-1%">
<input type="text" class="form-control" name="gms"  >
</div>
<label for="text" class="control-label col-xs-3" style="margin-left:1%">OD of Test Sample :</label>
<div class="col-xs-3" style="margin-left:3%">
<input type="text" class="form-control" name="odoftestsample"  >
</div>
</div>
</div>
<div class="well well-sm" style ="border:df1010 ;width:96% ;margin-left:2%">
<div class="form-group"style="margin-left:-3%">
<label for="text" class="control-label col-xs-4"style="text-align:left ;margin-left:4%">Media Conditioning, Additions and Remarks :</label>
<div class="col-xs-8"style="margin-left:-6%;height:-750%">
<textarea style="height:750%" type="text" class="form-control" rows="14" cols="50" ></textarea>
</div>
</div>
</div><br><br>


<!--<div class="row">
<div class="col-md-1 ">

<div class="well well-sm" style =" margin-left:35%">
<div class="form-group" >
<label for="text" class="control-label" style =" margin-left:17%">Day1</label>

</div>
</div>

</div>

<div class="col-md-3 col-md-offset-8">

<div class="well well-sm" style =" margin-right:8%">
<div class="form-group">
<label for="text" class="control-label col-xs-4">Date :</label>
<div class="col-xs-8">
<input type="text" class="form-control" name="PreviousDate" id="Date" >

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
<input type="checkbox"   name="sample"  >
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
        <td><input type="text" class="form-control" name="physical1"></td>
        <td><input type="text" class="form-control" name="physical2"></td>
        <td><input type="text" class="form-control" name="physical3"></td>
     </tr>
        <tr>
        <td><b>pH Culture fluid(Online / Manual):</td>
        <td><input type="text" class="form-control" name="ph1"></td>
        <td><input type="text" class="form-control" name="ph2"></td>
        <td><input type="text" class="form-control" name="ph3"></td>
   </tr>
           <tr>
        <td><b>dO2 Culture fluid(Online / Manual):</td>
        <td><input type="text" class="form-control" name="do1"></td>
        <td><input type="text" class="form-control" name="do2"></td>
        <td><input type="text" class="form-control" name="do3"></td><br><br>
      </tr>
        </tbody>
    </table>
  </table>
  
<div class="form-group" >
<label for="text" class="control-label col-xs-4" style="margin-left:-7%">Glucose concentration: Test Method:</label>
<div class="col-xs-8" style="margin-left:5%">
<input type="text" class="form-control" name="glucose_concentration"  >

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
<div class="col-xs-2"style="margin-left:-1%">
<input type="text" class="form-control" name="gms"  >
</div>
<label for="text" class="control-label col-xs-3" style="margin-left:1%">OD of Test Sample :</label>
<div class="col-xs-3" style="margin-left:3%">
<input type="text" class="form-control" name="odoftestsample"  >
</div>
</div>
</div>
<div class="well well-sm" style ="border:df1010 ;width:96% ;margin-left:2%">
<div class="form-group"style="margin-left:-3%">
<label for="text" class="control-label col-xs-4"style="text-align:left ;margin-left:4%">Media Conditioning, Additions and Remarks :</label>
<div class="col-xs-8"style="margin-left:-6%;height:-750%">
<textarea style="height:750%" type="text" class="form-control" rows="14" cols="50" ></textarea>
</div>
</div>
</div>
<button type="button" class="btn btn-default previousBtn btn-lg pull-left prev-step"style="width:120px;border: 2px solid #fff">Previous</button>
          <button class="btn btn-primary nextBtn btn-lg pull-right" type="button" >Next</button>
        </div>
    
    
    <div class="row setup-content" id="step-4">     
<div class="row">
<div class="col-md-3 ">

<div class="well well-sm" style ="border:df1010 ;margin-left:9%">
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
<input type="text" class="form-control" name="Date" id="Date" >

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
<div class="row">
<div class="col-md-1 ">

<div class="well well-sm" style =" margin-left:35%">
<div class="form-group" >
<label for="text" class="control-label" style =" margin-left:17%">Day2</label>

</div>
</div>

</div>

<div class="col-md-3 col-md-offset-8">

<div class="well well-sm" style =" margin-right:8%">
<div class="form-group">
<label for="text" class="control-label col-xs-4">Date :</label>
<div class="col-xs-8">
<input type="text" class="form-control" name="PreviousDate" id="Date" >

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
<input type="checkbox"   name="sample"  >
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
        <td><input type="text" class="form-control" name="physical1"></td>
        <td><input type="text" class="form-control" name="physical2"></td>
        <td><input type="text" class="form-control" name="physical3"></td>
     </tr>
        <tr>
        <td><b>pH Culture fluid(Online / Manual):</td>
        <td><input type="text" class="form-control" name="ph1"></td>
        <td><input type="text" class="form-control" name="ph2"></td>
        <td><input type="text" class="form-control" name="ph3"></td>
   </tr>
           <tr>
        <td><b>dO2 Culture fluid(Online / Manual):</td>
        <td><input type="text" class="form-control" name="do1"></td>
        <td><input type="text" class="form-control" name="do2"></td>
        <td><input type="text" class="form-control" name="do3"></td><br><br>
      </tr>
        </tbody>
    </table>
  </table>
  
<div class="form-group" >
<label for="text" class="control-label col-xs-4" style="margin-left:-7%">Glucose concentration: Test Method:</label>
<div class="col-xs-8" style="margin-left:5%">
<input type="text" class="form-control" name="glucose_concentration"  >

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
<div class="col-xs-2"style="margin-left:-1%">
<input type="text" class="form-control" name="gms"  >
</div>
<label for="text" class="control-label col-xs-3" style="margin-left:1%">OD of Test Sample :</label>
<div class="col-xs-3" style="margin-left:3%">
<input type="text" class="form-control" name="odoftestsample"  >
</div>
</div>
</div>
<div class="well well-sm" style ="border:df1010 ;width:96% ;margin-left:2%">
<div class="form-group"style="margin-left:-3%">
<label for="text" class="control-label col-xs-4"style="text-align:left ;margin-left:4%">Media Conditioning, Additions and Remarks :</label>
<div class="col-xs-8"style="margin-left:-6%;height:-750%">
<textarea style="height:750%" type="text" class="form-control" rows="14" cols="50" ></textarea>
</div>
</div>
</div><br><br>


<div class="row">
<div class="col-md-1 ">

<div class="well well-sm" style =" margin-left:35%">
<div class="form-group" >
<label for="text" class="control-label" style =" margin-left:17%">Day3</label>

</div>
</div>

</div>

<div class="col-md-3 col-md-offset-8">

<div class="well well-sm" style =" margin-right:8%">
<div class="form-group">
<label for="text" class="control-label col-xs-4">Date :</label>
<div class="col-xs-8">
<input type="text" class="form-control" name="PreviousDate" id="Date" >

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
<input type="checkbox"   name="sample"  >
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
        <td><input type="text" class="form-control" name="physical1"></td>
        <td><input type="text" class="form-control" name="physical2"></td>
        <td><input type="text" class="form-control" name="physical3"></td>
     </tr>
        <tr>
        <td><b>pH Culture fluid(Online / Manual):</td>
        <td><input type="text" class="form-control" name="ph1"></td>
        <td><input type="text" class="form-control" name="ph2"></td>
        <td><input type="text" class="form-control" name="ph3"></td>
   </tr>
           <tr>
        <td><b>dO2 Culture fluid(Online / Manual):</td>
        <td><input type="text" class="form-control" name="do1"></td>
        <td><input type="text" class="form-control" name="do2"></td>
        <td><input type="text" class="form-control" name="do3"></td><br><br>
      </tr>
        </tbody>
    </table>
  </table>
  
<div class="form-group" >
<label for="text" class="control-label col-xs-4" style="margin-left:-7%">Glucose concentration: Test Method:</label>
<div class="col-xs-8" style="margin-left:5%">
<input type="text" class="form-control" name="glucose_concentration"  >

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
<div class="col-xs-2"style="margin-left:-1%">
<input type="text" class="form-control" name="gms"  >
</div>
<label for="text" class="control-label col-xs-3" style="margin-left:1%">OD of Test Sample :</label>
<div class="col-xs-3" style="margin-left:3%">
<input type="text" class="form-control" name="odoftestsample"  >
</div>
</div>
</div>
<div class="well well-sm" style ="border:df1010 ;width:96% ;margin-left:2%">
<div class="form-group"style="margin-left:-3%">
<label for="text" class="control-label col-xs-4"style="text-align:left ;margin-left:4%">Media Conditioning, Additions and Remarks :</label>
<div class="col-xs-8"style="margin-left:-6%;height:-750%">
<textarea style="height:750%" type="text" class="form-control" rows="14" cols="50" ></textarea>
</div>
</div>
</div>
<button type="button" class="btn btn-default previousBtn btn-lg pull-left prev-step"style="width:120px;border: 2px solid #fff">Previous</button>
          <button class="btn btn-primary nextBtn btn-lg pull-right" type="button" >Next</button>
        </div>
     <div class="row setup-content" id="step-5">

<div class="row">
<div class="col-md-3 ">

<div class="well well-sm" style ="border:df1010 ;margin-left:9%">
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
<input type="text" class="form-control" name="Date" id="Date" >

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
<div class="row">
<div class="col-md-1 ">

<div class="well well-sm" style =" margin-left:35%">
<div class="form-group" >
<label for="text" class="control-label" style =" margin-left:17%">Day4</label>

</div>
</div>

</div>

<div class="col-md-3 col-md-offset-8">

<div class="well well-sm" style =" margin-right:8%">
<div class="form-group">
<label for="text" class="control-label col-xs-4">Date :</label>
<div class="col-xs-8">
<input type="text" class="form-control" name="PreviousDate" id="Date" >

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
<input type="checkbox"   name="sample"  >
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
        <td><input type="text" class="form-control" name="physical1"></td>
        <td><input type="text" class="form-control" name="physical2"></td>
        <td><input type="text" class="form-control" name="physical3"></td>
     </tr>
        <tr>
        <td><b>pH Culture fluid(Online / Manual):</td>
        <td><input type="text" class="form-control" name="ph1"></td>
        <td><input type="text" class="form-control" name="ph2"></td>
        <td><input type="text" class="form-control" name="ph3"></td>
   </tr>
           <tr>
        <td><b>dO2 Culture fluid(Online / Manual):</td>
        <td><input type="text" class="form-control" name="do1"></td>
        <td><input type="text" class="form-control" name="do2"></td>
        <td><input type="text" class="form-control" name="do3"></td><br><br>
      </tr>
        </tbody>
    </table>
  </table>
  
<div class="form-group" >
<label for="text" class="control-label col-xs-4" style="margin-left:-7%">Glucose concentration: Test Method:</label>
<div class="col-xs-8" style="margin-left:5%">
<input type="text" class="form-control" name="glucose_concentration"  >

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
<div class="col-xs-2"style="margin-left:-1%">
<input type="text" class="form-control" name="gms"  >
</div>
<label for="text" class="control-label col-xs-3" style="margin-left:1%">OD of Test Sample :</label>
<div class="col-xs-3" style="margin-left:3%">
<input type="text" class="form-control" name="odoftestsample"  >
</div>
</div>
</div>
<div class="well well-sm" style ="border:df1010 ;width:96% ;margin-left:2%">
<div class="form-group"style="margin-left:-3%">
<label for="text" class="control-label col-xs-4"style="text-align:left ;margin-left:4%">Media Conditioning, Additions and Remarks :</label>
<div class="col-xs-8"style="margin-left:-6%;height:-750%">
<textarea style="height:750%" type="text" class="form-control" rows="14" cols="50" ></textarea>
</div>
</div>
</div><br><br>


<div class="row">
<div class="col-md-1 ">

<div class="well well-sm" style =" margin-left:35%">
<div class="form-group" >
<label for="text" class="control-label" style =" margin-left:17%">Day5</label>

</div>
</div>

</div>

<div class="col-md-3 col-md-offset-8">

<div class="well well-sm" style =" margin-right:8%">
<div class="form-group">
<label for="text" class="control-label col-xs-4">Date :</label>
<div class="col-xs-8">
<input type="text" class="form-control" name="PreviousDate" id="Date" >

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
<input type="checkbox"   name="sample"  >
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
        <td><input type="text" class="form-control" name="physical1"></td>
        <td><input type="text" class="form-control" name="physical2"></td>
        <td><input type="text" class="form-control" name="physical3"></td>
     </tr>
        <tr>
        <td><b>pH Culture fluid(Online / Manual):</td>
        <td><input type="text" class="form-control" name="ph1"></td>
        <td><input type="text" class="form-control" name="ph2"></td>
        <td><input type="text" class="form-control" name="ph3"></td>
   </tr>
           <tr>
        <td><b>dO2 Culture fluid(Online / Manual):</td>
        <td><input type="text" class="form-control" name="do1"></td>
        <td><input type="text" class="form-control" name="do2"></td>
        <td><input type="text" class="form-control" name="do3"></td><br><br>
      </tr>
        </tbody>
    </table>
  </table>
  
<div class="form-group" >
<label for="text" class="control-label col-xs-4" style="margin-left:-7%">Glucose concentration: Test Method:</label>
<div class="col-xs-8" style="margin-left:5%">
<input type="text" class="form-control" name="glucose_concentration"  >

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
<div class="col-xs-2"style="margin-left:-1%">
<input type="text" class="form-control" name="gms"  >
</div>
<label for="text" class="control-label col-xs-3" style="margin-left:1%">OD of Test Sample :</label>
<div class="col-xs-3" style="margin-left:3%">
<input type="text" class="form-control" name="odoftestsample"  >
</div>
</div>
</div>
<div class="well well-sm" style ="border:df1010 ;width:96% ;margin-left:2%">
<div class="form-group"style="margin-left:-3%">
<label for="text" class="control-label col-xs-4"style="text-align:left ;margin-left:4%">Media Conditioning, Additions and Remarks :</label>
<div class="col-xs-8"style="margin-left:-6%;height:-750%">
<textarea style="height:750%" type="text" class="form-control" rows="14" cols="50" ></textarea>
</div>
</div>
</div>
<button type="button" class="btn btn-default previousBtn btn-lg pull-left prev-step"style="width:120px;border: 2px solid #fff">Previous</button>
          <button class="btn btn-primary nextBtn btn-lg pull-right" type="button" >Next</button>
        </div>
 
         <div class="row setup-content" id="step-6">     
<div class="row">
<div class="col-md-3 ">

<div class="well well-sm" style ="border:df1010 ;margin-left:9%">
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
<input type="text" class="form-control" name="Date" id="Date" >

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
<div class="row">
<div class="col-md-1 ">

<div class="well well-sm" style =" margin-left:35%">
<div class="form-group" >
<label for="text" class="control-label" style =" margin-left:17%">Day6</label>

</div>
</div>

</div>

<div class="col-md-3 col-md-offset-8">

<div class="well well-sm" style =" margin-right:8%">
<div class="form-group">
<label for="text" class="control-label col-xs-4">Date :</label>
<div class="col-xs-8">
<input type="text" class="form-control" name="PreviousDate" id="Date" >

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
<input type="checkbox"   name="sample"  >
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
        <td><input type="text" class="form-control" name="physical1"></td>
        <td><input type="text" class="form-control" name="physical2"></td>
        <td><input type="text" class="form-control" name="physical3"></td>
     </tr>
        <tr>
        <td><b>pH Culture fluid(Online / Manual):</td>
        <td><input type="text" class="form-control" name="ph1"></td>
        <td><input type="text" class="form-control" name="ph2"></td>
        <td><input type="text" class="form-control" name="ph3"></td>
   </tr>
           <tr>
        <td><b>dO2 Culture fluid(Online / Manual):</td>
        <td><input type="text" class="form-control" name="do1"></td>
        <td><input type="text" class="form-control" name="do2"></td>
        <td><input type="text" class="form-control" name="do3"></td><br><br>
      </tr>
        </tbody>
    </table>
  </table>
  
<div class="form-group" >
<label for="text" class="control-label col-xs-4" style="margin-left:-7%">Glucose concentration: Test Method:</label>
<div class="col-xs-8" style="margin-left:5%">
<input type="text" class="form-control" name="glucose_concentration"  >

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
<div class="col-xs-2"style="margin-left:-1%">
<input type="text" class="form-control" name="gms"  >
</div>
<label for="text" class="control-label col-xs-3" style="margin-left:1%">OD of Test Sample :</label>
<div class="col-xs-3" style="margin-left:3%">
<input type="text" class="form-control" name="odoftestsample"  >
</div>
</div>
</div>
<div class="well well-sm" style ="border:df1010 ;width:96% ;margin-left:2%">
<div class="form-group"style="margin-left:-3%">
<label for="text" class="control-label col-xs-4"style="text-align:left ;margin-left:4%">Media Conditioning, Additions and Remarks :</label>
<div class="col-xs-8"style="margin-left:-6%;height:-750%">
<textarea style="height:750%" type="text" class="form-control" rows="14" cols="50" ></textarea>
</div>
</div>
</div><br><br>


<div class="row">
<div class="col-md-1 ">

<div class="well well-sm" style =" margin-left:35%">
<div class="form-group" >
<label for="text" class="control-label" style =" margin-left:17%">Day7</label>

</div>
</div>

</div>

<div class="col-md-3 col-md-offset-8">

<div class="well well-sm" style =" margin-right:8%">
<div class="form-group">
<label for="text" class="control-label col-xs-4">Date :</label>
<div class="col-xs-8">
<input type="text" class="form-control" name="PreviousDate" id="Date" >

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
<input type="checkbox"   name="sample"  >
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
        <td><input type="text" class="form-control" name="physical1"></td>
        <td><input type="text" class="form-control" name="physical2"></td>
        <td><input type="text" class="form-control" name="physical3"></td>
     </tr>
        <tr>
        <td><b>pH Culture fluid(Online / Manual):</td>
        <td><input type="text" class="form-control" name="ph1"></td>
        <td><input type="text" class="form-control" name="ph2"></td>
        <td><input type="text" class="form-control" name="ph3"></td>
   </tr>
           <tr>
        <td><b>dO2 Culture fluid(Online / Manual):</td>
        <td><input type="text" class="form-control" name="do1"></td>
        <td><input type="text" class="form-control" name="do2"></td>
        <td><input type="text" class="form-control" name="do3"></td><br><br>
      </tr>
        </tbody>
    </table>
  </table>
  
<div class="form-group" >
<label for="text" class="control-label col-xs-4" style="margin-left:-7%">Glucose concentration: Test Method:</label>
<div class="col-xs-8" style="margin-left:5%">
<input type="text" class="form-control" name="glucose_concentration"  >

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
<div class="col-xs-2"style="margin-left:-1%">
<input type="text" class="form-control" name="gms"  >
</div>
<label for="text" class="control-label col-xs-3" style="margin-left:1%">OD of Test Sample :</label>
<div class="col-xs-3" style="margin-left:3%">
<input type="text" class="form-control" name="odoftestsample"  >
</div>
</div>
</div>
<div class="well well-sm" style ="border:df1010 ;width:96% ;margin-left:2%">
<div class="form-group"style="margin-left:-3%">
<label for="text" class="control-label col-xs-4"style="text-align:left ;margin-left:4%">Media Conditioning, Additions and Remarks :</label>
<div class="col-xs-8"style="margin-left:-6%;height:-750%">
<textarea style="height:750%" type="text" class="form-control" rows="14" cols="50" ></textarea>
</div>
</div>
</div>
<button type="button" class="btn btn-default previousBtn btn-lg pull-left prev-step"style="width:120px;border: 2px solid #fff">Previous</button>
          <button class="btn btn-primary nextBtn btn-lg pull-right" type="button" >Next</button>
        </div>
        <div class="row setup-content" id="step-7">     
<div class="row">
<div class="col-md-3 ">

<div class="well well-sm" style ="border:df1010 ;margin-left:9%">
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
<input type="text" class="form-control" name="Date" id="Date" >

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
<div class="row">
<div class="col-md-1 ">

<div class="well well-sm" style =" margin-left:35%">
<div class="form-group" >
<label for="text" class="control-label" style =" margin-left:17%">Day8</label>

</div>
</div>

</div>

<div class="col-md-3 col-md-offset-8">

<div class="well well-sm" style =" margin-right:8%">
<div class="form-group">
<label for="text" class="control-label col-xs-4">Date :</label>
<div class="col-xs-8">
<input type="text" class="form-control" name="PreviousDate" id="Date" >

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
<input type="checkbox"   name="sample"  >
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
        <td><input type="text" class="form-control" name="physical1"></td>
        <td><input type="text" class="form-control" name="physical2"></td>
        <td><input type="text" class="form-control" name="physical3"></td>
     </tr>
        <tr>
        <td><b>pH Culture fluid(Online / Manual):</td>
        <td><input type="text" class="form-control" name="ph1"></td>
        <td><input type="text" class="form-control" name="ph2"></td>
        <td><input type="text" class="form-control" name="ph3"></td>
   </tr>
           <tr>
        <td><b>dO2 Culture fluid(Online / Manual):</td>
        <td><input type="text" class="form-control" name="do1"></td>
        <td><input type="text" class="form-control" name="do2"></td>
        <td><input type="text" class="form-control" name="do3"></td><br><br>
      </tr>
        </tbody>
    </table>
  </table>
  
<div class="form-group" >
<label for="text" class="control-label col-xs-4" style="margin-left:-7%">Glucose concentration: Test Method:</label>
<div class="col-xs-8" style="margin-left:5%">
<input type="text" class="form-control" name="glucose_concentration"  >

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
<div class="col-xs-2"style="margin-left:-1%">
<input type="text" class="form-control" name="gms"  >
</div>
<label for="text" class="control-label col-xs-3" style="margin-left:1%">OD of Test Sample :</label>
<div class="col-xs-3" style="margin-left:3%">
<input type="text" class="form-control" name="odoftestsample"  >
</div>
</div>
</div>
<div class="well well-sm" style ="border:df1010 ;width:96% ;margin-left:2%">
<div class="form-group"style="margin-left:-3%">
<label for="text" class="control-label col-xs-4"style="text-align:left ;margin-left:4%">Media Conditioning, Additions and Remarks :</label>
<div class="col-xs-8"style="margin-left:-6%;height:-750%">
<textarea style="height:750%" type="text" class="form-control" rows="14" cols="50" ></textarea>
</div>
</div>
</div><br><br>


<div class="row">
<div class="col-md-1 ">

<div class="well well-sm" style =" margin-left:35%">
<div class="form-group" >
<label for="text" class="control-label" style =" margin-left:17%">Day9</label>

</div>
</div>

</div>

<div class="col-md-3 col-md-offset-8">

<div class="well well-sm" style =" margin-right:8%">
<div class="form-group">
<label for="text" class="control-label col-xs-4">Date :</label>
<div class="col-xs-8">
<input type="text" class="form-control" name="PreviousDate" id="Date" >

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
<input type="checkbox"   name="sample"  >
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
        <td><input type="text" class="form-control" name="physical1"></td>
        <td><input type="text" class="form-control" name="physical2"></td>
        <td><input type="text" class="form-control" name="physical3"></td>
     </tr>
        <tr>
        <td><b>pH Culture fluid(Online / Manual):</td>
        <td><input type="text" class="form-control" name="ph1"></td>
        <td><input type="text" class="form-control" name="ph2"></td>
        <td><input type="text" class="form-control" name="ph3"></td>
   </tr>
           <tr>
        <td><b>dO2 Culture fluid(Online / Manual):</td>
        <td><input type="text" class="form-control" name="do1"></td>
        <td><input type="text" class="form-control" name="do2"></td>
        <td><input type="text" class="form-control" name="do3"></td><br><br>
      </tr>
        </tbody>
    </table>
  </table>
  
<div class="form-group" >
<label for="text" class="control-label col-xs-4" style="margin-left:-7%">Glucose concentration: Test Method:</label>
<div class="col-xs-8" style="margin-left:5%">
<input type="text" class="form-control" name="glucose_concentration"  >

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
<div class="col-xs-2"style="margin-left:-1%">
<input type="text" class="form-control" name="gms"  >
</div>
<label for="text" class="control-label col-xs-3" style="margin-left:1%">OD of Test Sample :</label>
<div class="col-xs-3" style="margin-left:3%">
<input type="text" class="form-control" name="odoftestsample"  >
</div>
</div>
</div>
<div class="well well-sm" style ="border:df1010 ;width:96% ;margin-left:2%">
<div class="form-group"style="margin-left:-3%">
<label for="text" class="control-label col-xs-4"style="text-align:left ;margin-left:4%">Media Conditioning, Additions and Remarks :</label>
<div class="col-xs-8"style="margin-left:-6%;height:-750%">
<textarea style="height:750%" type="text" name="media_conditioning_additions_remarks" class="form-control" rows="14" cols="50" ></textarea>
</div>
</div>
</div>
<button type="button" class="btn btn-default previousBtn btn-lg pull-left prev-step"style="width:120px;border: 2px solid #fff">Previous</button>
          <button class="btn btn-primary nextBtn btn-lg pull-right" type="button" >Next</button>
        </div>
    <div class="row setup-content" id="step-8">
   
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
</div><br><br>

</div>
</div> -->
<button type="button" class="btn btn-default previousBtn btn-lg pull-left prev-step"style="width:120px;border: 2px solid #fff">Previous</button>
          <button class="btn btn-success btn-lg pull-right" type="submit">Submit</button>
    </div>
    </div>
  </form>
  
</div>
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
	        var tempTr = $('<tr><td><input type="text" name="cmno" class="form-control"/></td><td><input type="text" name="nocontainers" class="form-control" /></td><td><input type="text" name="yield" class="form-control" /></td><td><input type="text" name="cellyield" class="form-control"/></td><td><input type="text" name="totalcell" class="form-control"/></td><td><span class="glyphicon glyphicon-minus addBtnRemove" id="addBtn_' + i + '"></span></td></tr>').on('click', function () {
	           /* $(this).closest('tr').remove();  */
	           $(document.body).on('click', '.addBtnRemove', function (e) {
	                $(this).closest('tr').remove();  
	            });
	        });
	        $("#tableAddRow").append(tempTr)
	        i++;
	    }
	});
</script> 
</body>
</html>