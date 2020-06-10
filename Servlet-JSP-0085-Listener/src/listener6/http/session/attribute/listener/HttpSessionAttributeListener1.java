package listener6.http.session.attribute.listener;

import javax.servlet.annotation.WebListener;
import javax.servlet.http.HttpSessionAttributeListener;
import javax.servlet.http.HttpSessionBindingEvent;
import javax.swing.JOptionPane;

@WebListener
public class HttpSessionAttributeListener1 implements HttpSessionAttributeListener{

	@Override
	public void attributeAdded(HttpSessionBindingEvent event) {
		JOptionPane.showMessageDialog(null, "HttpSessionAttributeListener1 - attributeAdded (session nesnesine yeni bir attribute eklendi)");
	}
	
	@Override
	public void attributeReplaced(HttpSessionBindingEvent event) {
		JOptionPane.showMessageDialog(null, "HttpSessionAttributeListener1 - attributeReplaced (session nesnesindeki bir attribute deðiþtirildi)");
	}
	
	@Override
	public void attributeRemoved(HttpSessionBindingEvent event) {
		JOptionPane.showMessageDialog(null, "HttpSessionAttributeListener1 - attributeRemoved (session nesnesindeki bir attribute silindi)");
	}
	
}
