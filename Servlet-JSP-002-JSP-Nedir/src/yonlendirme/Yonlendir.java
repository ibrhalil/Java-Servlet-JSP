package yonlendirme;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Yonlendir
 */
@WebServlet({"/yonlendir","/"})
public class Yonlendir extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public Yonlendir() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("Sayfa Yönlendirildi");
		response.sendRedirect("KisiEkle");
		//belirtilen sayfaya yönlendirme gerçekleþtirildi.
	}

}
