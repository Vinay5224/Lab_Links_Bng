import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.io.InputStream;
import java.net.URL;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;

/**
 * Servlet implementation class PasswordValidation
 */
@WebServlet("/PasswordValidation")
public class PasswordValidation extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
    public PasswordValidation() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		System.out.println("Password get");
		String pass=request.getParameter("password");
		String currPass="microbial@123";
		if(pass.equals(currPass))
		{
			response.getWriter().write("true");
		}
		else
		{
			response.getWriter().write("false");
		}
		 
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		doGet(request, response);
	}

}
