package rewriting;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Rewriting
 */
@WebServlet("/Rewriting")
public class Rewriting extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Rewriting() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		/*
		 * Session bilgisi cookie nesnesi olarak tutulduðu için ;
		 * çerezleri engelleyen bir kiþi için session nesnesi tam anlamýyla çalýþmaz
		 */
		
		HttpSession session = request.getSession();
		
		response.getWriter().println(session.getAttribute("name"));
		response.getWriter().println("Session Id : "+session.getId());
	}

}
