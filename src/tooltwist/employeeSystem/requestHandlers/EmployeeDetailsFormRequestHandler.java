package tooltwist.employeeSystem.requestHandlers;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Random;

import javax.servlet.ServletException;

import tooltwist.ecommerce.RoutingUIM;
import tooltwist.wbd.WbdRequestHandler;

import com.dinaa.ui.UiModule;
import com.dinaa.ui.UiModuleException;
import com.dinaa.ui.UimHelper;
import com.dinaa.xpc.Xpc;

/**
 * Request handler "employeeDetailsFormRequestHandler" - Insert or update
 * Employee Details
 * 
 * This handler can be called from a client browser before control is passed to
 * a normal navpoint. To call it, add this parameter to a normal ToolTwist URL:
 * 
 * op=employeeSystem_widgets.employeeDetailsForm.
 * employeeDetailsFormRequestHandler
 * 
 * After this method is called, the requested navpoint will be displayed in the
 * usual manner. To pass control to a different navpoint, use
 * RoutingUIM.gotoNavpoint(), and then return true.
 * 
 * @author ?
 */
public class EmployeeDetailsFormRequestHandler extends WbdRequestHandler {

	@Override
	public boolean handler(UimHelper uh, String widgetId, String method) throws UiModuleException, ServletException, IOException {

		String employeeId = uh.getRequestValue("employeeId");
		String employeeNumber = uh.getRequestValue("employeeNumber");
		String firstName = uh.getRequestValue("firstName");
		String lastName = uh.getRequestValue("lastName");
		String middleName = uh.getRequestValue("middleName");
		String position = uh.getRequestValue("position");
		String birthdate = uh.getRequestValue("birthdate");
		String gender = uh.getRequestValue("gender");
		String status = uh.getRequestValue("status");
		String sssId = uh.getRequestValue("sssId");
		String philhealthId = uh.getRequestValue("philhealthId");
		String hdmfId = uh.getRequestValue("hdmfId");

		try {
			Xpc xpc = uh.getXpc();
			if (isEmpty(employeeId) || isEmpty(employeeNumber)) {
				employeeNumber = generateEmployeeNumber(firstName, lastName);
				xpc.start("phinza.D.employee", "insert");
				xpc.attrib("employeeNumber", employeeNumber);
				xpc.attrib("firstName", firstName);
				xpc.attrib("lastName", lastName);
				xpc.attrib("middleName", middleName);
				xpc.attrib("position", position);
				xpc.attrib("birthdate", birthdate);
				xpc.attrib("gender", gender);
				xpc.attrib("status", status);
				xpc.attrib("sssId", sssId);
				xpc.attrib("philhealthId", philhealthId);
				xpc.attrib("hdmfId", hdmfId);
			} else {
				xpc.start("phinza.D.employee", "update");
				xpc.attrib("employeeId", employeeId);
				xpc.attrib("firstName", firstName);
				xpc.attrib("lastName", lastName);
				xpc.attrib("middleName", middleName);
				xpc.attrib("position", position);
				xpc.attrib("birthdate", birthdate);
				xpc.attrib("gender", gender);
				xpc.attrib("status", status);
				xpc.attrib("sssId", sssId);
				xpc.attrib("philhealthId", philhealthId);
				xpc.attrib("hdmfId", hdmfId);

			}
			xpc.run();
		} catch (Exception e) {
			e.printStackTrace();
		}
		UiModule uim = uh.getUim();
//		String alternateNavpoint = "[[string-projectShortName]]-home";
//		RoutingUIM.gotoNavpoint(uh, alternateNavpoint);

		return false;
	}

	private String generateEmployeeNumber(String firstName, String lastName) {
		Calendar calendar = Calendar.getInstance();
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyMMdd");
		return String.format("%s%s%s", dateFormat.format(calendar.getTime()), firstName.charAt(firstName.length()-1), new Random().nextInt(99));
	}

	private boolean isEmpty(String value) {
		return (value == null || "null".equals(value) || "".equals(value.trim()));
	}

}
