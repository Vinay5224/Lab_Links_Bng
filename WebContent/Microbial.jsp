
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script type="text/javascript"
	src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/js/bootstrap-datepicker.min.js"></script>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/css/bootstrap-datepicker3.css" />
	
	
	
	
	
	
	

<title>Lab Links</title>
<script type="text/javascript">

$(document).on('keypress','.ph_controlVal',function( event ) { 
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


$(document).on('keypress','.sampleLabellingQty',function( event ) { 
	 
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


function phValKeyUp()
{
	
	}
$(document)
.ready(
		function() {
$('#tempincubation').keyup(function(e)
        {
	if (/\D/g.test(this.value))
	  {
	    // Filter non-digits from input value.
	    this.value = this.value.replace(/\D/g, '');
	  }
        });
     

$('#phVal').keypress(function(event)
        {
	/* if (/\D/g.test(this.value))
	  {
	    // Filter non-digits from input value.
	    this.value = this.value.replace(/\D/g, '');
	  } */
	  
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
     
$('#do2_value').keypress(function(event)
        {
	/* if (/\D/g.test(this.value))
	  {
	    // Filter non-digits from input value.
	    this.value = this.value.replace(/\D/g, '');
	  } */
	  
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




		});
$(window).keydown(function(event){
    if(event.keyCode == 13) {
      event.preventDefault();
      return false;
    }
  });
	$(document)
			.ready(
					function() {
						$("#microbialForm")
								.submit(
										function(event) {

											var org = $("#Name_Of_the_Organism")
													.val();

											var mc = $("#mc").val();

											var dat = $("#Date").val();

											if (org != null && org != ""
													&& mc != null && mc != ""
													&& dat != null && dat != "") {

											} else {

												alert("Mandatory fields 'MC', 'Date' & 'Name of organism' must be entered");
												return false;
											}

										});
					});
</script>
</head>
<style>
.manatory{
color: red;
 font-size: 16px;

}
#snackbar1 {
	visibility: hidden;
	min-width: 250px;
	margin-left: -125px;
	background-color: red;
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

#snackbar1.show {
	visibility: visible;
	-webkit-animation: fadein 0.5s, fadeout 0.5s 2.5s;
	animation: fadein 0.5s, fadeout 0.5s 2.5s;
}

#snackbar {
	visibility: hidden;
	min-width: 250px;
	margin-left: -125px;
	background-color: red;
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

@
-webkit-keyframes fadein {
	from {bottom: 0;
	opacity: 0;
}

to {
	bottom: 30px;
	opacity: 1;
}

}
@
keyframes fadein {
	from {bottom: 0;
	opacity: 0;
}

to {
	bottom: 30px;
	opacity: 1;
}

}
@
-webkit-keyframes fadeout {
	from {bottom: 30px;
	opacity: 1;
}

to {
	bottom: 0;
	opacity: 0;
}

}
@
keyframes fadeout {
	from {bottom: 30px;
	opacity: 1;
}

to {
	bottom: 0;
	opacity: 0;
}

}
.wizard {
	margin: 20px auto;
	background: #fff;
}

.wizard .nav-tabs {
	position: relative;
	margin: 40px auto;
	margin-bottom: 0;
	border-bottom-color: #e0e0e0;
	background: transparent;
}

.wizard>div.wizard-inner {
	position: relative;
}

.connecting-line {
	height: 3px;
	background: #e0e0e0;
	position: absolute;
	width: 50%;
	margin: 0 auto;
	left: 0;
	right: 2%;
	top: 85%;
	z-index: 1;
}

.wizard .nav-tabs>li.active>a, .wizard .nav-tabs>li.active>a:hover,
	.wizard .nav-tabs>li.active>a:focus {
	color: #555555;
	cursor: default;
	border: 0;
	border-bottom-color: transparent;
}

span.round-tab {
	width: 230px;
	height: 65px;
	bottom: -4%;
	line-height: 90px;
	display: inline-block;
	border-radius: 100px;
	background: #fff;
	border: 2px solid #e0e0e0;
	z-index: 2;
	position: absolute;
	left: -102px;
	text-align: center;
	text-size: 60px;
}

span.round-tab i {
	color: #555555;
}

.wizard li.active span.round-tab {
	background: #fff;
	border: 2px solid #5bc0de;
}

.wizard li.active span.round-tab i {
	color: #5bc0de;
}

span.round-tab:hover {
	color: #333;
	border: 2px solid #333;
}

.wizard .nav-tabs>li {
	width: 25%;
}

.wizard li:after {
	content: " ";
	position: absolute;
	left: 46%;
	opacity: 0;
	margin: 0 auto;
	bottom: 8px;
	border: 5px solid transparent;
	border-bottom-color: #5bc0de;
	transition: 0.1s ease-in-out;
}

.wizard li.active:after {
	content: " ";
	position: absolute;
	left: 50%;
	opacity: 1;
	margin: 8 auto;
	margin-top: 70%;
	bottom: 0px;
	border: 15px solid transparent;
	border-bottom-color: white;
}

.wizard .nav-tabs>li a {
	width: 0px;
	height: 60px;
	right: -10px;
	margin: 20px auto;
	border-radius: 10%;
	padding: 0;
}

.wizard .nav-tabs>li a:hover {
	background: transparent;
}

.wizard .tab-pane {
	position: relative;
	padding-top: 50px;
}

.wizard h3 {
	margin-top: 0;
}

.step1 .row {
	margin-bottom: 10px;
}

.step_21 {
	border: 1px solid #ccc;
	border-radius: 5px;
	padding: 10px;
}

.step33 {
	border-radius: 5px;
	padding-left: 10px;
}

.step4 {
	border-radius: 5px;
	padding-left: 10px;
}

.dropselectsec {
	width: 68%;
	padding: 6px 5px;
	border: 1px solid #ccc;
	border-radius: 3px;
	color: #333;
	margin-left: 10px;
	outline: none;
	font-weight: normal;
}

.dropselectsec1 {
	width: 74%;
	padding: 6px 5px;
	border: 1px solid #ccc;
	border-radius: 3px;
	color: #333;
	margin-left: 10px;
	outline: none;
	font-weight: normal;
}

.mar_ned {
	margin-bottom: 10px;
}

.wdth {
	width: 25%;
}

.birthdrop {
	padding: 6px 5px;
	border: 3px solid #ccc;
	border-radius: 3px;
	color: #333;
	margin-left: 10px;
	width: 16%;
	outline: 0;
	font-weight: normal;
}

/* according menu */
#accordion-container {
	font-size: 13px
}

.accordion-header {
	font-size: 13px;
	background: #ebebeb;
	margin: 5px 0 0;
	padding: 7px 20px;
	cursor: pointer;
	color: #fff;
	font-weight: 400;
	-moz-border-radius: 5px;
	-webkit-border-radius: 5px;
	border-radius: 5px
}

.unselect_img {
	width: 38px;
	-webkit-user-select: none;
	-moz-user-select: none;
	-ms-user-select: none;
	user-select: none;
}

.active-header {
	-moz-border-radius: 5px 5px 0 0;
	-webkit-border-radius: 5px 5px 0 0;
	border-radius: 5px 5px 0 0;
	background: #F53B27;
}

.active-header:after {
	content: "\f068";
	font-family: 'FontAwesome';
	float: right;
	margin: 5px;
	font-weight: 400;
}

.inactive-header {
	background: #333;
}

.inactive-header:after {
	content: "\f067";
	font-family: 'FontAwesome';
	float: right;
	margin: 4px 5px;
	font-weight: 400
}

.accordion-content {
	display: none;
	padding: 20px;
	background: #fff;
	border: 1px solid #f5f5dc;
	border-top: 0;
	-moz-border-radius: 0 0 5px 5px;
	-webkit-border-radius: 0 0 5px 5px;
	border-radius: 0 0 5px 5px
}

.accordion-content a {
	text-decoration: none;
	color: #333;
}

.accordion-content td {
	border-bottom: 1px solid #dcdcdc;
}

@media ( max-width : 585px ) {
	.wizard {
		width: 90%;
		height: auto !important;
	}
	span.round-tab {
		font-size: 10px;
		width: 90px;
		height: 50px;
		line-height: 50px;
	}
	.wizard .nav-tabs>li a {
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

body {
	background:
		url("https://i1.wp.com/d.fastcompany.net/multisite_files/fastcompany/poster/2014/03/3028124-poster-p-dna.jpg")
		center center;
	background-repeat: no-repeat;
	background-attachment: fixed;
	background-position: center;
	background-size: cover;
}
</style>
<body>

	<%
		response.setHeader("Cache-Control", "no-cache"); //HTTP 1.1 
		response.setHeader("Pragma", "no-cache"); //HTTP 1.0 
		response.setDateHeader("Expires", 0); //prevents caching at the proxy server
	%>

	<div class="container">
		<div class="row">
			<section>
			

			<div class="wizard"
				style="margin-top: 2%; background-color: transparent">
				<div class="wizard-inner">
					<div class="panel panel-default"
						style="box-shadow: 8px 8px 3px gray;">
						<div class="panel-heading custom_class"
							style="height: 200px; background-color: white;">
							<h1 align="center"
								style="margin-left: 6%; color: black; text-shadow: 2px 2px 1px black;">
								<b>MICROBIAL CULTURE RECORD</b>
							</h1>
						<!-- 	<div id="image" style="float: right; margin-RIGHT: 6%;">
								<img src="companylogo.png" class="media-object"
									style="width: 170px; height: 120px" align="right" />
							</div> -->
							<div id="image"
								style="float: left; margin-right: 4%; margin-left: 4%; margin-bottom: 5%;">
								<a href="Microbial.jsp"><img src="Lablinkslogo.png" class="media-object"
									style="width: 230px; height: 100px" align="left" /></a>
							</div>
							<p align="center " style="margin-right: 8%; margin-bottom: 2%">(For
								setting up a microbial culture,refer to SOP.LL.Lab.10300)</p>
							<br>

						</div>
					</div>
					<a style="float: right;width: 150px ; margin-left:-15px;color: white;font-weight: bold" href="Torocell.jsp" type="button" >Torocell Cell Culture</a>
<a style="float: left;width: 150px;margin-left: -240px;color: white;font-weight: bold;" href="LablinksAnalytics.jsp" type="button">Analytics</a>
 
					<div class="connecting-line"></div>
					<div></div>
					<ul class="nav nav-tabs" role="tablist">

						<li role="presentation" class="active"><a href="#step1"
							data-toggle="tab" aria-controls="step1" role="tab"> <span
								class="round-tab">
									<h4 style="margin-top: 9%; align: center">Fill the Basic
										Details</h4>

							</span>
						</a></li>

						<li role="presentation" class=""><a href="#step2"
							data-toggle="tab" aria-controls="step2" role="tab"> <span
								class="round-tab">
									<h4 style="margin-top: 8%; align: center">Fill the pH&DO2
										Details</h4>

							</span>
						</a></li>
						<li role="presentation" class=""><a href="#step3"
							data-toggle="tab" aria-controls="step3" role="tab"> <span
								class="round-tab">
									<h4 style="margin-top: 7%; align: center">Fill the Sample
										Labelling Details</h4>
							</span>
						</a></li>

						<li role="presentation" class=""><a href="MicrobialViewRecords.jsp"> <span 	class="round-tab"
						>
									<h4 style="margin-top: 9%; align: center">Show Existing Records</h4>
							</span>
						</a></li>
						<!-- <li role="presentation" class=""><a href="MicrobialViewRecords.jsp"> <span 	class="round-tab"
						>
									<h4 style="margin-top: 9%; align: center">ToroCell Records</h4>
							</span>
						</a></li> -->
					</ul>
				</div>

				<form id="microbialForm" action="Microbial" class="form-horizontal"
					method="post">
					<div class="tab-content">
						<div class="tab-pane active" role="tabpanel" id="step1">
							<div class="step1">
								<div class="row">
								<center>
								
								<p style="color: #eae503;">${param.message}</p>
								</center>
									<div class="col-md-3 ">
									
										<div class="well well-sm"
											style="border: df1010; margin-left: 9%">
											<div id="MC" class="form-group">
												<label for="text" class="control-label col-xs-5">MC
													<span class="manatory">*</span> :</label>
												<div class="col-xs-5">
													<input type="text" class="form-control x" name="mc" id="mc" onblur="checkValidation()">
													<div id="MCerr" style="font-size: 9px;"></div>


												</div>

											</div>
										</div>

									</div>

									<div class="col-md-3 col-md-offset-6">

										<div class="well well-sm" style="margin-right: 8%">
											<div class="form-group">
												<label for="text" class="control-label col-xs-4">Date
													<span class="manatory">*</span>:</label>
												<div class="col-xs-8">
													<input type="text" class="form-control u" name="Date" data-date-format="mm/dd/yyyy"
														id="Date" onchange="checkValidation()">

												</div>
											</div>
										</div>

									</div>
								</div>
								<div class="well well-sm"
									style="border: df1010; width: 96%; margin-left: 2%">
									<div class="form-group">
										<label for="text" class="control-label col-xs-3"
											style="text-align: left; margin-left: 2%">1.Passage:
										</label>
										<div class="col-xs-2" style="margin-left: -1%">
											<input type="text" class="form-control" name="passage"
												id="passage">
										</div>
										<label for="text" class="control-label col-xs-2"
											style="margin-right: 4%; margin-left: 1%">Barcode : </label>
										<div class="col-xs-3" style="margin-left: 5%">
											<textarea class="form-control" name="Barcode" rows="1"
												id="Barcode"></textarea>
										</div>
									</div>
								</div>
								<div class="well well-sm"
									style="border: df1010; width: 96%; margin-left: 2%">
									<div class="form-group">

										<label for="text" class="control-label col-xs-3"
											style="text-align: left; margin-left: 2%">2.Name Of
											the Organism <span class="manatory">*</span>: </label>
										<div class="col-xs-3" style="margin-left: -1%">
											<input type="text" class="form-control"
												name="Name_Of_the_Organism" id="Name_Of_the_Organism" onblur="checkValidation()">
										</div>
										<label for="text" class="control-label col-xs-2"
											style="margin-right: 6%; margin-left: -7%">3.Source :
										</label>
										<div class="col-xs-3" style="margin-left: 3%">
											<input type="text" class="form-control" name="Source"
												id="Source">
										</div>
									</div>
								</div>
								<div class="well well-sm"
									style="border: df1010; width: 96%; margin-left: 2%">
									<div class="form-group">
										<label for="text" class="control-label col-xs-3"
											style="text-align: left; margin-left: 2%">4. Seed
											used & Qty. Medium : </label>
										<div class="col-xs-3" style="margin-left: -1%">
											<input type="text" class="form-control"
												name="Seed_used_qty_medium" id="Seed_used_qty_medium">
										</div>
										<label for="text" class="control-label col-xs-2"
											style="margin-left: -1%">5. MC card of seed :</label>
										<div class="col-xs-3" style="margin-left: 3%">
											<input type="text" class="form-control"
												name="Mc_card_of_seed" id="Mc_card_of_seed">
										</div>
									</div>
								</div>
								<div class="well well-sm"
									style="border: df1010; width: 96%; margin-left: 2%">
									<div class="form-group" style="margin-left: -3%">
										<label for="text" class="control-label col-xs-3"
											style="text-align: left; margin-left: 4%">6. Time of
											Setting up :</label>
										<div class="col-xs-3" style="margin-left: -2%">
											<input type="text" class="form-control"
												name="Time_of_setting_up" id="timeofsettingup">
										</div>
										<label for="text" class="control-label col-xs-2">7.
											Temp. Incubation(\B0C):</label>
										<div class="col-xs-3" style="margin-left: 1%">
											<input type="text" class="form-control"
												name="Temp_incubation" id="tempincubation">
										</div>
									</div>
								</div>
								<div class="well well-sm"
									style="border: df1010; width: 96%; margin-left: 2%">
									<div class="form-group">
										<label for="text" class="control-label col-xs-2"
											style="text-align: left; margin-left: 2%">8. Medium :</label>
										<div class="col-xs-3" style="margin-left: 7%">
											<input type="text" class="form-control" name="Medium"
												id="medium">
										</div>
										<label for="text" class="control-label col-xs-1"
											style="margin-left: 9%">R :</label>
										<div class="col-xs-3" style="margin-left: 1%">
											<input type="text" class="form-control" name="medium_R"
												id="r1">
										</div>
									</div>
									<div class="form-group">
										<label for="text" class="control-label col-xs-2"
											style="text-align: left; margin-left: 2%">9. Other
											Additives :</label>
										<div class="col-xs-3" style="margin-left: 7%">
											<input type="text" class="form-control"
												name="other_additives" id="Additives">
										</div>
										<label for="text" class="control-label col-xs-1"
											style="margin-left: 9%">R :</label>
										<div class="col-xs-3" style="margin-left: 1%">
											<input type="text" class="form-control"
												name="other_additives_R" id="r2">
										</div>
									</div>
									<div class="form-group">
										<label for="text" class="control-label col-xs-2"
											style="text-align: left; margin-left: 2%">10. Alkali
											:</label>
										<div class="col-xs-3" style="margin-left: 7%">
											<input type="text" class="form-control" name="Alkali"
												id="alkali">
										</div>
										<label for="text" class="control-label col-xs-1"
											style="margin-left: 9%">R :</label>
										<div class="col-xs-3" style="margin-left: 1%">
											<input type="text" class="form-control" name="Alkali_R"
												id="r3">
										</div>
									</div>
									<div class="form-group">
										<label for="text" class="control-label col-xs-2"
											style="text-align: left; margin-left: 2%">11. Acid :</label>
										<div class="col-xs-3" style="margin-left: 7%">
											<input type="text" class="form-control" name="Acid" id="acid">
										</div>
										<label for="text" class="control-label col-xs-1"
											style="margin-left: 9%">R :</label>
										<div class="col-xs-3" style="margin-left: 1%">
											<input type="text" class="form-control" name="Acid_R"
												id="Acid_R">
										</div>
									</div>
								</div>
								<div class="well well-sm" style="width: 96%; margin-left: 2%">
									<table width="1100" height="100">
										<tr>
											<td><b>If Glass Container</b>
												<div class="form-group">
													<label for="text" class="control-label col-xs-5"
														style="text-align: left; margin-left: 3%">12. Type
														of Container :</label>
													<div class="col-xs-6" style="margin-left: 5%">
														<input type="text" class="form-control"
															name="Type_of_container" id="inputtext">
													</div>
												</div>
												<div class="form-group">
													<label for="text" class="control-label col-xs-5"
														style="text-align: left; margin-left: 3%">13.
														No.of.Container :</label>
													<div class="col-xs-6" style="margin-left: 5%">
														<input type="text" class="form-control"
															name="No_Of_container" id="inputtext">
													</div>
												</div>
												<div class="form-group">
													<label for="text" class="control-label col-xs-5"
														style="text-align: left; margin-left: 3%">14.
														Agitation Type & speed :</label>
													<div class="col-xs-6" style="margin-left: 5%">
														<input type="text" class="form-control"
															name="Agitation_type_speed" id="inputtext">
													</div>
												</div></td>
											<td><b>If Bioreactor</b>
												<div class="form-group">
													<label for="text" class="control-label col-xs-5"
														style="text-align: left; margin-left: 5%">15.
														Bioreactor type & size :</label>
													<div class="col-xs-6" style="margin-left: -6%">
														<input type="text" class="form-control"
															name="Bioractor_type_size" id="inputtext">
													</div>
												</div>
												<div class="form-group">
													<label for="text" class="control-label col-xs-5"
														style="text-align: left; margin-left: 5%">16. Type
														Agitation/Tilt angle :</label>
													<div class="col-xs-6" style="margin-left: -6%">
														<input type="text" class="form-control"
															name="Type_Agitation" id="inputtext">
													</div>
												</div>
												<div class="form-group">
													<label for="text" class="control-label col-xs-5"
														style="text-align: left; margin-left: 5%">17.
														Agitation speed :</label>
													<div class="col-xs-6" style="margin-left: -6%">
														<input type="text" class="form-control"
															name="Agitation_speed" id="inputtext">
													</div>
												</div></td>
										</tr>
									</table>
									(<span class="manatory">*</span>) Fields are mandatory
								</div>

							</div>
							<ul class="list-inline pull-right">
								<li><button type="button" class="btn btn-primary next-step"
										style="margin-right: 520px; width: 120px; border: 2px solid #fff">Next</button></li>
							</ul>
						</div>
						<div class="tab-pane" role="tabpanel" id="step2">
							<div class="step2">


								<div class="well well-sm" style="width: 96%; margin-left: 2%">
									<label for="text" class="control-label" style="margin-left: 2%"><b>
											18. pH CONTROL :</b></label><br> <br>
									<div class="input_fields_wrap">

										<div></div>

										<div class="form-group" style="margin-left: 50px">

											<div class="col-sm-2 nopadding">

												<input type="text" class="form-control" id="attime"
													name="ph_attTime" value="" placeholder="At Time">

											</div>
											<div class="col-sm-2 nopadding">
												<input type="text" class="ph_controlVal form-control" id="ph_controlVal" name="ph"
													value="" placeholder="pH" onkeyup="phValKeyUp()">
											</div>
											<div class="col-sm-6 nopadding">
												<input type="text" class="form-control" id="alkali"
													name="ph_alkali" value=""
													placeholder="Alkali/Acid Addition">
											</div>
											<input type="hidden" name="ph_count" value="0" /><a href="#"
												class="remove_field btn btn-danger">Remove</a>
										</div>
									</div>
									<button class="add_field_button btn btn-primary"
										style="margin-left: 6%">Add More Fields</button>
									<br> <br>


									<div class="well well-sm" style="width: 90%; margin-left: 4%">
										<div class="form-group">
											<label for="text" class="control-label col-xs-6">If
												continuous monitoring, the set pH value is :</label>
											<div class="col-xs-1">
												<input type="text" class="form-control" name="pH_Control"
													id="phVal">
											</div>
										</div>
									</div>

								</div>


								<div class="well well-sm" style="width: 96%; margin-left: 2%">
									<label for="text" class="control-label" style="margin-left: 2%"><b>
											19. DO2 CONTROL :</b></label><br> <br>
									<div class="input_do2fields_wrap">
										<div></div>
										<div class="form-group" style="margin-left: 50px">

											<div class="col-sm-2 nopadding">

												<input type="text" class="form-control" name="do2_AtTime"
													value="" placeholder="At Time">

											</div>
											<div class="col-sm-2 nopadding">
												<input type="text" class="form-control" name="o2" value=""
													placeholder="O2">
											</div>
											<div class="col-sm-6 nopadding">
												<input type="text" class="form-control"
													name="gasOrAirAddition" value=""
													placeholder="Gas/Air Addition">
											</div>
											<input type="hidden" name="do2_count" value="0" /><a
												href="#" class="remove_do2field btn btn-danger">Remove</a>
										</div>
									</div>
									<button class="add_do2field_button btn btn-primary"
										style="margin-left: 6%">Add More Fields</button>
									<br> <br>



									<div class="well well-sm" style="width: 90%; margin-left: 4%">
										<div class="form-group">
											<label for="text" class="control-label col-xs-6">If
												continuous monitoring, the set DO2 value is :</label>
											<div class="col-xs-1">
												<input type="text" class="form-control" name="do2_value"
													id="do2_value">
											</div>
										</div>
									</div>
								</div>


								<div class="well well-sm" style="width: 96%; margin-left: 2%">
									<label for="text" class="control-label" style="margin-left: 2%"><b>
											20. Remarks of Aeration:</b></label><br> <br>


									<div class="input_aerationfields_wrap">
										<div class="form-group" style="margin-left: 50px">

											<div class="col-sm-2 nopadding">

												<input type="text" class="form-control u" id="date"
													name="aeration_Date" value="" placeholder="Date">

											</div>
											<div class="col-sm-2 nopadding">
												<input type="text" class="form-control" name="aeration_Time"
													value="" placeholder="Time">
											</div>
											<div class="col-sm-6 nopadding">
												<input type="text" class="form-control"
													name="aeration_Details" value=""
													placeholder="21.DETAILS OF ADDITIONS">
											</div>
											<input type="hidden" name="do2_count" value="0" /><a
												href="#" class="remove_aerationfield btn btn-danger">Remove</a>
										</div>
									</div>
									<button class="add_aerationfield_button btn btn-primary"
										style="margin-left: 6%">Add More Fields</button>
									<br> <br>


									<div class="well well-sm" style="width: 90%; margin-left: 4%">
										<div class="form-group" style="margin-left: 30%">
											<label for="text" class="control-label col-xs-3">21.Done
												By Name : </label>
											<div class="col-xs-3">
												<input type="text" class="form-control" name="Done_by_name"
													id="inputstext">
											</div>
										</div>
									</div>
								</div>
							</div>
							<ul class="list-inline pull-right">
								<li><button type="button" class="btn btn-default prev-step"
										style="width: 120px; border: 2px solid #fff">Previous</button></li>
								<li><button type="button" class="btn btn-primary next-step"
										style="margin-right: 400px; width: 120px; border: 2px solid #fff">Next</button></li>
							</ul>

						</div>
						<div class="tab-pane" role="tabpanel" id="step3">
							<div class="step33">

								<div class="well well-sm" style="width: 96%; margin-left: 2%">
									<label for="text" class="control-label" style="margin-left: 2%"><b>
											22.SAMPLE LABELLING :</b></label><br> <br>


									<div class="input_samplefields_wrap">
										<div class="form-group" style="margin-left: 50px">

											<div class="col-sm-2 nopadding">

												<input type="text" class="form-control u"
													name="sampleLabelling_Date" value="" placeholder="Date">

											</div>
											<div class="col-sm-1 nopadding">
												<input type="text" class="form-control"
													name="sampleLabelling_Time" value="" placeholder="Time">
											</div>
											<div class="col-sm-5 nopadding">
												<input type="text" class="form-control"
													name="sampleLabelling_Details" value=""
													placeholder="Details of Sample">
											</div>
											<div class="col-sm-2 nopadding">
												<input type="text" class="sampleLabellingQty form-control"
													name="sampleLabelling_Qty" value="" placeholder="Qty(ml)" >
											</div>
											<input type="hidden" name="do2_count" value="0" /><a
												href="#" class="remove_samplefield btn btn-danger">Remove</a>
										</div>
									</div>
									<button class="add_samplefield_button btn btn-primary"
										style="margin-left: 6%">Add More Fields</button>
									<br> <br>



								</div>


								<div class="well well-sm" style="width: 96%; margin-left: 2%">
									<label for="text" class="control-label" style="margin-left: 2%"><b>
											23.QC CONTROL TESTS :</b></label><br> <br>

									<div class="input_qcControllfields_wrap">
										<div class="form-group" style="margin-left: 50px">

											<div class="col-sm-2 nopadding">

												<input type="text" class="form-control" name="QcSample_No"
													value="" placeholder="Sample No(MC & 21 label)">

											</div>
											<div class="col-sm-4 nopadding">
												<input type="text" class="form-control" name="nameOFTest"
													value="" placeholder="Name of the Test">
											</div>
											<div class="col-sm-1 nopadding">
												<input type="text" class="form-control" name="qcRefNo"
													value="" placeholder="Test Ref.no.">
											</div>
											<div class="col-sm-3 nopadding">
												<input type="text" class="form-control" name="Qc_result"
													value="" placeholder="Result">
											</div>
											<input type="hidden" name="qc_count" value="0" /><a href="#"
												class="remove_qcfield btn btn-danger">Remove</a>
										</div>
									</div>
									<button class="add_qcControllfield_button btn btn-primary"
										style="margin-left: 6%">Add More Fields</button>
									<br> <br>
								</div>


								<div class="well well-sm"
									style="border: df1010; width: 96%; margin-left: 2%">
									<label for="text" class="control-label" style="margin-left: 2%"><b>
											24. GENERAL REMARKS OF CULTURE :</b></label><br> <br>
									<div class="col-xs-15">
										<input type="text" class="form-control"
											name="general_remarks_of_culture" id="inputtext"
											placeholder="General Remarks of Culture">
									</div>
								</div>

								<div class="well well-sm"
									style="border: df1010; width: 96%; margin-left: 2%">
									<label for="text" class="control-label" style="margin-left: 2%"><b>
											25. DETAILS OF HARVESTING :</b></label><br> <br>
									<div class="col-xs-15">
										<textarea class="form-control" name="Details_of_harvesting"
											rows="3" id="comment" placeholder="Details of Harvesting"></textarea>
									</div>

								</div>

								<div class="well well-sm"
									style="border: df1010; width: 96%; margin-left: 2%">
									<label for="text" class="control-label" style="margin-left: 2%"><b>26.
											REFERENCE OF DOWN STREAM PROCESSING :</b></label><br> <br>
									<div class="col-xs-15">
										<input type="text" class="form-control"
											name="reference_of_down_stream_processing" id="inputtext"
											placeholder="Reference of Down Stream Processing">
									</div>
								</div>


								<div class="well well-sm" style="width: 96%; margin-left: 2%">
									<div class="form-group" style="margin-right: 6%">

										<label for="text" class="control-label col-xs-3">Done
											By Name 1: </label>
										<div class="col-xs-3">
											<input type="text" class="form-control" name="donebyname1"
												id="donebyname1">
										</div>
										<label for="text" class="control-label col-xs-3">Done
											By Name 2: </label>
										<div class="col-xs-3">
											<input type="text" class="form-control" name="donebyname2"
												id="donebyname2">
										</div>

									</div>
								</div>

								<div class="well well-sm"
									style="border: df1010; width: 96%; margin-left: 2%">
									<div class="form-group" style="margin-left: 20%">
										<label for="text" class="control-label"
											style="margin-left: -20%"><b>CONTROL & APPROVAL :</b></label><br>
										<br> <label for="text" class="control-label col-xs-2 ">Prepared
											by: </label>
										<div class="col-xs-3">
											<input type="text" class="form-control" name="Prepared_by"
												id="Prepared_by">
										</div>

										<label for="text" class="control-label col-xs-2"
											style="margin-left: -4%">Date: </label>
										<div class="col-xs-2">
											<input type="text" class="form-control u"
												name="prepared_by_date" id="Date1">

										</div>
										<br> <br> <label for="text"
											class="control-label col-xs-2">Dept. Head :</label>
										<div class="col-xs-3">
											<input type="text" class="form-control" name="Dept_Head"
												id="Dept_Head">
										</div>

										<label for="text" class="control-label col-xs-2"
											style="margin-left: -4%">Date:</label>
										<div class="col-xs-2">
											<input type="text" class="form-control u"
												name="dept_Head_date" id="inputsource">

										</div>
										<br> <br> <label for="text"
											class="control-label col-xs-2">QAD: </label>
										<div class="col-xs-3">
											<input type="text" class="form-control" name="QAD"
												id="inputsource">
										</div>

										<label for="text" class="control-label col-xs-2"
											style="margin-left: -4%">Date:</label>
										<div class="col-xs-2">
											<input type="text" class="form-control u" name="qad_date"
												id="Date">

										</div>
										<br>
									</div>
								</div>
							</div>
							<ul class="list-inline pull-right">
								<li><button type="button" class="btn btn-default prev-step"
										style="width: 120px; border: 2px solid #fff">Previous</button></li>
								<button type="submit" class="btn btn-primary" id="save"
									style="margin-right: 400px; width: 180px; border: 2px solid #fff">Save
									the Details</button>
							</ul>

						</div>
				</form>


				<div class="tab-pane" role="tabpanel" id="step4">
					<div class="step4">
					<form action="Retrieve.jsp" method="get">
						<div class="row">
						
							<div class="col-md-3 ">

								<div class="well well-sm" style="margin-left: 9%">

									<div class="form-group">


										<label for="text" class="control-label col-xs-5">MC :</label>
										
											<div class="col-xs-5">
												<input type="text" class="form-control" name="previoumc"
													id="Smc">
											</div>
									</div>
								</div>

							</div>

							<div class="col-md-3 col-md-offset-6">

								<div class="well well-sm" style="margin-right: 8%">
									<div class="form-group">
										<label for="text" class="control-label col-xs-4">Date
											:</label>
										<div class="col-xs-8">
											<input type="text" class="form-control u" name="PreviousDate"
												id="SDate">

										</div>
									</div>
								</div>

							</div>
						</div>
						<div class="col-md-5  col-md-offset-4">
							<div class="well well-sm"
								style="margin-right: -4%; margin-left: -25%; margin-top: -20%;">
								<div class="form-group" style="float: center">

									<label for="text" class="control-label col-xs-5"
										style="margin-left: -2%">Name of the organism :</label>
									<div class="col-xs-6">
										<input type="text" class="form-control"
											name="previousname_of_the_organism"
											id="Sname_of_the_organism">
									</div>
								</div>
							</div>
						</div>
						<!-- <input type="submit" value="Sub"> -->
						<button type="submit" class="btn btn-primary btn-lg round "
							id="Ssave"
							style="margin-left: -30%; float: center; width: 170px; border: 2px solid #fff">View
							The Details</button>
						</form>
						
					</div>




				</div>

			</div>

			</section>
		</div>
		<script type="text/javascript">
			$(document).ready(function() {
				$("body").tooltip({
					selector : '[data-toggle=tooltip]'
				});
				$("#save").click(function(e) {
					/* console.log(5); */
					/* window.location.href = "Alt.jsp"; */

				});

			});
		</script>


	</div>
	<!-- 
<script>

$( document ).ready(function() {
	
   /* Do2 Controller Add and Remove */
    
    var do2wrapper         = $(".input_do2fields_wrap"); //Fields wrapper
    var do2add_button      = $(".add_do2field_button"); //Add button ID
    
    var do2 = 1; //initlal text box count
    $(do2add_button).click(function(e){ //on add input button click
        e.preventDefault();
        
            
            $(do2wrapper).append('<div class="form-group" style="margin-left:50px"><div class="col-sm-2 nopadding"><input type="text" class="form-control"  name="do2_attTime" value="" placeholder="At Time"></div><div class="col-sm-2 nopadding">  <input type="text" class="form-control"  name="o2" value="" placeholder="O2">  </div><div class="col-sm-6 nopadding">  <input type="text" class="form-control"  name="gasOrAirAddition" value="" placeholder="Gas/Air Addition">  </div><input type="hidden" name="do2_count"  value=""/><a href="#" class="remove_do2field btn btn-danger">Remove</a>  </div>'); //add input box
            do2++; //text box increment
    });
    $(do2wrapper).on("click",".remove_do2field", function(e){ //user click on remove text
        e.preventDefault(); $(this).parent('div').remove(); do2--;
    })
   
   /* pH Controller Add and Remove */
    
    var wrapper         = $(".input_fields_wrap"); //Fields wrapper
    var add_button      = $(".add_field_button"); //Add button ID
    
    var x = 1; //initlal text box count
    $(add_button).click(function(e){ //on add input button click
        e.preventDefault();
        
            alert(9);
            $(wrapper).append('<div class="form-group" style="margin-left:50px"><div class="col-sm-2 nopadding"><input type="text" class="form-control" id="attime" name="attTime" value="" placeholder="At Time"></div><div class="col-sm-2 nopadding">  <input type="text" class="form-control"  name="ph" value="" placeholder="pH">  </div><div class="col-sm-6 nopadding">  <input type="text" class="form-control" name="ph_alkali" value="" placeholder="Alkali/Acid Addition">  </div><input type="hidden" name="ph_count" value="'+x+'"/><a href="#" class="remove_field btn btn-danger">Remove</a>  </div>'); //add input box
            x++; //text box increment
    });
    $(wrapper).on("click",".remove_field", function(e){ //user click on remove text
        e.preventDefault(); $(this).parent('div').remove(); x--;
    })
    
   
    	  /* Areation  Controller Add and Remove */
      
        var aerationwrapper         = $(".input_aerationfields_wrap"); //Fields wrapper
        var aerationadd_button      = $(".add_aerationfield_button"); //Add button ID
        
        var aeration = 1; //initlal text box count
        $(aerationadd_button).click(function(e){ //on add input button click
            e.preventDefault();
            
                
                
                $(aerationwrapper).append('<div class="form-group" style="margin-left:50px"><div class="col-sm-2 nopadding"><input type="text" class="form-control" id="attime" name="Date_Aeration" value="" placeholder="Date"></div><div class="col-sm-2 nopadding">  <input type="text" class="form-control"  name="Time_Aeration" value="" placeholder="Time">  </div><div class="col-sm-6 nopadding">  <input type="text" class="form-control" name="Details_of_Additions" value="" placeholder="21.DETAILS OF ADDITIONS">  </div><input type="hidden" name="aeration_count" value="''"/><a href="#" class="remove_aerationfield btn btn-danger">Remove</a>  </div>'); //add input box
                
                aeration++; //text box increment
        });
        $(aerationwrapper).on("click",".remove_aerationfield", function(e){ //user click on remove text
            e.preventDefault(); $(this).parent('div').remove(); aeration--;
        })
        
      ///* Sample Labeling  Controller Add and Remove */ 
        
        var samplewrapper         = $(".input_samplefields_wrap"); //Fields wrapper
        var sampleadd_button      = $(".add_samplefield_button"); //Add button ID
           b
        var sampleLabelling = 1; //initlal text box count
        $(sampleadd_button).click(function(e){ //on add input button click
            e.preventDefault();
            
            
                $(samplewrapper).append('<div class="form-group" style="margin-left:50px"><div class="col-sm-2 nopadding"><input type="text" class="form-control" id="f" name="Date_sample" value="" placeholder="Date"></div><div class="col-sm-1 nopadding">  <input type="text" class="form-control"  name="Time_sample" value="" placeholder="Time">  </div><div class="col-sm-5 nopadding">  <input type="text" class="form-control" name="details_of_sample" value="" placeholder="Details of Sample">  </div><div class="col-sm-2 nopadding">  <input type="text" class="form-control" name="Qty" value="" placeholder="Qty.">  </div><input type="hidden" name="sample_count" value=""/><a href="#" class="remove_samplefield btn btn-danger">Remove</a>  </div>'); //add input box
                sampleLabelling++; //text box increment
        });
        $(samplewrapper).on("click",".remove_samplefield", function(e){ //user click on remove text
            e.preventDefault(); $(this).parent('div').remove(); sampleLabelling--;
        })
        
   /* Qc Controll Start Here */
        
        var qcControllwrapper         = $(".input_qcControllfields_wrap"); //Fields wrapper
        var qcControlladd_button      = $(".add_qcControllfield_button"); //Add button ID
        
        var qcLabelling = 1; //initlal text box count
        $(qcControlladd_button).click(function(e){ //on add input button click
            e.preventDefault();
                $(qcControllwrapper).append('<div class="form-group" style="margin-left:50px"><div class="col-sm-2 nopadding"><input type="text" class="form-control"  name="sample_mc_label" value="" placeholder="Sample No.(MC & 21 Label)"></div><div class="col-sm-4 nopadding">  <input type="text" class="form-control"  name="Name_of_test" value="" placeholder="Name of the Test">  </div><div class="col-sm-1 nopadding">  <input type="text" class="form-control" name="Test_rest_no" value="" placeholder="Test Ref.No.">  </div><div class="col-sm-3 nopadding">  <input type="text" class="form-control" name="Result" value="" placeholder="Result">  </div> <input type="hidden" name="qc_count" value=""/><a href="#" class="remove_qcfield btn btn-danger">Remove</a>  </div>'); //add input box
                qcLabelling++; //text box increment
        });
        $(qcControllwrapper).on("click",".remove_qcfield", function(e){ //user click on remove text
            e.preventDefault(); $(this).parent('div').remove(); qcLabelling--;
        })
        
        //prepared_by_date//
        
var date_input=$('input[name="prepared_by_date"]'); //our date input has the name "date"
    //var date_input1=$('input[name="date_of_visit"]');
    
    var container=$('.bootstrap-iso form').length>0 ? $('.bootstrap-iso form').parent() : "body";
    date_input.datepicker({
        format: 'mm/dd/yyyy',
        container:container,
        todayHighlight: true,
        autoclose: true,
    })
    
     //dept_Head_date//
     var date_input=$('input[name="dept_Head_date"]'); //our date input has the name "date"
    //var date_input1=$('input[name="date_of_visit"]');
    
    var container=$('.bootstrap-iso form').length>0 ? $('.bootstrap-iso form').parent() : "body";
    date_input.datepicker({
        format: 'mm/dd/yyyy',
       // container:container,
        todayHighlight: true,
        autoclose: true,
    })
    
     //qad_date//
     
    var date_input=$('input[name="qad_date"]'); //our date input has the name "date"
    //var date_input1=$('input[name="date_of_visit"]');
    
    var container=$('.bootstrap-iso form').length>0 ? $('.bootstrap-iso form').parent() : "body";
    date_input.datepicker({
        format: 'mm/dd/yyyy',
        container:container,
        todayHighlight: true,
        autoclose: true,
    })

});

/////

////
$(document).ready(function(){
    var date_input=$('input[name="Date"]'); //our date input has the name "date"
    //var date_input1=$('input[name="date_of_visit"]');
    
    var container=$('.bootstrap-iso form').length>0 ? $('.bootstrap-iso form').parent() : "body";
    date_input.datepicker({
        format: 'mm/dd/yyyy',
        container:container,
        todayHighlight: true,
        autoclose: true,
    })
})

//


//
$(document).ready(function(){
    var date_input=$('input[name="date2"]'); //our date input has the name "date"
    //var date_input1=$('input[name="date_of_visit"]');
    
    var container=$('.bootstrap-iso form').length>0 ? $('.bootstrap-iso form').parent() : "body";
    date_input.datepicker({
        format: 'mm/dd/yyyy',
        container:container,
        todayHighlight: true,
        autoclose: true,
    })
})

//
$(document).ready(function(){
    var date_input=$('input[name="date3"]'); //our date input has the name "date"
    //var date_input1=$('input[name="date_of_visit"]');
    
    var container=$('.bootstrap-iso form').length>0 ? $('.bootstrap-iso form').parent() : "body";
    date_input.datepicker({
        format: 'mm/dd/yyyy',
        container:container,
        todayHighlight: true,
        autoclose: true,
    })
})

//
$(document).ready(function(){
    var date_input=$('input[name="Date3"]'); //our date input has the name "date"
    //var date_input1=$('input[name="date_of_visit"]');
    
    var container=$('.bootstrap-iso form').length>0 ? $('.bootstrap-iso form').parent() : "body";
    date_input.datepicker({
        format: 'mm/dd/yyyy',
        container:container,
        todayHighlight: true,
        autoclose: true,
    })
})

//
$(document).ready(function(){
    var date_input=$('input[name="Date4"]'); //our date input has the name "date"
    //var date_input1=$('input[name="date_of_visit"]');
    
    var container=$('.bootstrap-iso form').length>0 ? $('.bootstrap-iso form').parent() : "body";
    date_input.datepicker({
        format: 'mm/dd/yyyy',
        container:container,
        todayHighlight: true,
        autoclose: true,
    })
})

//
$(document).ready(function(){
    var date_input=$('input[name="Date5"]'); //our date input has the name "date"
    //var date_input1=$('input[name="date_of_visit"]');
    
    var container=$('.bootstrap-iso form').length>0 ? $('.bootstrap-iso form').parent() : "body";
    date_input.datepicker({
        format: 'mm/dd/yyyy',
        container:container,
        todayHighlight: true,
        autoclose: true,
    })
})
//
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


//according menu

$(document).ready(function()
{
//Add Inactive Class To All Accordion Headers
$('.accordion-header').toggleClass('inactive-header');

//Set The Accordion Content Width
var contentwidth = $('.accordion-header').width();
$('.accordion-content').css({});

//Open The First Accordion Section When Page Loads
$('.accordion-header').first().toggleClass('active-header').toggleClass('inactive-header');
$('.accordion-content').first().slideDown().toggleClass('open-content');

// The Accordion Effect
$('.accordion-header').click(function () {
if($(this).is('.inactive-header')) {
$('.active-header').toggleClass('active-header').toggleClass('inactive-header').next().slideToggle().toggleClass('open-content');
$(this).toggleClass('active-header').toggleClass('inactive-header');
$(this).next().slideToggle().toggleClass('open-content');
}

else {
$(this).toggleClass('active-header').toggleClass('inactive-header');
$(this).next().slideToggle().toggleClass('open-content');
}
});

return false;
});
</script>  -->

	<script type="text/javascript">
		/////
		
		function checkValidation()
		{
												var org = $("#Name_Of_the_Organism").val();
												var mc = $("#mc").val();
												var dat = $("#Date").val();
												if ((mc !== "") && (org !== "")
														&& (dat !== "")) {
													$.ajax({

																url : 'Culture',

																data : {

																	mc : mc,
																	org : org,
																	dat : dat

																},
																success : function(
																		responseText) {
																	
																	if (responseText === "1") {
																		var x = document
																				.getElementById("snackbar")
																		x.className = "show";

																		$(
																				"#Name_Of_the_Organism")
																				.val(
																						"");

																		$("#mc")
																				.val(
																						"");
																		setTimeout(
																				function() {
																					x.className = x.className
																							.replace(
																									"show",
																									"");
																				},
																				3000);

																	}

																	if (responseText === "11") {

																		var x = document
																				.getElementById("snackbar1")

																		x.className = "show";
																		setTimeout(
																				function() {
																					x.className = x.className
																							.replace(
																									"show",
																									"");
																				},
																				3000);

																	}

																}
															});

												}
			
		}
		$(document)
				.ready(
						function() {

							$("#Name_Of_the_Organism")
									.blur(
											function() {

												/* alert()
												var org = $(this).val();
												var mc = $("#mc").val();
												var dat = $("#Date").val();
												if ((mc !== "") && (org !== "")
														&& (dat !== "")) {
													$.ajax({

																url : 'Culture',

																data : {

																	mc : mc,
																	org : org,
																	dat : dat

																},
																success : function(
																		responseText) {
																	alert(responseText);
																	if (responseText === "1") {
																		var x = document
																				.getElementById("snackbar")
																		x.className = "show";

																		$(
																				"#Name_Of_the_Organism")
																				.val(
																						"");

																		$("#mc")
																				.val(
																						"");
																		setTimeout(
																				function() {
																					x.className = x.className
																							.replace(
																									"show",
																									"");
																				},
																				3000);

																	}

																	if (responseText === "11") {

																		var x = document
																				.getElementById("snackbar1")

																		x.className = "show";
																		setTimeout(
																				function() {
																					x.className = x.className
																							.replace(
																									"show",
																									"");
																				},
																				3000);

																	}

																}
															});

												} */

											});

							////////////////////////////////
							/*$("#Date").blur(function(){
								 
								 var mc= $(this).val();
								 
								 
								 if(mc !== ""){
									 
									   $.ajax({
												 
												 url : 'Culture',
												  
													data : {
														 
														mc:mc
													},
													success : function(responseText) {
														 
														if(responseText==="mc0"){
															 
															 $("#MC").addClass("has-error");
															 $("#MCerr").text('');
															 $("#MCerr").text("MC NOT FOUND");
															 
														} else if(responseText==="mc1"){
															
															$("#MCerr").text('');
															$("#MC").removeClass("has-error");
														}
														
															}
												});
											   
									 
									 
								 }
							 
							}); 
							////////////////////////////////
							$("#mc").blur(function(){
								 
								 var mc= $(this).val();
								 
								 
								 if(mc !== ""){
									 
									   $.ajax({
												 
												 url : 'Culture',
												  
													data : {
														 
														mc:mc
													},
													success : function(responseText) {
														 
														if(responseText==="0"){
							                                       
															$
															

															var x = document.getElementById("snackbar")
															    x.className = "show";
															    setTimeout(function(){ x.className = x.className.replace("show", ""); }, 3000);
															 
														/* 	 $("#MC").addClass("has-error");
															 $("#MCerr").text('');
															 $("#MCerr").text("MC NOT FOUND"); */

							/* 			} else if(responseText==="mc1"){
											
											$("#MCerr").text('');
											$("#MC").removeClass("has-error");
										}
										
											}
								});
							   
							
							
							}
							
							});  */

							// Date
							$(document).on('focus', '.u', function() {

								// var container=$('.bootstrap-iso form').length>0 ? $('.bootstrap-iso form').parent() : "body";

								$(this).datepicker({
									format: 'mm/dd/yyyy',
									
									
									
									 
								        
								});
							});

							/* Do2 Controller Add and Remove */

							var do2wrapper = $(".input_do2fields_wrap"); //Fields wrapper
							var do2add_button = $(".add_do2field_button"); //Add button ID

							var do2 = 1; //initlal text box count
							$(do2add_button)
									.click(
											function(e) { //on add input button click
												e.preventDefault();

												$(do2wrapper)
														.append(
																'<div class="form-group" style="margin-left:50px"><div class="col-sm-2 nopadding"><input type="text" class="form-control"  name="do2_AtTime" value="" placeholder="At Time"></div><div class="col-sm-2 nopadding">  <input type="text" class="form-control"  name="o2" value="" placeholder="O2">  </div><div class="col-sm-6 nopadding">  <input type="text" class="form-control"  name="gasOrAirAddition" value="" placeholder="Gas/Air Addition">  </div><input type="hidden" name="do2_count" value="'+do2+'"/><a href="#" class="remove_do2field btn btn-danger">Remove</a>  </div>'); //add input box
												do2++; //text box increment
											});
							$(do2wrapper).on("click", ".remove_do2field",
									function(e) { //user click on remove text
										e.preventDefault();
										$(this).parent('div').remove();
										do2--;
									})

							/* pH Controller Add and Remove */

							var wrapper = $(".input_fields_wrap"); //Fields wrapper
							var add_button = $(".add_field_button"); //Add button ID

							var x = 1; //initlal text box count
							$(add_button)
									.click(
											function(e) { //on add input button click
												e.preventDefault();

												$(wrapper)
														.append(
																'<div class="form-group" style="margin-left:50px"><div class="col-sm-2 nopadding"><input type="text" class="form-control" id="attime" name="ph_attTime" value="" placeholder="At Time"></div><div class="col-sm-2 nopadding">  <input type="text" class="ph_controlVal form-control" id=ph_controlVal name="ph" value="" placeholder="pH" onkeyup=phValKeyUp()>  </div><div class="col-sm-6 nopadding">  <input type="text" class="form-control" name="ph_alkali" value="" placeholder="Alkali/Acid Addition">  </div><input type="hidden" name="ph_count" value="'+x+'"/><a href="#" class="remove_field btn btn-danger">Remove</a>  </div>'); //add input box
												x++; //text box increment
											});
							$(wrapper).on("click", ".remove_field",
									function(e) { //user click on remove text
										e.preventDefault();
										$(this).parent('div').remove();
										x--;
									})

							/* Areation  Controller Add and Remove */

							var aerationwrapper = $(".input_aerationfields_wrap"); //Fields wrapper
							var aerationadd_button = $(".add_aerationfield_button"); //Add button ID

							var aeration = 1; //initlal text box count
							$(aerationadd_button)
									.click(
											function(e) { //on add input button click
												e.preventDefault();

												$(aerationwrapper)
														.append(
																'<div class="form-group" style="margin-left:50px"><div class="col-sm-2 nopadding"><input type="text" class="form-control u" id="attime" name="aeration_Date" value="" placeholder="Date"></div><div class="col-sm-2 nopadding">  <input type="text" class="form-control"  name="aeration_Time" value="" placeholder="Time">  </div><div class="col-sm-6 nopadding">  <input type="text" class="form-control" name="aeration_Details" value="" placeholder="21.DETAILS OF ADDITIONS">  </div><input type="hidden" name="aeration_count" value="'+aeration+'"/><a href="#" class="remove_aerationfield btn btn-danger">Remove</a>  </div>'); //add input box

												aeration++; //text box increment
											});
							$(aerationwrapper).on("click",
									".remove_aerationfield", function(e) { //user click on remove text
										e.preventDefault();
										$(this).parent('div').remove();
										aeration--;
									})

							///* Sample Labeling  Controller Add and Remove */ 

							var samplewrapper = $(".input_samplefields_wrap"); //Fields wrapper
							var sampleadd_button = $(".add_samplefield_button"); //Add button ID

							var sampleLabelling = 1; //initlal text box count
							$(sampleadd_button)
									.click(
											function(e) { //on add input button click
												e.preventDefault();

												$(samplewrapper)
														.append(
																'<div class="form-group" style="margin-left:50px"><div class="col-sm-2 nopadding"><input type="text" class="form-control u" id="f" name="sampleLabelling_Date" value="" placeholder="Date"></div><div class="col-sm-1 nopadding">  <input type="text" class="form-control"  name="sampleLabelling_Time" value="" placeholder="Time">  </div><div class="col-sm-5 nopadding">  <input type="text" class="form-control" name="sampleLabelling_Details" value="" placeholder="Details of Sample">  </div><div class="col-sm-2 nopadding">  <input type="text" class="sampleLabellingQty form-control" name="sampleLabelling_Qty" value="" placeholder="Qty(ml)">  </div><input type="hidden" name="sample_count" value="'+sampleLabelling+'"/><a href="#" class="remove_samplefield btn btn-danger">Remove</a>  </div>'); //add input box
												sampleLabelling++; //text box increment
											});
							$(samplewrapper).on("click", ".remove_samplefield",
									function(e) { //user click on remove text
										e.preventDefault();
										$(this).parent('div').remove();
										sampleLabelling--;
									})

							/* Qc Controll Start Here */

							var qcControllwrapper = $(".input_qcControllfields_wrap"); //Fields wrapper
							var qcControlladd_button = $(".add_qcControllfield_button"); //Add button ID

							var qcLabelling = 1; //initlal text box count
							$(qcControlladd_button)
									.click(
											function(e) { //on add input button click
												e.preventDefault();
												$(qcControllwrapper)
														.append(
																'<div class="form-group" style="margin-left:50px"><div class="col-sm-2 nopadding"><input type="text" class="form-control"  name="QcSample_No" value="" placeholder="Sample No.(MC & 21 Label)"></div><div class="col-sm-4 nopadding">  <input type="text" class="form-control"  name="nameOFTest" value="" placeholder="Name of the Test">  </div><div class="col-sm-1 nopadding">  <input type="text" class="form-control" name="qcRefNo" value="" placeholder="Test Ref.No.">  </div><div class="col-sm-3 nopadding">  <input type="text" class="form-control" name="Qc_result" value="" placeholder="Result">  </div><input type="hidden" name="qc_count" value="'+qcLabelling+'"/><a href="#" class="remove_qcfield btn btn-danger">Remove</a>  </div>'); //add input box
												qcLabelling++; //text box increment
											});
							$(qcControllwrapper).on("click", ".remove_qcfield",
									function(e) { //user click on remove text
										e.preventDefault();
										$(this).parent('div').remove();
										qcLabelling--;
									})

							//Initialize tooltips
							$('.nav-tabs > li a[title]').tooltip();

							//Wizard
							$('a[data-toggle="tab"]').on(
									'show.bs.tab',
									function(e) {

										var $target = $(e.target);

										if ($target.parent().hasClass(
												'disabled')) {
											return false;
										}
									});

							$(".next-step").click(function(e) {

								var $active = $('.wizard .nav-tabs li.active');
								$active.next().removeClass('disabled');
								nextTab($active);

							});
							$(".prev-step").click(function(e) {

								var $active = $('.wizard .nav-tabs li.active');
								prevTab($active);

							});

							function nextTab(elem) {
								$(elem).next().find('a[data-toggle="tab"]')
										.click();
							}
							function prevTab(elem) {
								$(elem).prev().find('a[data-toggle="tab"]')
										.click();
							}

							//according menu

							//Add Inactive Class To All Accordion Headers
							$('.accordion-header').toggleClass(
									'inactive-header');

							//Set The Accordion Content Width
							var contentwidth = $('.accordion-header').width();
							$('.accordion-content').css({});

							//Open The First Accordion Section When Page Loads
							$('.accordion-header').first().toggleClass(
									'active-header').toggleClass(
									'inactive-header');
							$('.accordion-content').first().slideDown()
									.toggleClass('open-content');

							//The Accordion Effect
							$('.accordion-header')
									.click(
											function() {
												if ($(this).is(
														'.inactive-header')) {
													$('.active-header')
															.toggleClass(
																	'active-header')
															.toggleClass(
																	'inactive-header')
															.next()
															.slideToggle()
															.toggleClass(
																	'open-content');
													$(this)
															.toggleClass(
																	'active-header')
															.toggleClass(
																	'inactive-header');
													$(this)
															.next()
															.slideToggle()
															.toggleClass(
																	'open-content');
												}

												else {
													$(this)
															.toggleClass(
																	'active-header')
															.toggleClass(
																	'inactive-header');
													$(this)
															.next()
															.slideToggle()
															.toggleClass(
																	'open-content');
												}
											});

							return false;
						});
	</script>
	<div id="snackbar">Record with same details already found !</div>
	<div id="snackbar1">ID already found !</div>
</body>
</html>
