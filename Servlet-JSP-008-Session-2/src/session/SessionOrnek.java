package session;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/SessionOrnek")
public class SessionOrnek extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


		PrintWriter yaz = response.getWriter();
		
			HttpSession session = request.getSession(); //true, boþ ile ayný
			
			//HttpSession session = request.getSession(false);	= session id yoksa yeni oluþturma !!	
		
			//session nesnesinin yeni mi olduðunu kontrol eder
			if(session.isNew())
			{
				yaz.println("yeni bir session nesnesi oluþturuldu.");
			}
			else
			{
				yaz.println("bu session (eski) önceden vardý !");
			}
			
			
			
		yaz.close();
	}

}
