package listener5.http.session.listener;

import javax.servlet.annotation.WebListener;
import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;
import javax.swing.JOptionPane;

/**
 * Application Lifecycle Listener implementation class HttpSessionListener1
 *
 */
@WebListener
public class HttpSessionListener1 implements HttpSessionListener {


    public void sessionCreated(HttpSessionEvent se)  { 
         JOptionPane.showMessageDialog(null, "HttpSessionListener1 - sessionCreated (yeni bir session nesnesi oluþturuldu)");
    }


    public void sessionDestroyed(HttpSessionEvent se)  { 
    	JOptionPane.showMessageDialog(null, "HttpSessionListener1 - sessionDestroyed (session nesnesi silindi)");
    }
	
}
