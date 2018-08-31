package labs;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLEncoder;

public class Cors {

	 
	public static String getForecastResult(String msg) throws Exception {

		System.out.println("MSG-"+msg);
		try {

			//  msg="\""+msg+"\"";
			
			URL url = new URL("http://52.38.31.24:8001/msg?msg="+msg);
			System.out.println("url"+url);
			 


			HttpURLConnection conn = (HttpURLConnection) url.openConnection();
			conn.setRequestMethod("GET");
			conn.setRequestProperty("Accept", "application/json");

			if (conn.getResponseCode() != 200) {
				throw new RuntimeException("Failed : HTTP error code : "
						+ conn.getResponseCode());
			}

			BufferedReader br = new BufferedReader(new InputStreamReader(
					(conn.getInputStream())));


			String output="";
			while ((output = br.readLine()) != null) {


				System.out.println("output "+output);
				msg=output;

			}
			System.out.println(msg);
			//	msg=	msg.replace("\"", "")+","+pilgrimGraphValue.replace("\"", "");



			conn.disconnect(); 

		} catch (MalformedURLException e) {

			e.printStackTrace();

		} catch (IOException e) {

			e.printStackTrace();

		}

		return msg;
	}

///second class
	public static String getForecastResultClassi(String msg) throws Exception {

		System.out.println("MSG-"+msg);
		try {

			//  msg="\""+msg+"\"";
			
			URL url = new URL("http://52.38.31.24:8001/cla?cla="+URLEncoder.encode(msg, "UTF-8"));
			System.out.println("url"+url);
			 


			HttpURLConnection conn = (HttpURLConnection) url.openConnection();
			conn.setRequestMethod("GET");
			conn.setRequestProperty("Accept", "application/json");

			if (conn.getResponseCode() != 200) {
				throw new RuntimeException("Failed : HTTP error code : "
						+ conn.getResponseCode());
			}

			BufferedReader br = new BufferedReader(new InputStreamReader(
					(conn.getInputStream())));


			String output="";
			while ((output = br.readLine()) != null) {


				System.out.println("output "+output);
				msg=output;

			}
			System.out.println(msg);
			//	msg=	msg.replace("\"", "")+","+pilgrimGraphValue.replace("\"", "");



			conn.disconnect(); 

		} catch (MalformedURLException e) {

			e.printStackTrace();

		} catch (IOException e) {

			e.printStackTrace();

		}

		return msg;
		 
	}



}
