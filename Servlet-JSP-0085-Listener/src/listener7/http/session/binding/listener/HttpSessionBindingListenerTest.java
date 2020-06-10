package listener7.http.session.binding.listener;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/HttpSessionBindingListenerTest")
public class HttpSessionBindingListenerTest extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		HttpSessionBindingListener1 hsbl = new HttpSessionBindingListener1();

		HttpSession session = request.getSession();
		
		session.setAttribute("binding", hsbl);
		session.removeAttribute("binding");
	}

}
