package listener2.servlet.context.attribute.listener;

import javax.servlet.ServletContextAttributeEvent;
import javax.servlet.ServletContextAttributeListener;
import javax.swing.JOptionPane;

//web.xml
public class ServletContextAttributeListener1 implements ServletContextAttributeListener{

	@Override
	public void attributeAdded(ServletContextAttributeEvent event) {
		
		//JOptionPane.showMessageDialog(null, "ServletContextAttributeListener1 - attributeAdded");
	}
	
	@Override
	public void attributeReplaced(ServletContextAttributeEvent event) {
		
		//JOptionPane.showMessageDialog(null, "ServletContextAttributeListener1 - attributeReplaced");
	}
	
	@Override
	public void attributeRemoved(ServletContextAttributeEvent event) {

		//JOptionPane.showMessageDialog(null, "ServletContextAttributeListener1 - attributeRemoved");
	}
}
