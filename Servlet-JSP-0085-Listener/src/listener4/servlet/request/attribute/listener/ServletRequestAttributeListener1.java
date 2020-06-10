package listener4.servlet.request.attribute.listener;

import javax.servlet.ServletRequestAttributeEvent;
import javax.servlet.ServletRequestAttributeListener;
import javax.servlet.annotation.WebListener;
import javax.swing.JOptionPane;

@WebListener
public class ServletRequestAttributeListener1 implements ServletRequestAttributeListener {


    public void attributeRemoved(ServletRequestAttributeEvent srae)  { 
    	JOptionPane.showMessageDialog(null, "ServletRequestAttributeListener1 attributeRemoved (attribute silindi)");
    }


    public void attributeAdded(ServletRequestAttributeEvent srae)  { 
    	JOptionPane.showMessageDialog(null, "ServletRequestAttributeListener1 attributeAdded (attribute eklendi)");
    }


    public void attributeReplaced(ServletRequestAttributeEvent srae)  { 
    	JOptionPane.showMessageDialog(null, "ServletRequestAttributeListener1 attributeReplaced (attribute deðiþtirildi)");
    }
	
}
