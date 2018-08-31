
import java.io.IOException;
import java.net.URLEncoder;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.List;
import java.util.TimeZone;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mongodb.BasicDBObject;
import com.mongodb.DB;
import com.mongodb.DBCollection;
import com.mongodb.MongoClient;
import com.mongodb.MongoCredential;
import com.mongodb.ServerAddress;
import com.util.Util;

@WebServlet("/Python")
public class Microbial extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static Util utilObj;
	public Microbial() {
		
		super();

	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.getWriter().append("Served at: ").append(request.getContextPath());

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		try {

/*			MongoCredential credential = MongoCredential.createCredential("exafMicrobial", "MicrobialDB",
					"exafMicrobial123".toCharArray());
			MongoClient mongoClient = new MongoClient(new ServerAddress("localhost", 27212), Arrays.asList(credential));

			DB db = mongoClient.getDB("MicrobialDB");

			DBCollection coll = db.getCollection("microbialColl");
*/
			
			utilObj=new Util();
			MongoClient mongoClient;
			DB db;
			mongoClient=utilObj.getMongoClient();
			db=utilObj.getDb();
			DBCollection coll = utilObj.getMicroCellColl();
			
			BasicDBObject doc = new BasicDBObject("mc", request.getParameter("mc"))
					.append("mc_Date", request.getParameter("Date")).append("barcode", request.getParameter("Barcode").toString().trim())
					.append("passage_No", request.getParameter("passage"))
					.append("nameOfOrganism", request.getParameter("Name_Of_the_Organism"))
					.append("source", request.getParameter("Source"))
					.append("seedUsed_Qty_medium", request.getParameter("Seed_used_qty_medium"))
					.append("mc_card_of_seed", request.getParameter("Mc_card_of_seed"))
					.append("timeOf_settingUp", request.getParameter("Time_of_setting_up"))
					.append("temp_incubation", request.getParameter("Temp_incubation"))
					.append("medium", request.getParameter("Medium"))
					.append("medium_R", request.getParameter("medium_R"))
					.append("other_additives", request.getParameter("other_additives"))
					.append("other_additives_R", request.getParameter("other_additives_R"))
					.append("Alkali", request.getParameter("Alkali"))
					.append("Alkali_R", request.getParameter("Alkali_R")).append("Acid", request.getParameter("Acid"))
					.append("Acid_R", request.getParameter("Acid_R"));

			// glass container starts here

			String outerArraytype = request.getParameter("Type_of_container");
			String outerArraycontainer = request.getParameter("No_Of_container");
			String outerArrayspeed = request.getParameter("Agitation_type_speed");

			BasicDBObject healObject = new BasicDBObject();
			healObject.append("typeof_container", outerArraytype).append("noOf_container", outerArraycontainer)
					.append("agitationTypeAndspeed", outerArrayspeed);

			doc.append("GlassContainer", healObject);

			// BioReactor starts here

			String outerArraysize = request.getParameter("Bioractor_type_size");
			String outerArrayagitation = request.getParameter("Type_Agitation");
			String outerArrayagitationspeed = request.getParameter("Agitation_speed");

			BasicDBObject blowObject = new BasicDBObject();
			blowObject.append("bioractorType_size", outerArraysize)
					.append("type_AgitationOrTiltAngle", outerArrayagitation)
					.append("agitationSpeed", outerArrayagitationspeed);

			doc.append("BioReactor", blowObject);

			// Ph control starts here

			String[] outerArray = request.getParameterValues("ph_attTime");
			String[] outerArray1 = request.getParameterValues("ph");
			String[] outerArray2 = request.getParameterValues("ph_alkali");

			List<BasicDBObject> teach = new ArrayList<BasicDBObject>();

			if(outerArray!=null && outerArray1!=null && outerArray2 !=null)
			{
			int a = outerArray2.length;

			for (int i = 0; i < a; i++) {
				
				if(!outerArray[i].equals("") || !outerArray1[i].equals("") || !outerArray2[i].equals(""))
				{
					BasicDBObject teachObject = new BasicDBObject();
				if (!outerArray[i].equals(""))
					teachObject.append("ph_attTime", outerArray[i]);
				else
					teachObject.append("ph_attTime", "");

				if (!outerArray1[i].equals(""))
					teachObject.append("ph", outerArray1[i]);
				else
					teachObject.append("ph", "");

				if (!outerArray2[i].equals(""))
					teachObject.append("ph_alkali", outerArray2[i]);
				else
					teachObject.append("ph_alkali", "");

				if (!teachObject.isEmpty())
					teach.add(teachObject);
				}

			}
			}
			doc.append("phController", teach);

			doc.append("phValue", request.getParameter("pH_Control"));

			// Do2 starts here

			String[] outerArrayAttime = request.getParameterValues("do2_AtTime");
			String[] outerArrayDO2 = request.getParameterValues("o2");
			String[] outerArrayGas = request.getParameterValues("gasOrAirAddition");

			List<BasicDBObject> reach = new ArrayList<BasicDBObject>();

			if(outerArrayAttime!=null && outerArrayDO2!=null && outerArrayGas !=null)
			{
			int b = outerArrayGas.length;

			for (int i = 0; i < b; i++) {
				

				if(!outerArrayAttime[i].equals("") || !outerArrayDO2[i].equals("") || !outerArrayGas[i].equals(""))
				{
					BasicDBObject reachObject = new BasicDBObject();
				if (!outerArrayAttime[i].equals(""))
					reachObject.append("do2_AtTime", outerArrayAttime[i]);
				else
					reachObject.append("do2_AtTime", "");

				if (!outerArrayDO2[i].equals(""))
					reachObject.append("o2", outerArrayDO2[i]);
				else
					reachObject.append("o2", "");

				if (!outerArrayGas[i].equals(""))
					reachObject.append("gasOrAirAddition", outerArrayGas[i]);
				else
					reachObject.append("gasOrAirAddition", "");

				if (!reachObject.isEmpty())
					reach.add(reachObject);

				}
			}

			}
			doc.append("do2Controller", reach);

			doc.append("do2_value", request.getParameter("do2_value"));

			// Remarks of aeration starts here

			String[] outerArraydate = request.getParameterValues("aeration_Date");
			String[] outerArraytime = request.getParameterValues("aeration_Time");
			String[] outerArrayaddition = request.getParameterValues("aeration_Details");

			List<BasicDBObject> mine = new ArrayList<BasicDBObject>();

			if(outerArraydate!=null && outerArraytime !=null && outerArrayaddition!=null)
			{
			int c = outerArrayaddition.length;

			for (int i = 0; i < c; i++) {
				

				if(!outerArraydate[i].equals("") || !outerArraytime[i].equals("") || !outerArrayaddition[i].equals(""))				{
					BasicDBObject talkObject = new BasicDBObject();
				if (!outerArraydate[i].equals(""))
					talkObject.append("aeration_Date", outerArraydate[i]);
				else
					talkObject.append("aeration_Date", "");

				if (!outerArraytime[i].equals(""))
					talkObject.append("aeration_Time", outerArraytime[i]);
				else
					talkObject.append("aeration_Time", "");

				if (!outerArrayaddition[i].equals(""))
					talkObject.append("aeration_Details", outerArrayaddition[i]);
				else
					talkObject.append("aeration_Details", "");

				if (!talkObject.isEmpty())
					mine.add(talkObject);
				}
				

			}

			}
			doc.append("remarksOnAeration", mine);

			doc.append("doneBy", request.getParameter("Done_by_name"));

			String[] outerArraysample = request.getParameterValues("sampleLabelling_Date");
			String[] outerArraytimesample = request.getParameterValues("sampleLabelling_Time");
			String[] outerArraydetails = request.getParameterValues("sampleLabelling_Details");
			String[] outerArrayqty = request.getParameterValues("sampleLabelling_Qty");

			List<BasicDBObject> which = new ArrayList<BasicDBObject>();

			if(outerArraysample!=null && outerArraytimesample !=null && outerArraydetails!=null && outerArrayqty!=null)
			{
			int d = outerArrayqty.length;

			for (int i = 0; i < d; i++) {
				

				if(!outerArraysample[i].equals("") || !outerArraytimesample[i].equals("") || !outerArraydetails[i].equals("") || !outerArrayqty[i].equals(""))
				{
					BasicDBObject whichObject = new BasicDBObject();
				if (!outerArraysample[i].equals(""))
					whichObject.append("sampleLabelling_Date", outerArraysample[i]);
				else
					whichObject.append("sampleLabelling_Date", "");

				if (!outerArraytimesample[i].equals(""))
					whichObject.append("sampleLabelling_Time", outerArraytimesample[i]);
				else
					whichObject.append("sampleLabelling_Time", "");

				if (!outerArraydetails[i].equals(""))
					whichObject.append("sampleLabelling_Details", outerArraydetails[i]);
				else
					whichObject.append("sampleLabelling_Details", "");

				if (!outerArrayqty[i].equals(""))
					whichObject.append("sampleLabelling_Qty", outerArrayqty[i]);
				else
					whichObject.append("sampleLabelling_Qty", "");

				if (!whichObject.isEmpty())
					which.add(whichObject);

				}
			}
			}
			doc.append("sampleLabelling", which);

			// Qc control starts here

			String[] outerArraymc = request.getParameterValues("QcSample_No");
			String[] outerArraytest = request.getParameterValues("nameOFTest");
			String[] outerArrayref = request.getParameterValues("qcRefNo");
			String[] outerArrayresult = request.getParameterValues("Qc_result");

			List<BasicDBObject> change = new ArrayList<BasicDBObject>();

			if(outerArraymc!=null && outerArraytest !=null && outerArrayref!=null && outerArrayresult !=null)
			{
			int e = outerArrayresult.length;

			for (int i = 0; i < e; i++) {
				if(!outerArraymc[i].equals("") || !outerArraytest[i].equals("") || !outerArrayref[i].equals("") || !outerArrayresult[i].equals(""))
				{
					
				
				BasicDBObject changeObject = new BasicDBObject();
				if (!outerArraymc[i].equals(""))
					changeObject.append("QcSample_No", outerArraymc[i]);
				else
					changeObject.append("QcSample_No", "");

				if (!outerArraytest[i].equals(""))
					changeObject.append("nameOFTest", outerArraytest[i]);
				else
					changeObject.append("nameOFTest", "");

				if (!outerArrayref[i].equals(""))
					changeObject.append("qcRefNo", outerArrayref[i]);
				else
					changeObject.append("qcRefNo", "");

				if (!outerArrayresult[i].equals(""))
					changeObject.append("Qc_result", outerArrayresult[i]);
				else
					changeObject.append("Qc_result", "");

				if (!changeObject.isEmpty())
					change.add(changeObject);

				}
			}

			}
			doc.append("Qc_Controll_Test", change);

			doc.append("generalRemarkOFCulture", request.getParameter("general_remarks_of_culture").toString().trim())
					.append("Details_of_harvesting", request.getParameter("Details_of_harvesting").toString().trim())
					.append("reff_DownStremPrcessing", request.getParameter("reference_of_down_stream_processing").toString().trim())
					.append("done_by_name1", request.getParameter("donebyname1"))

					.append("done_by_name2", request.getParameter("donebyname2"))

					.append("Prepared_by", request.getParameter("Prepared_by"))

					.append("PreparedByDate", request.getParameter("prepared_by_date"))
					.append("deptHead", request.getParameter("Dept_Head"))

					.append("deptHeadDate", request.getParameter("dept_Head_date"))
					.append("qad", request.getParameter("QAD"))

					.append("qadDate", request.getParameter("qad_date"));
					
			 SimpleDateFormat sd = new SimpleDateFormat(
			            "MM/dd/YYYY G 'at' HH:mm:ss z");
			        Date date = new Date();
			        // TODO: Avoid using the abbreviations when fetching time zones.
			        // Use the full Olson zone ID instead.
			        sd.setTimeZone(TimeZone.getTimeZone("IST"));
			        
			        
					doc.append("ModifiedDate", sd.format(date));
					doc.append("postedDate", sd.format(date));

			coll.insert(doc);
			mongoClient.close();
			utilObj.serverMongoClient.close();
			String message = "Record has been saved successfully";
			response.sendRedirect("Microbial.jsp?message=" + URLEncoder.encode(message, "UTF-8"));
			/*response.sendRedirect("Microbial.jsp");*/

		} catch (Exception e) {

		}

	}

}
