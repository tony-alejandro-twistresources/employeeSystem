package tooltwist.employeeSystem.requestHandlers;

import java.io.IOException;
import javax.servlet.ServletException;
import com.dinaa.ui.UiModuleException;
import com.dinaa.ui.UimHelper;
import com.dinaa.xpc.Xpc;

import tooltwist.wbd.WbdRequestHandler;

/**
 * Request handler "contactDetailsForm" - Contact Details Form Maintenance
 * 
 * This handler can be called from a client browser before control is passed to a normal
 * navpoint. To call it, add this parameter to a normal ToolTwist URL:
 * 
 *         op=employeeSystem_widgets.contactDetailsForm.contactDetailsForm
 * 
 * After this method is called, the requested navpoint will be displayed in the usual
 * manner. To pass control to a different navpoint, use RoutingUIM.gotoNavpoint(), and
 * then return true.
 *
 * @author ?
 */
public class ContactDetailsFormRequestHandler extends WbdRequestHandler
{

	@Override
	public boolean handler(UimHelper uh, String widgetId, String method) throws UiModuleException, ServletException, IOException
	{
		String employeeId = uh.getRequestValue("employeeId");
		String contactId = uh.getRequestValue("contactId");
		String contactType = uh.getRequestValue("contactType");
		String contactDetails = uh.getRequestValue("contactDetails");
		try {
			Xpc xpc = uh.getXpc();
			if (isEmpty(contactId)) {
				xpc.start("phinza.D.employeeContactInfo", "insert");
				xpc.attrib("employeeId", employeeId);
				xpc.attrib("contactType", contactType);
				xpc.attrib("contactDetails", contactDetails);
			} else {
				xpc.start("phinza.D.employeeContactInfo", "update");
				xpc.attrib("contactId", contactId);
				xpc.attrib("employeeId", employeeId);
				xpc.attrib("contactType", contactType);
				xpc.attrib("contactDetails", contactDetails);
			}
			xpc.run();
		} catch (Exception e) {
			e.printStackTrace();
		}

		return false;
	}
	
	private boolean isEmpty(String value) {
		return (value == null || "null".equals(value) || "".equals(value.trim()));
	}

}
