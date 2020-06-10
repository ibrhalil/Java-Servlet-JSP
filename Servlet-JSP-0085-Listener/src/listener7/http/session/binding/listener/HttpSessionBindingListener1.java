package listener7.http.session.binding.listener;

import javax.servlet.annotation.WebListener;
import javax.servlet.http.HttpSessionBindingEvent;
import javax.servlet.http.HttpSessionBindingListener;
import javax.swing.JOptionPane;


@WebListener
public class HttpSessionBindingListener1 implements HttpSessionBindingListener {


    public void valueBound(HttpSessionBindingEvent event)  { 
         JOptionPane.showMessageDialog(null, "HttpSessionBindingListener1 - valueBound");
    }

    public void valueUnbound(HttpSessionBindingEvent event)  { 
    	JOptionPane.showMessageDialog(null, "HttpSessionBindingListener1 - valueUnbound");
    }
	
}
