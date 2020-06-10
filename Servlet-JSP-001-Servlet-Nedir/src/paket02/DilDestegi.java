package paket02;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/Servlet03")
public class DilDestegi extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public DilDestegi() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		//türkçe dil desteði için
		
		
		
		PrintWriter yaz = response.getWriter();
		yaz.append("Güzeller güzeli benim türkçem...");
	}
}
