
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="java.util.*" %>
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

<title>Microbial Edit Record</title>
</head>

<style>
@CHARSET "ISO-8859-1";

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
	width: 58%;
	margin: 0 auto;
	left: 0;
	right: 0;
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
	width: 250px;
	height: 65px;
	margin-left: 2%;
	bottom: -4%;
	margin-right: 20%;
	line-height: 90px;
	display: inline-block;
	border-radius: 100px;
	background: #fff;
	border: 2px solid #e0e0e0;
	z-index: 2;
	position: absolute;
	left: -22px;
	text-align: center;
	font-size: 30px;
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
	width: 30%;
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
	left: 60%;
	opacity: 1;
	margin: 8 auto;
	margin-top: 70%;
	bottom: 0px;
	border: 15px solid transparent;
	border-bottom-color: #5bc0de;
}

.wizard .nav-tabs>li a {
	width: 0px;
	height: 60px;
	right: 50px;
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
	font-weight: 400
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
		url("http://www.dezitech.com/wp-content/uploads/2014/04/designdeath2.jpg")
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

		/* MongoClient mongoClient = new MongoClient( "localhost" , 27212 );
		DB db = mongoClient.getDB( "MicrobialDB" );
		 */
/* 		MongoCredential credential = MongoCredential.createCredential("exafMicrobial", "MicrobialDB",
				"exafMicrobial123".toCharArray());
		MongoClient mongoClient = new MongoClient(new ServerAddress("localhost", 27212), Arrays.asList(credential));

		DB db = mongoClient.getDB("MicrobialDB");

		DBCollection coll = db.getCollection("microbialColl");
 */
 
 
 Util utilObj=new Util();
	MongoClient mongoClient;
	DB db;
	mongoClient=utilObj.getMongoClient();
	db=utilObj.getDb();
	DBCollection coll = utilObj.getMicroCellColl();
	
	
		/* String mc = request.getParameter("previoumc");
		String PreviousDate = request.getParameter("PreviousDate");

		String Pos = request.getParameter("previousname_of_the_organism");

		/* out.println(mc+PreviousDate+Pos);  */

		BasicDBObject whereQuery = new BasicDBObject();
		if (ObjectId.isValid(request.getParameter("id"))) { 
			whereQuery.put("_id", new ObjectId(request.getParameter("id")));
			
		/* whereQuery.put("mc", Pattern.compile(mc.trim(), Pattern.CASE_INSENSITIVE));
		whereQuery.put("mc_Date", PreviousDate);
		whereQuery.put("nameOfOrganism", Pattern.compile(Pos.trim(), Pattern.CASE_INSENSITIVE));
 */
		DBCursor cursor = coll.find(whereQuery);

		if (cursor.hasNext()) {

			while (cursor.hasNext()) {
				DBObject result = cursor.next();

				Map resultmap = result.toMap();
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
							<div id="image" style="float: right; margin-RIGHT: 6%;">
								<img src="companylogo.png" class="media-object"
									style="width: 170px; height: 120px" align="right" />
							</div>
							<div id="image"
								style="float: left; margin-right: 4%; margin-left: 4%; margin-bottom: 5%;">
								<img src="Lablinkslogo.png" class="media-object"
									style="width: 230px; height: 100px" align="left" />
							</div>
							<p align="center " style="margin-right: 8%; margin-bottom: 2%">(For
								setting up a microbial culture,refer to SOP.LL.Lab.10300)</p>
							<br>

						</div>
					</div>
					<div class="connecting-line"></div>
					<div></div>
					<ul class="nav nav-tabs" role="tablist">

						<li role="presentation" class="active"><a href="#step1"
							data-toggle="tab" aria-controls="step1" role="tab"> <span
								class="round-tab">
									<h4 style="margin-top: 9%; align: center">Basic Details</h4>

							</span>
						</a></li>

						<li role="presentation" class=""><a href="#step2"
							data-toggle="tab" aria-controls="step2" role="tab"> <span
								class="round-tab">
									<h4 style="margin-top: 8%; align: center">pH&DO2 AND
										OTHER DETAILS</h4>

							</span>
						</a></li>
						<li role="presentation" class=""><a href="#step3"
							data-toggle="tab" aria-controls="step3" role="tab"> <span
								class="round-tab">
									<h4 style="margin-top: 7%; align: center">Sample Labelling
										Details</h4>
							</span>
						</a></li>


					</ul>
				</div>

				<form action="MicrobialUpdate" class="form-horizontal" method="post">
					<div class="tab-content">
						<div class="tab-pane active" role="tabpanel" id="step1">
							<div class="step1">
								<div class="row">
									<div class="col-md-3 ">

										<div class="well well-sm"
											style="border: df1010; margin-left: 9%">
											<div class="form-group">
												<label for="text" class="control-label col-xs-5">MC
													:</label>
												<div class="col-xs-5">
													<input type="text" class="form-control" name="mc" id="mc"
														value="<%out.println(resultmap.get("mc"));%>" readonly>
														<input name="microbialID" type="hidden" value="<%out.println(resultmap.get("_id"));%>"">
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
													<input type="text" class="form-control" name="Date"
														id="Date"
														value="<%out.println(resultmap.get("mc_Date"));%>" readonly>

												</div>
											</div>
										</div>

									</div>
								</div>
								<div class="well well-sm"
									style="border: df1010; width: 96%; margin-left: 2%">
									<div class="form-group">
										<label for="text" class="control-label col-xs-3"
											style="text-align: left; margin-left: 2%">1.passage:
										</label>
										<div class="col-xs-2" style="margin-left: -1%">
											<input type="text" class="form-control" name="passage"
												id="passage"
												value="<%out.println(resultmap.get("passage_No"));%>">
										</div>
										<label for="text" class="control-label col-xs-2"
											style="margin-right: 4%; margin-left: 1%">Barcode : </label>
										<div class="col-xs-3" style="margin-left: 5%">
											<textarea class="form-control" name="Barcode" rows="1"
												id="Barcode">
												<%
													out.println(resultmap.get("barcode"));
												%>
											</textarea>
										</div>
									</div>
								</div>
								<div class="well well-sm"
									style="border: df1010; width: 96%; margin-left: 2%">
									<div class="form-group">

										<label for="text" class="control-label col-xs-3"
											style="text-align: left; margin-left: 2%">2.Name Of
											the Organism : </label>
										<div class="col-xs-3" style="margin-left: -1%">
											<input type="text" class="form-control"
												name="Name_Of_the_Organism"
												value="<%out.println(resultmap.get("nameOfOrganism"));%>"
												id="Name_Of_the_Organism" readonly>
										</div>
										<label for="text" class="control-label col-xs-2"
											style="margin-right: 6%; margin-left: -7%">3.Source :
										</label>
										<div class="col-xs-3" style="margin-left: 3%">
											<input type="text" class="form-control" name="Source"
												id="Source"
												value="<%out.println(resultmap.get("source"));%>">
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
												name="Seed_used_qty_medium" id="Seed_used_qty_medium"
												value="<%out.println(resultmap.get("seedUsed_Qty_medium"));%>">
										</div>
										<label for="text" class="control-label col-xs-2"
											style="margin-left: -1%">5. MC card of seed :</label>
										<div class="col-xs-3" style="margin-left: 3%">
											<input type="text" class="form-control"
												name="Mc_card_of_seed" id="Mc_card_of_seed"
												value="<%out.println(resultmap.get("mc_card_of_seed"));%>">
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
												name="Time_of_setting_up" id="timeofsettingup"
												value=" <%out.println(resultmap.get("timeOf_settingUp"));%>">
										</div>
										<label for="text" class="control-label col-xs-2">7.
											Temp. Incubation :</label>
										<div class="col-xs-3" style="margin-left: 1%">
											<input type="text" class="form-control"
												value="<%out.println(resultmap.get("temp_incubation"));%>"
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
												value="<%out.println(resultmap.get("medium"));%>"
												id="medium">
										</div>
										<label for="text" class="control-label col-xs-1"
											style="margin-left: 9%">R :</label>
										<div class="col-xs-3" style="margin-left: 1%">
											<input type="text" class="form-control"
												value="<%out.println(resultmap.get("medium_R"));%>"
												name="medium_R" id="r1">
										</div>
									</div>
									<div class="form-group">
										<label for="text" class="control-label col-xs-2"
											style="text-align: left; margin-left: 2%">9. Other
											Additives :</label>
										<div class="col-xs-3" style="margin-left: 7%">
											<input type="text" class="form-control"
												value="<%out.println(resultmap.get("other_additives"));%>"
												name="other_additives" id="Additives">
										</div>
										<label for="text" class="control-label col-xs-1"
											style="margin-left: 9%">R :</label>
										<div class="col-xs-3" style="margin-left: 1%">
											<input type="text" class="form-control"
												value="<%out.println(resultmap.get("other_additives_R"));%>"
												name="other_additives_R" id="r2">
										</div>
									</div>
									<div class="form-group">
										<label for="text" class="control-label col-xs-2"
											style="text-align: left; margin-left: 2%">10. Alkali
											:</label>
										<div class="col-xs-3" style="margin-left: 7%">
											<input type="text" class="form-control"
												value="<%out.println(resultmap.get("Alkali"));%>"
												name="Alkali" id="alkali">
										</div>
										<label for="text" class="control-label col-xs-1"
											style="margin-left: 9%">R :</label>
										<div class="col-xs-3" style="margin-left: 1%">
											<input type="text" class="form-control"
												value="<%out.println(resultmap.get("Alkali_R"));%>"
												name="Alkali_R" id="r3">
										</div>
									</div>
									<div class="form-group">
										<label for="text" class="control-label col-xs-2"
											style="text-align: left; margin-left: 2%">11. Acid :</label>
										<div class="col-xs-3" style="margin-left: 7%">
											<input type="text" class="form-control"
												value="<%out.println(resultmap.get("Acid"));%>"
												name="Acid" id="acid">
										</div>
										<label for="text" class="control-label col-xs-1"
											style="margin-left: 9%">R :</label>
										<div class="col-xs-3" style="margin-left: 1%">
											<input type="text" class="form-control"
												value="<%out.println(resultmap.get("Acid_R"));%>"
												name="Acid_R" id="Acid_R">
										</div>
									</div>
								</div>
								<div class="well well-sm" style="width: 96%; margin-left: 2%">
									<table width="1100" height="100">
										<tr>
											<td><b>If Glass Container</b>
												<div class="form-group">
													<%
														BasicDBObject resultmap0 = (BasicDBObject) resultmap.get("GlassContainer");
													%>
													<label for="text" class="control-label col-xs-5"
														style="text-align: left; margin-left: 3%">12. Type
														of Container :</label>
													<div class="col-xs-6" style="margin-left: 5%">
														<input type="text" class="form-control"
															value="<%out.println(resultmap0.get("typeof_container"));%>"
															name="Type_of_container" id="inputtext">
													</div>
												</div>
												<div class="form-group">
													<label for="text" class="control-label col-xs-5"
														style="text-align: left; margin-left: 3%">13.
														No.of.Container :</label>
													<div class="col-xs-6" style="margin-left: 5%">
														<input type="text" class="form-control"
															value="<%out.println(resultmap0.get("noOf_container"));%>"
															name="No_Of_container" id="inputtext">
													</div>
												</div>
												<div class="form-group">
													<label for="text" class="control-label col-xs-5"
														style="text-align: left; margin-left: 3%">14.
														Agitation Type & speed :</label>
													<div class="col-xs-6" style="margin-left: 5%">
														<input type="text" class="form-control"
															value="<%out.println(resultmap0.get("agitationTypeAndspeed"));%>"
															name="Agitation_type_speed" id="inputtext">
													</div>
												</div> <%
 	
 %></td>
											<td><b>If Bioreactor</b>
												<div class="form-group">
													<%
														BasicDBObject resultmap10 = (BasicDBObject) resultmap.get("BioReactor");
													%>
													<label for="text" class="control-label col-xs-5"
														style="text-align: left; margin-left: 5%">15.
														Bioreactor type & size :</label>
													<div class="col-xs-6" style="margin-left: -6%">
														<input type="text" class="form-control"
															value="<%out.println(resultmap10.get("bioractorType_size"));%>"
															name="Bioractor_type_size" id="inputtext">
													</div>
												</div>
												<div class="form-group">
													<label for="text" class="control-label col-xs-5"
														style="text-align: left; margin-left: 5%">16. Type
														Agitation/Tilt angle :</label>
													<div class="col-xs-6" style="margin-left: -6%">
														<input type="text" class="form-control"
															value="<%out.println(resultmap10.get("type_AgitationOrTiltAngle"));%>"
															name="Type_Agitation" id="inputtext">
													</div>
												</div>
												<div class="form-group">
													<label for="text" class="control-label col-xs-5"
														style="text-align: left; margin-left: 5%">17.
														Agitation speed :</label>
													<div class="col-xs-6" style="margin-left: -6%">
														<input type="text" class="form-control"
															value="<%out.println(resultmap10.get("agitationSpeed"));%>"
															name="Agitation_speed" id="inputtext">
													</div>
												</div> <%
 	/* 	}
 				
 			 */
 %></td>
										</tr>
									</table>
								</div>


							</div>
							<ul class="list-inline pull-right">
								<li><button type="button" class="btn btn-primary next-step"
										style="margin-right: 520px; width: 120px; border: 2px solid #fff">Next</button></li>
								<button onclick="myFunction()" class="btn btn-primary">Print
									the Details</button>
							</ul>
						</div>
						<div class="tab-pane" role="tabpanel" id="step2">
							<div class="step2">


								<div class="well well-sm" style="width: 96%; margin-left: 2%">
									<label for="text" class="control-label" style="margin-left: 2%"><b>
											18. pH CONTROL :</b></label><br>
									<br>
									<div class="panel-body">

										<div id="pH_fields"></div>
										<div class="form-group" style="margin-right: 20px">

											<%
												BasicDBList values = (BasicDBList) resultmap.get("phController");

														for (int i = 0; i < values.size(); i++) {
															BasicDBObject dbObject1 = (BasicDBObject) values.get(i);
															Map resultmap1 = dbObject1.toMap();
											%>
											<div class="col-sm-2 nopadding">

												<input type="text" class="form-control" id="attime"
													name="ph_attTime"
													value="<%out.println(resultmap1.get("ph_attTime"));%>"
													placeholder="At Time">

											</div>
											<div class="col-sm-2 nopadding">
												<input type="text" class="form-control" id="ph" name="ph"
													value="<%out.println(resultmap1.get("ph"));%>"
													placeholder="pH">
											</div>

											<div class="col-sm-7 nopadding">

												<div class="input-group">

													<div class="input-group-btn">
														<input type="text" class="form-control" id="alkali"
															name="ph_alkali"
															value="<%out.println(resultmap1.get("ph_alkali"));%>"
															placeholder="Alkali / Acid Addition!">
													</div>

												</div>

											</div>
											<br>
											<br>
											<div class="clear"></div>

											<%
												}
											%>


										</div>
									</div>


									<div class="well well-sm" style="width: 85%; margin-left: 4%">
										<div class="form-group">
											<label for="text" class="control-label col-xs-6">If
												continuous monitoring, the set pH value is :</label>
											<div class="col-xs-1">
												<input type="text" class="form-control" name="pH_Control"
													value="<%out.println(resultmap.get("phValue"));%>"
													id="inputtext">
											</div>
										</div>
									</div>


								</div>


								<div class="well well-sm" style="width: 96%; margin-left: 2%">
									<label for="text" class="control-label" style="margin-left: 2%"><b>
											19. DO2 CONTROL :</b></label><br>
									<br>
									<div class="panel-body">

										<div id="DO2_fields"></div>
										<div class="form-group" style="margin-right: 20px">

											<%
												BasicDBList values1 = (BasicDBList) resultmap.get("do2Controller");

														for (int i = 0; i < values1.size(); i++) {
															BasicDBObject dbObject1 = (BasicDBObject) values1.get(i);
															Map resultmap2 = dbObject1.toMap();
											%>
											<div class="col-sm-2 nopadding">

												<input type="text" class="form-control" id="Attime"
													name="do2_AtTime"
													value="<%out.println(resultmap2.get("do2_AtTime"));%>"
													placeholder="At Time">

											</div>
											<div class="col-sm-2 nopadding">
												<input type="text" class="form-control" id="DO2" name="o2"
													value="<%out.println(resultmap2.get("o2"));%>"
													placeholder="DO2">
											</div>

											<div class="col-sm-7 nopadding">

												<div class="input-group">

													<div class="input-group-btn">
														<input type="text" class="form-control" id="gas"
															name="gasOrAirAddition"
															value="<%out.println(resultmap2.get("gasOrAirAddition"));%>"
															placeholder="Gas / Air Addition!">
													</div>

												</div>

											</div>
											<br>
											<br>
											<div class="clear"></div>


											<%
												}
											%>

										</div>


									</div>
									<div class="well well-sm" style="width: 85%; margin-left: 4%">
										<div class="form-group">
											<label for="text" class="control-label col-xs-6">If
												continuous monitoring, the set DO2 value is :</label>
											<div class="col-xs-1">
												<input type="text" class="form-control"
													value="<%out.println(resultmap.get("do2_value"));%>"
													name="do2_value" id="inputtext">
											</div>
										</div>
									</div>




								</div>

								<div class="well well-sm" style="width: 96%; margin-left: 2%">
									<label for="text" class="control-label" style="margin-left: 2%"><b>
											20. Remarks of Aeration:</b></label><br>
									<br>

									<div class="panel-body">

										<div id="extra_fields"></div>
										<div class="form-group" style="margin-right: 20px">

											<%
												BasicDBList values21 = (BasicDBList) resultmap.get("remarksOnAeration");

														for (int i = 0; i < values21.size(); i++) {
															BasicDBObject dbObject1 = (BasicDBObject) values21.get(i);
															Map resultmap21 = dbObject1.toMap();
											%>
											<div class="col-sm-2 nopadding">

												<input type="text" class="form-control" id="date1"
													name="aeration_Date"
													value="<%out.println(resultmap21.get("aeration_Date"));%>"
													placeholder="Date">

											</div>
											<div class="col-sm-2 nopadding">
												<input type="text" class="form-control" id="Time1"
													name="aeration_Time"
													value="<%out.println(resultmap21.get("aeration_Time"));%>"
													placeholder="Time">
											</div>

											<div class="col-sm-7 nopadding">

												<div class="input-group">

													<div class="input-group-btn">
														<input type="text" class="form-control"
															id="details of additions" name="aeration_Details"
															value="<%out.println(resultmap21.get("aeration_Details"));%>"
															placeholder="21. DETAILS OF ADDITIONS">
													</div>

												</div>

											</div>
											<br>
											<br>
											<div class="clear"></div>


											<%
												}
											%>

											<!-- 
   -->


										</div>
									</div>



								</div>
								<div class="well well-sm" style="width: 96%; margin-left: 2%">
									<div class="form-group" style="margin-left: 30%">
										<label for="text" class="control-label col-xs-3">21.Done
											By Name : </label>
										<div class="col-xs-3">
											<input type="text" class="form-control" name="Done_by_name"
												value="<%out.println(resultmap.get("doneBy"));%>"
												id="inputstext">
										</div>
									</div>
								</div>
							</div>

							<ul class="list-inline pull-right">
								<li><button type="button"
										class="btn btn-default prev-step"
										style="width: 120px; border: 2px solid #fff">Previous</button></li>
								<li><button type="button"
										class="btn btn-primary next-step"
										style="margin-right: 400px; width: 120px; border: 2px solid #fff">Next</button>
									<button onclick="myFunction()" class="btn btn-primary">Print
										the Details</button>
							</ul>

						</div>
						<div class="tab-pane" role="tabpanel" id="step3">
							<div class="step33">

								<div class="well well-sm" style="width: 96%; margin-left: 2%">
									<label for="text" class="control-label" style="margin-left: 2%"><b>
											22.SAMPLE LABELLING :</b></label><br>
									<br>



									<div class="panel-body">

										<div id="education_fields"></div>
										<div class="form-group" style="margin-right: 20px">
											<%
												BasicDBList values2 = (BasicDBList) resultmap.get("sampleLabelling");

														for (int i = 0; i < values2.size(); i++) {
															BasicDBObject dbObject1 = (BasicDBObject) values2.get(i);
															Map resultmap1 = dbObject1.toMap();
											%>
											<div class="col-sm-2 nopadding">

												<input type="text" class="form-control" id="Date_sample"
													name="sampleLabelling_Date"
													value="<%out.println(resultmap1.get("sampleLabelling_Date"));%>"
													placeholder="Date">


											</div>
											<div class="col-sm-2 nopadding">

												<input type="text" class="form-control" id="Time_sample"
													name="sampleLabelling_Time"
													value="<%out.println(resultmap1.get("sampleLabelling_Time"));%>"
													placeholder="Time">

											</div>
											<div class="col-sm-6 nopadding">

												<input type="text" class="form-control"
													id="details_of_sample" name="sampleLabelling_Details"
													value="<%out.println(resultmap1.get("sampleLabelling_Details"));%>"
													placeholder="Details of Sample">

											</div>
											<div class="col-sm-2 nopadding">

												<div class="input-group">

													<div class="input-group-btn">
														<input type="text" class="form-control" id="Qty"
															name="sampleLabelling_Qty"
															value="<%out.println(resultmap1.get("sampleLabelling_Qty"));%>"
															placeholder="Qty.">
													</div>

												</div>

											</div>
											<br>
											<br>
											<div class="clear"></div>

											<%
												}
											%>

											<!-- 
   -->
										</div>


									</div>


								</div>


								<div class="well well-sm" style="width: 96%; margin-left: 2%">
									<label for="text" class="control-label" style="margin-left: 2%"><b>
											23.QC CONTROL TESTS :</b></label><br>
									<br>



									<div class="panel-body">

										<div id="new_fields"></div>
										<div class="form-group" style="margin-right: 20px">
											<%
												BasicDBList values3 = (BasicDBList) resultmap.get("Qc_Controll_Test");

														for (int i = 0; i < values3.size(); i++) {
															BasicDBObject dbObject1 = (BasicDBObject) values3.get(i);
															Map resultmap1 = dbObject1.toMap();
															//out.println("Sample_mc_label :"+resultmap1.get("Date"));
											%>
											<div class="col-sm-2 nopadding">

												<input type="text" class="form-control" id="sample_mc_label"
													name="QcSample_No"
													value="<%out.println(resultmap1.get("QcSample_No"));%>"
													placeholder="Sample No.(MC & 21 label)">

											</div>
											<div class="col-sm-3 nopadding">

												<input type="text" class="form-control" id="nameofthetest"
													name="nameOFTest"
													value="<%out.println(resultmap1.get("nameOFTest"));%>"
													placeholder="Name of Test">

											</div>
											<div class="col-sm-2 nopadding">
												<input type="text" class="form-control" id="testrefno"
													name="qcRefNo"
													value="<% out.println(resultmap1.get("qcRefNo"));  %>"
													placeholder="Test Ref.No.">
											</div>

											<div class="col-sm-5 nopadding">

												<div class="input-group">

													<div class="input-group-btn">
														<input type="text" class="form-control" id="Result"
															name="Qc_result"
															value="<% out.println(resultmap1.get("Qc_result"));  %>"
															placeholder="Result">
													</div>

												</div>

											</div>
											<br>
											<br>
											<div class="clear"></div>

											<% 
			
	}  
    
    %>


											<!-- -->

										</div>


									</div>


								</div>

								<div class="well well-sm"
									style="border: df1010; width: 96%; margin-left: 2%">
									<label for="text" class="control-label" style="margin-left: 2%"><b>
											24. GENERAL REMARKS OF CULTURE :</b></label><br>
									<br>
									<div class="col-xs-15">
										<input type="text" class="form-control"
											value="<%  out.println(resultmap.get("generalRemarkOFCulture")); %>"
											name="general_remarks_of_culture" id="inputtext"
											placeholder="General Remarks of Culture">
									</div>
								</div>

								<div class="well well-sm"
									style="border: df1010; width: 96%; margin-left: 2%">
									<label for="text" class="control-label" style="margin-left: 2%"><b>
											25. DETAILS OF HARVESTING :</b></label><br>
									<br>
									<div class="col-xs-15">
										<textarea class="form-control" name="Details_of_harvesting"
											rows="3" id="comment" placeholder="Details of Harvesting">
											<% out.println(resultmap.get("Details_of_harvesting")); %>
										</textarea>
									</div>

								</div>

								<div class="well well-sm"
									style="border: df1010; width: 96%; margin-left: 2%">
									<label for="text" class="control-label" style="margin-left: 2%"><b>26.
											REFERENCE OF DOWN STREAM PROCESSING :</b></label><br>
									<br>
									<div class="col-xs-15">
										<input type="text" class="form-control"
											value="<% out.println(resultmap.get("reff_DownStremPrcessing")); %>"
											name="reference_of_down_stream_processing" id="inputtext"
											placeholder="Reference of Down Stream Processing">
									</div>
								</div>


								<div class="well well-sm" style="width: 96%; margin-left: 2%">
									<div class="form-group" style="margin-right: 6%">

										<label for="text" class="control-label col-xs-3">Done
											By Name 1: </label>
										<div class="col-xs-3">
											<input type="text" class="form-control"
												value="<% out.println(resultmap.get("done_by_name1")); %>"
												name="donebyname1" id="donebyname1">
										</div>
										<label for="text" class="control-label col-xs-3">Done
											By Name 2: </label>
										<div class="col-xs-3">
											<input type="text" class="form-control"
												value="<% out.println(resultmap.get("done_by_name2"));  %>"
												name="donebyname2" id="donebyname2">
										</div>

									</div>
								</div>

								<div class="well well-sm"
									style="border: df1010; width: 96%; margin-left: 2%">
									<div class="form-group" style="margin-left: 20%">
										<label for="text" class="control-label"
											style="margin-left: -20%"><b>CONTROL & APPROVAL
												:</b></label><br>
										<br> <label for="text" class="control-label col-xs-2 ">Prepared
											by: </label>
										<div class="col-xs-3">
											<input type="text" class="form-control"
												value="<% out.println(resultmap.get("Prepared_by"));  %>"
												name="Prepared_by" id="Prepared_by">
										</div>

										<label for="text" class="control-label col-xs-2"
											style="margin-left: -4%">Date: </label>
										<div class="col-xs-2">
											<input type="text" class="form-control"
												value="<% out.println(resultmap.get("PreparedByDate"));  %>"
												name="prepared_by_date" id="Date1">

										</div>
										<br>
										<br> <label for="text" class="control-label col-xs-2">Dept.
											Head :</label>
										<div class="col-xs-3">
											<input type="text" class="form-control"
												value="<% out.println(resultmap.get("deptHead")); %>"
												name="Dept_Head" id="Dept_Head">
										</div>

										<label for="text" class="control-label col-xs-2"
											style="margin-left: -4%">Date:</label>
										<div class="col-xs-2">
											<input type="text" class="form-control" name="dept_Head_date"
												value="<% out.println(resultmap.get("deptHeadDate")); %>"
												id="inputsource">

										</div>
										<br>
										<br> <label for="text" class="control-label col-xs-2">QAD:
										</label>
										<div class="col-xs-3">
											<input type="text" class="form-control"
												value="<% out.println(resultmap.get("qad"));  %>" name="QAD"
												id="inputsource">
										</div>

										<label for="text" class="control-label col-xs-2"
											style="margin-left: -4%">Date:</label>
										<div class="col-xs-2">
											<input type="text" class="form-control" name="qad_date"
												value="<% out.println(resultmap.get("qadDate"));  %>"
												id="Date">

										</div>
										<br>
									</div>
								</div>
							</div>
							<ul class="list-inline pull-right">
								<li><button type="button" class="btn btn-default prev-step"
										style="width: 120px; border: 2px solid #fff">Previous</button></li>
								<button onclick="myFunction()" class="btn btn-primary">Print
									the Details</button>
									<li><input type="submit" value="Update" class="btn btn-primary"></li> 
							</ul>

						</div>
				</form>
			</div>

			</section>
		</div>
	</div>

	<%
  }}else{
	 out.println("<div  style='color: red;'>NO RECORD FOUND</div>");
 }
	}
 %>
	<script>


function myFunction() {
    window.print();
}
</script>
	<script type="text/javascript">
 
 $(document).ready(function(){
	 function nextTab(elem) {
		 $(elem).next().find('a[data-toggle="tab"]').click();
		 }
		 function prevTab(elem) {
		 $(elem).prev().find('a[data-toggle="tab"]').click();
		 }

	 $(".next-step").click(function (e) {
		 var $active = $('.wizard .nav-tabs li.active');
		 console.log($active);
		 $active.next().removeClass('disabled');
		 nextTab($active);
 
		 });
		 $(".prev-step").click(function (e) {

		 var $active = $('.wizard .nav-tabs li.active');
		 prevTab($active);

		 });
	 
	  /* $("input").attr('readonly', true); 
	 $("textarea").attr('readonly',true);
	   */
	  
 });
 
 
 </script>

</body>
</html>