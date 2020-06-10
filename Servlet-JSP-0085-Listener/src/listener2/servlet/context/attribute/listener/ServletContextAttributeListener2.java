package listener2.servlet.context.attribute.listener;

import javax.servlet.ServletContextAttributeEvent;
import javax.servlet.ServletContextAttributeListener;
import javax.servlet.annotation.WebListener;
import javax.swing.JOptionPane;


@WebListener
public class ServletContextAttributeListener2 implements ServletContextAttributeListener {


    public ServletContextAttributeListener2() {
        // TODO Auto-generated constructor stub
    }


    public void attributeAdded(ServletContextAttributeEvent event)  { 

    	JOptionPane.showMessageDialog(null, "ServletContextAttributeListener2 - attributeAdded (eklendi)");
    }


    public void attributeRemoved(ServletContextAttributeEvent event)  { 

    	JOptionPane.showMessageDialog(null, "ServletContextAttributeListener2 - attributeRemoved (silindi)");
    }


    public void attributeReplaced(ServletContextAttributeEvent event)  { 
         	
    	JOptionPane.showMessageDialog(null, "ServletContextAttributeListener2 - attributeReplaced (deðiþtirildi)");
    }
	
}
