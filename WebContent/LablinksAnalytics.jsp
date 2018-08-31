<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Lablinks Analytics</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

  <!-- charts Scripts start -->



         <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.3.0/Chart.bundle.js" type="text/javascript"></script>
         <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.3.0/Chart.bundle.min.js" type="text/javascript"></script>
         <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.3.0/Chart.js" type="text/javascript"></script>
         <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.3.0/Chart.min.js" type="text/javascript"></script>
         
       
         
 		 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
        <script src="https://cdnjs.cloudflare.com/ajax/libs/vis/4.16.1/vis.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/vis/4.16.1/vis.js"></script>

        <link href="https://cdnjs.cloudflare.com/ajax/libs/vis/4.16.1/vis.min.css" rel="stylesheet" type="text/css" />
        <link href="https://cdnjs.cloudflare.com/ajax/libs/vis/4.16.1/vis.css" rel="stylesheet" type="text/css" />
 
<!-- Charts Scripts end -->

</head>
<body>
<nav class="navbar navbar-default" style="
    height: 1px;
" >
  <div class="container-fluid">
    <div class="navbar-header">
      
    </div>
    <ul class="nav navbar-nav">
    
    <li><a href="http://52.38.31.24:8080/LabLinks/Microbial.jsp"><img src="Lablinkslogo.png"   style="width: 175px; height: 80px"  > </a></li>
      
      
      <li class="active"><a href="#" style="
    width: 875px;font-weight: bold;font-size: 45px;background-color: white;
    text-align: center;margin-top: 25px;
      " >LabLinks Analytics</a></li>
      
       
 <!--      <li>
      <a href="http://52.38.31.24:8080/LabLinks/Microbial.jsp">
      <img src="companylogo.png"   style="width: 100px; height: 80px"  > 
      </a>
      </li> -->
    </ul>
  </div>
</nav>
<style>
.s{
margin-top: 10px;
}
.btn-llight-blue {
border-radius: 0px;
    color: white;
    background-color: transparent;
    border-color: white;
}
.btn-llight-blue:hover {
    color: black;
    background-color: white;
    border-color: white;
}


</style>

<div class="row">
    <div class="col-xs-6" style="background-color:rgba(95, 158, 160, 0.82)" >
    <div style="
    font-weight: bold;
    font-size: 25px;
    text-align: center;
    ">Predict The Quality Control Test Result</div>
        <!-- 
        categorical
         -->
         <div style="width: 500px;"> 
 <div><div style="float: left;width: 25px;background-color: #77fa8f;height: 10px;"></div> <span style="font-size: 10px">GOOD</span></div>
    <div><div style="float: left;width: 25px;background-color: red;height: 10px;font-size: 10px"></div> <span style="font-size: 10px">CONTAMINATED </span></div>
 
  
 <br style="clear: left;" />
</div>

