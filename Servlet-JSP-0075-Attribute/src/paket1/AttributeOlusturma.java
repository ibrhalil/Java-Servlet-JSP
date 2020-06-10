package paket1;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/AttributeOlusturma")
public class AttributeOlusturma extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		/*
		 * Attributelar 3 scope sahiptir ;
		 * 
		 * Context
		 * Request
		 * Session
		 * 
		 * 
		 */
		
		//context 
		getServletContext().setAttribute("ayar1", 256);
		getServletContext().setAttribute("ayar2", "324");
		
		
		//session
		HttpSession session = request.getSession();
		session.setAttribute("ayar3", 1599);
		session.setAttribute("ayar4", "0202");
		
		//request
		request.setAttribute("ayar5", 633);
		request.setAttribute("ayar6", "4520");
		//request bu þekilde kullanýlmaz zaten (paket2 ye bak!)
		
		
		
		//baþka bir sayfada attribute okuma yapmak için sayfayý yönlendiriyoruz
		response.sendRedirect("AttributeOkuma");
		
	}

}
