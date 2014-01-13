package tooltwist.employeeSystem.requestHandlers;

import java.io.IOException;

import javax.servlet.ServletException;

import tooltwist.wbd.WbdRequestHandler;

import com.dinaa.ui.UiModuleException;
import com.dinaa.ui.UimHelper;
import com.dinaa.xpc.Xpc;

/**
 * Request handler "addressDetails" - Address Details Maintenance
 * 
 * This handler can be called from a client browser before control is passed to a normal
 * navpoint. To call it, add this parameter to a normal ToolTwist URL:
 * 
 *         op=employeeSystem_widgets.addressDetailsForm.addressDetails
 * 
 * After this method is called, the requested navpoint will be displayed in the usual
 * manner. To pass control to a different navpoint, use RoutingUIM.gotoNavpoint(), and
 * then return true.
 *
 * @author ?
 */
public class AddressDetailsRequestHandler extends WbdRequestHandler
{

	@Override
	public boolean handler(UimHelper uh, String widgetId, String method) throws UiModuleException, ServletException, IOException
	{
		
		String employeeId = uh.getRequestValue("employeeId");
		String addressId = uh.getRequestValue("addressId");
		String streetAddress = uh.getRequestValue("streetAddress");
		String city = uh.getRequestValue("city");
		String stateProvince = uh.getRequestValue("stateProvince");
		String zipcode = uh.getRequestValue("zipcode");
		try {
			Xpc xpc = uh.getXpc();
			if (isEmpty(addressId)) {
				xpc.start("phinza.D.employeeAddress", "insert");
				xpc.attrib("employeeId", employeeId);
				xpc.attrib("streetAddress", streetAddress);
				xpc.attrib("city", city);
				xpc.attrib("stateProvince", stateProvince);
				xpc.attrib("zipcode", zipcode);
			} else {
				xpc.start("phinza.D.employeeAddress", "update");
				xpc.attrib("addressId", addressId);
				xpc.attrib("employeeId", employeeId);
				xpc.attrib("streetAddress", streetAddress);
				xpc.attrib("city", city);
				xpc.attrib("stateProvince", stateProvince);
				xpc.attrib("zipcode", zipcode);

			}
			xpc.run();
		} catch (Exception e) {
			e.printStackTrace();
		}
//		UiModule uim = uh.getUim();
//		String alternateNavpoint = "[[string-projectShortName]]-home";
//		RoutingUIM.gotoNavpoint(uh, alternateNavpoint);

		return false;
	}
	
	private boolean isEmpty(String value) {
		return (value == null || "null".equals(value) || "".equals(value.trim()));
	}

}
