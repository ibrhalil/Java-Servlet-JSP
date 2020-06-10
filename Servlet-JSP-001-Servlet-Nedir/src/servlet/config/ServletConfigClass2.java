package servlet.config;

import java.io.IOException;
import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebInitParam;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;




@WebServlet(urlPatterns ="/ServletConfigClass2",  initParams = {@WebInitParam(name = "isim",value = "deger"),@WebInitParam(name = "veriTabani",value = "kullanici=admin&sifre=1234")})
public class ServletConfigClass2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append(getServletConfig().getInitParameter("isim"));
		response.getWriter().append(getServletConfig().getInitParameter("veriTabani"));
		
		//veya
		
		Enumeration<String> initParametreListe = getServletConfig().getInitParameterNames();
		
		while (initParametreListe.hasMoreElements()) {
			//response.getWriter().write(initParametreListe.nextElement());
			response.getWriter().write(getServletConfig().getInitParameter(initParametreListe.nextElement()));
		}
	}

}
