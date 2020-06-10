package listener3.servlet.request.listener;

import javax.servlet.ServletRequestEvent;
import javax.servlet.ServletRequestListener;
import javax.servlet.annotation.WebListener;
import javax.swing.JOptionPane;


@WebListener
public class ServletRequestListener1 implements javax.servlet.ServletRequestListener {


    public void requestDestroyed(ServletRequestEvent sre)  { 
         JOptionPane.showMessageDialog(null, "ServletRequestListener1 requestDestroyed (istek silindi)");
    }

    public void requestInitialized(ServletRequestEvent sre)  { 
    	 JOptionPane.showMessageDialog(null, "ServletRequestListener1 requestInitialized (istek oluþturuldu)");
    }
	
}