<div style="width: 100%">
        <canvas id="myChart"></canvas>
    </div>
   
   <script type="text/javascript">
  Chart.defaults.global.legend.display = false;
   Chart.defaults.groupableBar = Chart.helpers.clone(Chart.defaults.bar);

   var helpers = Chart.helpers;
   Chart.controllers.groupableBar = Chart.controllers.bar.extend({
     calculateBarX: function (index, datasetIndex) {
       // position the bars based on the stack index
       var stackIndex = this.getMeta().stackIndex;
       return Chart.controllers.bar.prototype.calculateBarX.apply(this, [index, stackIndex]);
     },

     hideOtherStacks: function (datasetIndex) {
       var meta = this.getMeta();
       var stackIndex = meta.stackIndex;

       this.hiddens = [];
       for (var i = 0; i < datasetIndex; i++) {
         var dsMeta = this.chart.getDatasetMeta(i);
         if (dsMeta.stackIndex !== stackIndex) {
           this.hiddens.push(dsMeta.hidden);
           dsMeta.hidden = true;
         }
       }
     },

     unhideOtherStacks: function (datasetIndex) {
       var meta = this.getMeta();
       var stackIndex = meta.stackIndex;

       for (var i = 0; i < datasetIndex; i++) {
         var dsMeta = this.chart.getDatasetMeta(i);
         if (dsMeta.stackIndex !== stackIndex) {
           dsMeta.hidden = this.hiddens.unshift();
         }
       }
     },

     calculateBarY: function (index, datasetIndex) {
       this.hideOtherStacks(datasetIndex);
       var barY = Chart.controllers.bar.prototype.calculateBarY.apply(this, [index, datasetIndex]);
       this.unhideOtherStacks(datasetIndex);
       return barY;
     },

     calculateBarBase: function (datasetIndex, index) {
       this.hideOtherStacks(datasetIndex);
       var barBase = Chart.controllers.bar.prototype.calculateBarBase.apply(this, [datasetIndex, index]);
       this.unhideOtherStacks(datasetIndex);
       return barBase;
     },

     getBarCount: function () {
       var stacks = [];

       // put the stack index in the dataset meta
       Chart.helpers.each(this.chart.data.datasets, function (dataset, datasetIndex) {
         var meta = this.chart.getDatasetMeta(datasetIndex);
         if (meta.bar && this.chart.isDatasetVisible(datasetIndex)) {
           var stackIndex = stacks.indexOf(dataset.stack);
           if (stackIndex === -1) {
             stackIndex = stacks.length;
             stacks.push(dataset.stack);
           }
           meta.stackIndex = stackIndex;
         }
       }, this);

       this.getMeta().stacks = stacks;
       return stacks.length;
     },
   });

   var data = {
     labels: ["Abrasilense", ["Azospirillum","Brasilense"], ["Bacillus" ,"megaterium"], ["psuedomonas" ,"fluorescens"], ["Sacchromyces", "boulardii"], ["salmonella H", "antigen"],[ "Trichoderma","viride"]],
     datasets: [
       {
         label: "Good",
         backgroundColor: "rgba(99,255,132,.84)",
         data: [2, 18, 14, 4, 3, 15, 3],
         stack: 1
       },
       {
         label: "Contaminated",
         backgroundColor: "rgba(255, 0, 0, .74)",
         data: [1, 10, 8, 2, 3, 5, 1],
         stack: 2
       }, 
       {
          label: "",
          backgroundColor: "rgba(255,255,255,.9)",
           data: [0,0,0,0,0,0,0],
           stack: 1
         } 
     ]
   };

   var ctx = document.getElementById("myChart").getContext("2d");
   var myChart = new Chart(ctx, {
     type: 'groupableBar',
     data: data,
     options: { 
    	 
       scales: {
         yAxes: [{
           ticks: {
             max: 20,
             beginAtZero: true
           },
           stacked: true,
         }]
       }
     }
   });

   
   
   </script>



<!--  <button id="randomizeData">Randomize Data</button> -->

<form class="form-inline" role="form" style="margin-left: 100px;">
   <div class="form-group">
      <label style="color: white;" for="name">NAME OF ORGANISM</label>
	 
 <select class="form-control s" id="nameoforg">
      <option>Abrasilense</option>
      <option>Azospirillum Brasilense</option>
      <option>Bacillus megaterium</option>
      <option>psuedomonas fluorescens</option>
      <option>Sacchromyces boulardii</option>
      <option>salmonella H antigen</option>
      <option>Trichoderma viride</option>
    </select> 
	  
   </div>
   <div class="form-group s">
      <label style="color: white;" for="email">BIOREACTOR SIZE TYPE</label>
	 <select class="form-control" id="bioreactor">
      <option>25L JERRY CAN</option>
      <option>2H TCC BAG</option>
      <option>30H TCC BAG</option>
      <option>30L JERRY CAN</option>
      <option>30L TCC BAG</option>
      <option>35L JERRY CAN</option>
    </select>
 </div>
 
   <div class="form-group s">
      <label style="color: white;" for="pwd">TEMPERATURE INCUBATION</label>
	  <input type="text"  maxlength="2" size="2"  class="form-control" id="temp" placeholder="°C">
   </div>
   
    <div style="width: 9px;height: 1px;"></div>
   <div class="form-group s">
      <label style="color: white;" for="pwd">SEED QUANTITY</label>
	  <input type="text" maxlength="5" size="5"  class="form-control" id="seed" placeholder="ml">
   </div>
   
   
   <div class="form-group s">
      <label style="color: white;" for="pwd">MEDIUM QUANTITY</label>
	  <input type="text" maxlength="5" size="5"  class="form-control" id="medium" placeholder="ml">
   </div>
    
   <div class="form-group s">
      <label style="color: white;" for="pwd">CULTURE TIME</label>
	  <input type="text" maxlength="4" size="4"  class="form-control" id="culture" placeholder="Hours">
   </div>
   <!-- -border: 1px solid green; -->
   
  <b>  <p id="RandResp" class="bg-success s" style="padding: 10px;text-align:center;" >Quality Control Test Result : <font id="RandRespfont"  ></font></p></b>
   
