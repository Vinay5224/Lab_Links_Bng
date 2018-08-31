
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.TimeZone;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.bson.types.ObjectId;

import com.mongodb.BasicDBObject;
import com.mongodb.DB;
import com.mongodb.DBCollection;
import com.mongodb.DBCursor;
import com.mongodb.MongoClient;
import com.util.Util;


@WebServlet("/UpdateRecord")
public class UpdateRecord extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public UpdateRecord() {
		super();
		
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
	

	}
 
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
	
		Util utilObj=new Util();
		MongoClient mongoClient;
		DB db;
		mongoClient=utilObj.getMongoClient();
		db=utilObj.getDb();
		
		if (ObjectId.isValid(request.getParameter("formId").trim())) {

			
			BasicDBObject whereQuery = new BasicDBObject();
			whereQuery.put("_id", new ObjectId(request.getParameter("formId").trim()));
			DBCollection coll = utilObj.getTorocelColl();
			DBCursor cursor = coll.find(whereQuery);
			if (cursor.hasNext()) {
				BasicDBObject doc = new BasicDBObject();
				doc = (BasicDBObject) cursor.next();

				doc.append("tcc", request.getParameter("tcc")).append("date", request.getParameter("Date"));

				
				doc.append("torocellSystemIdNo", request.getParameter("torocell_system_id_no")).append("barcode",
						request.getParameter("barcode").trim());

				BasicDBObject vesselTypeObj = new BasicDBObject();
				if (request.getParameter("pvc") != null)
					vesselTypeObj.append("pvc", request.getParameter("pvc"));
				else
					vesselTypeObj.append("pvc", "false");

				if (request.getParameter("pp") != null)
					vesselTypeObj.append("pp", request.getParameter("pp"));
				else
					vesselTypeObj.append("pp", "false");

				/* ss small lit Starting here */
				if (request.getParameter("ss_small_lit") != null)
					vesselTypeObj.append("ss_small_lit", request.getParameter("ss_small_lit"));
				else
					vesselTypeObj.append("ss_small_lit", "false");

				/* ss Big lit start Here */

				if (request.getParameter("ss_big_lit") != null)
					vesselTypeObj.append("ss_big_lit", request.getParameter("ss_big_lit"));
				else
					vesselTypeObj.append("ss_big_lit", "false");

				/* Conditioning Vessel start here */

				if (request.getParameter("conditional_vessel") != null)
					vesselTypeObj.append("conditional_vessel", request.getParameter("conditional_vessel"));
				else
					vesselTypeObj.append("conditional_vessel", "false");

				doc.append("vesselType", vesselTypeObj);

				BasicDBObject portObj = new BasicDBObject();
				portObj.append("noOfInletPorts", request.getParameter("no_of_inlet_ports"))
						.append("noOfOutletPorts", request.getParameter("no_of_outlet_ports"))
						.append("cellSpreader", request.getParameter("Cell_spreader"))
						.append("cellSamplerCoverSlip", request.getParameter("Cell_sampler_coverSlip"));
				doc.append("port", portObj);

				BasicDBObject matrixObj = new BasicDBObject();

				matrixObj.append("noOfMatrix", request.getParameter("no_matrix"))
						.append("otherTypeDetails", request.getParameter("other_type"))
						.append("otherTypeValue", request.getParameter("otherTypeVal"))
						.append("carbonateLeft", request.getParameter("carbonate_left"))
						.append("carbonateRight", request.getParameter("carbonate_right"));

				doc.append("matrix", matrixObj);

				BasicDBObject sensorObj = new BasicDBObject();
				
				sensorObj.append("noOFSensor", request.getParameter("no_sensors"));
				
				
				if(request.getParameter("pHCheckBox")!=null )
				{
				sensorObj.append("pH",request.getParameter("pHCheckBox"));
				}
				else
				{
					sensorObj.append("pH","false");	
				}
				sensorObj.append("pH_make", request.getParameter("ph_make"));
				if(request.getParameter("doCheckBox")!=null)
				{
				sensorObj.append("DO",request.getParameter("doCheckBox"));
				}
				else
				{
					sensorObj.append("DO","false");
				}
				sensorObj.append("do_Make",request.getParameter("do_Make"));
				doc.append("sensor",sensorObj);
				doc.append("Remarks_OnTheSystem", request.getParameter("Remarks").trim());

				BasicDBObject bioReactorObj = new BasicDBObject();
				bioReactorObj.append("bagIrradiated:", request.getParameter("ifbagbagirradiated"))
						.append("irradationBatchNo", request.getParameter("irradationBatchNo"))
						.append("vesselSterilizedOn", request.getParameter("vesselSterilizedOn"))
						.append("method", request.getParameter("method"))
						.append("sterilizationRunno", request.getParameter("sterilizationRunno"))
						.append("QcCheckofSterility", request.getParameter("QcCheckofSterility"));
				doc.append("bioReactorContainer", bioReactorObj);

				doc.append("cells", request.getParameter("cells"))
						.append("passageno", request.getParameter("passageno"))
						.append("source", request.getParameter("source"));

				String[] cmnoArray = request.getParameterValues("cmno");
				String[] noOFContainerArray = request.getParameterValues("nocontainers");
				String[] yieldArray = request.getParameterValues("yield");
				String[] cellyieldArray = request.getParameterValues("cellyield");
				String[] totalcellArray = request.getParameterValues("totalcell");

				
				List<BasicDBObject> cellCmList = new ArrayList<BasicDBObject>();
				if (cmnoArray.length > 0) {
					for (int i = 0; i < cmnoArray.length; i++) {

						if (!cmnoArray[i].equals("") || !noOFContainerArray[i].equals("") || !yieldArray[i].equals("")
								|| !cellyieldArray[i].equals("") || !totalcellArray[i].equals("")) {
							BasicDBObject cellcmObj = new BasicDBObject();
							if (!cmnoArray[i].equals(""))
								cellcmObj.append("cmNo", cmnoArray[i]);
							else
								cellcmObj.append("cmNo", "");
							if (!noOFContainerArray[i].equals(""))
								cellcmObj.append("noOfContainer", noOFContainerArray[i]);
							else
								cellcmObj.append("noOfContainer", "");
							if (!yieldArray[i].equals(""))
								cellcmObj.append("yieldCount", yieldArray[i]);
							else
								cellcmObj.append("yieldCount", "");
							if (!cellyieldArray[i].equals(""))
								cellcmObj.append("cellYield", cellyieldArray[i]);
							else
								cellcmObj.append("cellYield", cellyieldArray[i]);
							if (!totalcellArray[i].equals(""))
								cellcmObj.append("cellCount", totalcellArray[i]);
							else
								cellcmObj.append("cellCount", "");
							cellCmList.add(cellcmObj);
						}
					}
				}
				doc.append("cellCm", cellCmList);
				doc.append("trypsin_R", request.getParameter("trypsin"))
						.append("mediumOfCell", request.getParameter("medium_of_cells"))
						.append("mediumnOfCell_R", request.getParameter("mediumofcells_R"))
						.append("serum", request.getParameter("serum"))
						.append("serum_r", request.getParameter("serum_r"))
						.append("totalNoofCellsceeded", request.getParameter("totalNoofCellsceeded"))
						.append("cellsPerML", request.getParameter("cellsPerML"))
						.append("cellsPerSqCm", request.getParameter("cellsPerSqCm"))
						.append("medium", request.getParameter("medium"))
						.append("medium_R", request.getParameter("medium_r"))
						.append("serumNo", request.getParameter("serumNo"))
						.append("serumPercentage", request.getParameter("serumPer"))
						.append("serumNo_R", request.getParameter("serumNo_R"))
						.append("sodiumbiCarbonate", request.getParameter("sodiumbicarbonate"))
						.append("antibiotics1", request.getParameter("antibiotics1"))
						.append("antibiotics1_R", request.getParameter("antibiotics1_r"))
						.append("antibiotics2", request.getParameter("antibiotics2"))
						.append("antibiotics2_R", request.getParameter("antibiotics2_R"))
						.append("other", request.getParameter("other"))
						.append("other_r", request.getParameter("other_r"))
						.append("totalVolumeOfMedium", request.getParameter("totalVolumeOfMedium"))
						.append("settingUpCulture", request.getParameter("settingUpCulture").trim());
				BasicDBObject cultureSetUpByObj = new BasicDBObject();
				cultureSetUpByObj.append("name1", request.getParameter("name1"));
				cultureSetUpByObj.append("designation1", request.getParameter("designation1"));
				cultureSetUpByObj.append("name2", request.getParameter("secondname"));
				cultureSetUpByObj.append("designation2", request.getParameter("seconddesignation"));
				doc.append("cultureSetUpBy", cultureSetUpByObj);

				
				String[] totalNoOfDay = request.getParameterValues("noOfDays");
				String DayArr=request.getParameter("DayArr");
				String[] t= DayArr.split(",");
				List<BasicDBObject> dayList = new ArrayList<BasicDBObject>();

				
				
				
				for(int j=0;j<t.length;j++)
				{
					if(!t[j].isEmpty())
					{
				int i= Integer.parseInt(t[j]);
					BasicDBObject dayObj=new BasicDBObject();
					dayObj.append("day", i);
					dayObj.append("date",request.getParameter("PreviousDate"+i));
					if(request.getParameter("sampleQuantity")!=null)
					{
					dayObj.append("sampleQuantity", request.getParameter("sampleQuantity"+i));
					}
					else
					{
						dayObj.append("sampleQuantity", "false");	
					}
					
					dayObj.append("sampleQuantity", request.getParameter("sampleQuantity"+i)!=null);
					BasicDBObject HoursObj=new BasicDBObject();
					HoursObj.append("Hours1", request.getParameter("Time1"+i));
					HoursObj.append("physicalApperence1",request.getParameter("physical1"+i));
					HoursObj.append("ph_Culture1", request.getParameter("ph_Culture1"+i));
					HoursObj.append("do2_Culture1", request.getParameter("do2_Culture1"+i));
					HoursObj.append("phonline", request.getParameter("phonline"+i)!=null);
					HoursObj.append("phmanual", request.getParameter("phmanual"+i)!=null);
					HoursObj.append("doonline", request.getParameter("doonline"+i)!=null);
					HoursObj.append("domanual", request.getParameter("domanual"+i)!=null);
					dayObj.append("Hours1",HoursObj);
					
					BasicDBObject Hours1Obj=new BasicDBObject();
					/*Hours1Obj.append("phonline", request.getParameter("phonline"+i)!=null);
					Hours1Obj.append("phmanual", request.getParameter("phmanual"+i)!=null);*/
					
					Hours1Obj.append("phonline", request.getParameter("phonline"+i)!=null);
					Hours1Obj.append("phmanual", request.getParameter("phmanual"+i)!=null);
					Hours1Obj.append("doonline", request.getParameter("doonline"+i)!=null);
					Hours1Obj.append("domanual", request.getParameter("domanual"+i)!=null);
					
					
					Hours1Obj.append("Hours2", request.getParameter("Time2"+i));
					Hours1Obj.append("physicalApperence2",request.getParameter("physical2"+i));
					Hours1Obj.append("ph_Culture2", request.getParameter("ph_Culture2"+i));
					Hours1Obj.append("do2_Culture2", request.getParameter("do2_Culture2"+i));
					dayObj.append("Hours2",Hours1Obj);
					
					BasicDBObject Hours2Obj=new BasicDBObject();
					/*Hours2Obj.append("doonline", request.getParameter("doonline"+i)!=null);
					Hours2Obj.append("domanual", request.getParameter("domanual"+i)!=null);
					
					*/
					
					Hours2Obj.append("phonline", request.getParameter("phonline"+i)!=null);
					Hours2Obj.append("phmanual", request.getParameter("phmanual"+i)!=null);
					Hours2Obj.append("doonline", request.getParameter("doonline"+i)!=null);
					Hours2Obj.append("domanual", request.getParameter("domanual"+i)!=null);					
					Hours2Obj.append("Hours3", request.getParameter("Time3"+i));
					Hours2Obj.append("physicalApperence3",request.getParameter("physical3"+i));
					Hours2Obj.append("ph_Culture3", request.getParameter("ph_Culture3"+i));
					Hours2Obj.append("do2_Culture3", request.getParameter("do2_Culture3"+i));
					dayObj.append("Hours3",Hours2Obj);
					
					
					
					dayObj.append("glucoseConcentration",request.getParameter("glucose_concentration"+i));
					BasicDBObject odOfStandardObj=new BasicDBObject();
					odOfStandardObj.append("hundredG",request.getParameter("100g"+i));
					odOfStandardObj.append("twoHundredG",request.getParameter("200g"+i));
					odOfStandardObj.append("threeHundredG",request.getParameter("300g"+i));
					odOfStandardObj.append("fourHundredG",request.getParameter("400g"+i));
					odOfStandardObj.append("fiveHundredG",request.getParameter("500g"+i));
					odOfStandardObj.append("sixHundredG",request.getParameter("600g"+i));
					dayObj.append("odOfStandard",odOfStandardObj);
					dayObj.append("GmsL", request.getParameter("gms"+i));
					dayObj.append("odOfSample", request.getParameter("odOfTestSample"+i));
					dayObj.append("mediaConditioning_AdditionAndRemark", request.getParameter("mediaConditioningRemarks"+i).toString().trim());
					dayList.add(dayObj);
					
					
					
				}
				}
				doc.append("sampleTccDay",dayList);
				
				
				doc.append("TerminationCulture", request.getParameter("termination_culture").trim())
				.append("Summary", request.getParameter("summary").toString().trim());
				
				BasicDBObject controlObj  = new BasicDBObject();
				controlObj.append("preparedby:", request.getParameter("Prepared_by"))
				.append("DeptHead", request.getParameter("Dept_Head"))
				.append("QAD",request.getParameter("QAD"));
			
				doc.append("Control&Approval", controlObj);
				SimpleDateFormat sd = new SimpleDateFormat(
			            "MM/dd/YYYY G 'at' HH:mm:ss z");
			        Date date = new Date();
			        sd.setTimeZone(TimeZone.getTimeZone("IST"));
			        
			        
					doc.append("ModifiedDate", sd.format(date));
					doc.append("postedDate", sd.format(date));
					
				coll.save(doc);
				mongoClient.close();
				utilObj.serverMongoClient.close();
				
				response.sendRedirect("viewAllRecord.jsp");
			}
			
		}
	}

}
