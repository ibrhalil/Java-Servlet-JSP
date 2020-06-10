package paket2;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/RequestMetotlar")
public class RequestMetotlar extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		//metotlar
		String serverName = request.getServerName();
		String hostHeaderInfo = request.getHeader("host");
		int serverPort = request.getServerPort();
		int localPort = request.getLocalPort();
		int remotePort = request.getRemotePort();
		String motot = request.getMethod();
		String contextPath = request.getContextPath();
		Enumeration<String> headerNames = request.getHeaderNames();
		
		
		

		PrintWriter yaz = response.getWriter();
		yaz.write("<html><body>");
		
		yaz.write("<b>serverName : </b>"+serverName+"<br>");
		yaz.write("<b>hostHeaderInfo : </b>"+hostHeaderInfo+"<br>");
		yaz.write("<b>serverPort : </b>"+serverPort+"<br>");
		yaz.write("<b>localPort : </b>"+localPort+"<br>");
		yaz.write("<b>remotePort : </b>"+remotePort+"<br>");
		yaz.write("<b>motot : </b>"+motot+"<br>");
		yaz.write("<b>contextPath : </b>"+contextPath+"<br>");
		yaz.write("<hr>");
		
		while (headerNames.hasMoreElements()) {
			String hederItem = (String) headerNames.nextElement();
			yaz.write("<b>hederItem : </b>"+hederItem+" <mark> <b> headerInfo : </b>"+request.getHeader(hederItem)+"</mark><br>");
		}
		
		yaz.write("</body></html>");
		yaz.close();
	}

}