</form>
<button id="register" style="
    margin-left: 275px;margin-top: 5px"  class="btn btn-lg btn-llight-blue">Predict</button>

  <script  >
 ///document.getElementById('randomizeData').addEventListener('click', function() {
	 $("#randomizeData").click(function(){
 	console.log(1);
	 myChart.data.datasets[2].stack = 1; //0 for good and 1 for bad
	 myChart.data.datasets[2].data[5] = 40; //value to update
	 myChart.data.datasets[2].backgroundColor = 'rgba(99,255,132,.84)'; //value to update
	 myChart.update();
 });
 
 </script> 
 <script type="text/javascript">
 $(document).ready(function(){
	 
	 $("#register").click(function(){
		 var nameoforg = $("#nameoforg option:selected").val();
		 var bactIndex = $("#nameoforg option:selected").index();
		 
		 
		 var bioreactor =$('#bioreactor option:selected').val();
		 var temp = $("#temp").val();
		 var seed =$("#seed").val();
		 var medium = $("#medium").val();
		 var culture =parseInt($("#culture").val())*60;
		 
		  console.log(nameoforg+bioreactor+temp+seed+medium+culture);
		 var msg = nameoforg+","+bioreactor+","+temp+","+seed+","+medium+","+culture;
		 //console.log(msg);
	 
		  //////////////////////////////////get/////////////////////////////////
		   $.get("CORS.jsp",
		    		{msg:msg,type:0}
		    ,graph_res1);
			
		    function graph_res1(response)
		    {
		    	
		          console.log("clas"+response);
		    	 if(response)
		    		 {response=response.trim().split("@");
		    		 console.log(response[0]);
		    		 plotgraphclassi(response[0]);
		    		 
		    		 
		    		 }
		    }

		    
		  
		  //var msg ="1200,2656,1479,1345,1164,3900,500,1000,1000,500,2100,500,1400"; 
		 //// var msg ="Azospirillum Brasilense,2H TCC BAG,20,4,40,1800";
		 function plotgraphclassi(classiresp){
			 /////if
		      if(classiresp == '["CONTAMINATED"]'){
		   		   console.log(1);
		   		 myChart.data.datasets[2].stack = 2; //data
		   		myChart.data.datasets[2].data=[0,0,0,0,0,0,0];
		   		 myChart.data.datasets[2].data[bactIndex] =1;
		   		 myChart.data.datasets[2].backgroundColor = 'rgba(255, 0, 0, .74)'; //value to update
		   		 myChart.update();
		   		$("#RandResp").removeClass("bg-success");
		   		$("#RandResp").addClass("bg-danger");
		   		
		   		 $("#RandRespfont").text("");
			   	 $("#RandRespfont").text("CONTAMINATED");
			   	$("#RandRespfont").css("color", "red");
			   	$("#RandResp").css("border", "1px solid red");
			   
		   	   }
		   	   else{
		   		   console.log(0);
		   		 myChart.data.datasets[2].stack = 1; //data
		   		myChart.data.datasets[2].data=[0,0,0,0,0,0,0];
		   		 myChart.data.datasets[2].data[bactIndex] =1;
		   		 myChart.data.datasets[2].backgroundColor = 'rgba(99,255,132,.84)'; //value to update
		   		 myChart.update();
		   		
		   		 $("#RandRespfont").text("");
		   		
		   		$("#RandRespfont").text("GOOD");
		   		$("#RandRespfont").css("color", "green");
			   	$("#RandResp").css("border", "1px solid green");
		   	   } 
		   	  
		   	  ///enif
		 }
		 
		 /////////////////////////////////////////get//////////////////////////////
		 
	 });
	 
	 
 });
 
 
 </script>
        
        
    </div>
    <div class="col-xs-6" style="height:731px;background-color:rgba(95, 158, 160, 0.82);">
    <div style="
    font-weight: bold;
    font-size: 25px;
    text-align: center;
    ">Predict The Sample Labelling Quantity</div>
        <!-- 
        Regresiion
         -->
     
<form class="form-inline" style="margin-top: 35px;margin-left: 80px"   style="margin-left: 100px;">
   <div class="form-group" >
      <label for="name" style="color: white;">NAME OF ORGANISM</label>
	 
 <select class="form-control" id="nameoforgR">
      <option>Abrasilense</option>
      <option>Azospirillum Brasilense</option>
      <option>Bacillus megaterium</option>
      <option>psuedomonas fluorescens</option>
      <option>Sacchromyces boulardii</option>
      <option>salmonella H antigen</option>
      <option>Trichoderma viride</option>
    </select>
	  
   </div>
 
   <div class="form-group s">
      <label for="pwd"style="color: white;"  >TEMPERATURE INCUBATION</label>
	  <input type="text"  maxlength="2" size="2"  class="form-control" id="tempR" placeholder="°C">
   </div>
    <div style="width: 9px;height: 1px;" ></div>
   <div class="form-group s">
      <label for="pwd" style="color: white;" >SEED QUANTITY</label>
	  <input type="text" maxlength="5" size="5"  class="form-control" id="seedR" placeholder="ml">
   </div>
   
   <div class="form-group s">
      <label for="pwd" style="color: white;">MEDIUM QUANTITY</label>
	  <input type="text" maxlength="5" size="5"  class="form-control" id="mediumR" placeholder="ml">
   </div>
   
   <div class="form-group s">
      <label style="color: white;" for="pwd">CULTURE TIME</label>
	  <input type="text" maxlength="4" size="4"  class="form-control" id="cultureR" placeholder="Hours">
	  </form><br>
   <button id="registerR" style="
    margin-left: 190px;"  class="btn btn-lg btn-llight-blue">Predict</button>
   
   
   </div>
   <br>
   <b><font id="regSamplelabelfont" style="color: #ff6384;text-shadow: 0px 0px 3px white;"></font></b>
   
   <div style="width: 80%;margin-top: 50px">
   <canvas id="piChart"></canvas>
   </div>
   
   
   <script type="text/javascript">
 $(document).ready(function(){
	 
	 $("#registerR").click(function(e){
		 e.preventDefault(); 
		 console.log(1);
		 var nameoforg = $("#nameoforgR option:selected").val();
		// var bioreactor =$('#bioreactorR option:selected').val();
		 var temp = $("#tempR").val();
		 var seed =$("#seedR").val();
		 var medium = $("#mediumR").val();
		 var culture =parseInt($("#cultureR").val())*60;
		 console.log("resp");
		  console.log(nameoforg+temp+seed+medium+culture);
		 var msg = nameoforg+","+temp+","+seed+","+medium+","+culture;
		 console.log(msg);
	 
			/////////////////////////////////$get///////////////////////////////
		    $.get("CORS.jsp",
		    		{msg:msg,type:1}
		    ,graph_res);
			
		    function graph_res(response)
		    {
		    	 if(response)
		    		 {response=response.trim().split("@");
		    		 console.log(response[0]);
		    		
		    		 plotgraphQty(response[0]);
		    		 
		    		 
		    		 }
		    }
		    
		    function plotgraphQty(resp){
		    	var Predictedval=resp;
		    	 Predictedval = Predictedval.replace(/^\[(.+)\]$/,'$1');
		 			console.log(Predictedval);
			      Chart.pluginService.register({
			    		afterUpdate: function (chart) {
			    			if (chart.config.options.elements.center) {
			    				var helpers = Chart.helpers;
			    				var centerConfig = chart.config.options.elements.center;
			    				var globalConfig = Chart.defaults.global;
			    				var ctx = chart.chart.ctx;

			    				var fontStyle = helpers.getValueOrDefault(centerConfig.fontStyle, globalConfig.defaultFontStyle);
			    				var fontFamily = helpers.getValueOrDefault(centerConfig.fontFamily, globalConfig.defaultFontFamily);

			    				if (centerConfig.fontSize)
			    					var fontSize = centerConfig.fontSize;
			    				// figure out the best font size, if one is not specified
			    				else {
			    					ctx.save();
			    					var fontSize = helpers.getValueOrDefault(centerConfig.minFontSize, 1);
			    					var maxFontSize = helpers.getValueOrDefault(centerConfig.maxFontSize, 256);
			    					var maxText = helpers.getValueOrDefault(centerConfig.maxText, centerConfig.text);

			    					do {
			    						ctx.font = helpers.fontString(fontSize, fontStyle, fontFamily);
			    						var textWidth = ctx.measureText(maxText).width;

			    						// check if it fits, is within configured limits and that we are not simply toggling back and forth
			    						if (textWidth < chart.innerRadius * 2 && fontSize < maxFontSize)
			    							fontSize += 1;
			    						else {
			    							// reverse last step
			    							fontSize -= 1;
			    							break;
			    						}
			    					} while (true)
			    					ctx.restore();
			    				}

			    				// save properties
			    				chart.center = {
			    					font: helpers.fontString(fontSize, fontStyle, fontFamily),
			    					fillStyle: helpers.getValueOrDefault(centerConfig.fontColor, globalConfig.defaultFontColor)
			    				};
			    			}
			    		},
			    		afterDraw: function (chart) {
			    			if (chart.center) {
			    				var centerConfig = chart.config.options.elements.center;
			    				var ctx = chart.chart.ctx;

			    				ctx.save();
			    				ctx.font = chart.center.font;
			    				ctx.fillStyle = chart.center.fillStyle;
			    				ctx.textAlign = 'center';
			    				ctx.textBaseline = 'middle';
			    				var centerX = (chart.chartArea.left + chart.chartArea.right) / 2;
			    				var centerY = (chart.chartArea.top + chart.chartArea.bottom) / 2;
			    				ctx.fillText(centerConfig.text, centerX, centerY);
			    				ctx.restore();
			    			}
			    		},
			    	})


			    		var config = {
			    			type: 'doughnut',
			    			 
			    			data: {
			    				labels: [
			    				  "Sample Labelling Quantity",
			    				  
			    				],
			    				datasets: [{
			    					data: [Predictedval],
			    					backgroundColor: [
			    					  "#FF6384",
			    					  
			    					],
			    					hoverBackgroundColor: [
			    					  "#FF6384",
			    					 
			    					]
			    				}]
			    			},
			    		options: {
			    			elements: {
			    				center: {
			    					// the longest text that could appear in the center
			    					maxText: '100%',
			    					text: Predictedval,
			    					fontColor: '#ff6384',
			    					fontFamily: "'Helvetica Neue', 'Helvetica', 'Arial', sans-serif",
			    					fontStyle: 'normal',
			    					// fontSize: 12,
			    					// if a fontSize is NOT specified, we will scale (within the below limits) maxText to take up the maximum space in the center
			    					// if these are not specified either, we default to 1 and 256
			    					minFontSize: 1,
			    					maxFontSize: 256,
			    				}
			    			}
			    		}
			    	};


			    		var ctx = document.getElementById("piChart").getContext("2d");
			    		var myChart = new Chart(ctx, config);
			    			   	  $("#regSamplelabelfont").text("");
			    			   	$("#regSamplelabelfont").text("Sample Labelling Quantity (ml) ");
			    			    
			    			    //////////////////////////////////////////////////////////////
		    }
		    
		    ////////////////////////////$get//////////////////////////////////
		     
		    
		//  xhttp1.open("GET", "http://52.38.31.24:8001/msg?msg="+msg, true);
		///  xhttp1.setRequestHeader( 'Access-Control-Allow-Origin', '*');
		 // xhttp1.send();
		 
		  
	 });
	 
	 
 });
 
 
 </script> 
    </div>
</div>



</body>
</html>