package tooltwist.employeeSystem.productionHelpers;

import java.util.Properties;

import javax.servlet.http.HttpServletRequest;

import tooltwist.misc.JspHelper;
import tooltwist.wbd.WbdProductionHelper;

import com.dinaa.data.XData;
import com.dinaa.ui.UimData;
import com.dinaa.xpc.Xpc;

public class ContactDetailsFormProductionHelper extends WbdProductionHelper {

	private String contactId;
	private String employeeId;
	private String contactType;
	private String contactDetails;
	
	public ContactDetailsFormProductionHelper(Properties prop) {
		super(prop);
	}

	@Override
	public XData preFetch(UimData ud) throws Exception {
		final HttpServletRequest request = ((JspHelper) ud).getRequest();
		String employeeId = request.getParameter("employeeId");
		String contactId = request.getParameter("contactId");

		Xpc xpc = ud.getXpc();
		xpc.start("phinza.D.employeeContactInfo", "select");
		xpc.attrib("contactId", contactId);
		XData data = xpc.run();

		if ("select".equals(data.getRootType())) {
			setEmployeeId(data.getText("/select/employeeContactInfo/employeeId"));
			setContactId(data.getText("/select/employeeContactInfo/contactId"));
			setContactType(data.getText("/select/employeeContactInfo/contactType"));
			setContactDetails(data.getText("/select/employeeContactInfo/contactDetails"));
		} else {
			setEmployeeId(employeeId);
			setContactId("");
			setContactType("");
			setContactDetails("");
		}
		return null;
	}

	public String getContactId() {
		return contactId;
	}

	public void setContactId(String contactId) {
		this.contactId = contactId;
	}

	public String getEmployeeId() {
		return employeeId;
	}

	public void setEmployeeId(String employeeId) {
		this.employeeId = employeeId;
	}

	public String getContactType() {
		return contactType;
	}

	public void setContactType(String contactType) {
		this.contactType = contactType;
	}

	public String getContactDetails() {
		return contactDetails;
	}

	public void setContactDetails(String contactDetails) {
		this.contactDetails = contactDetails;
	}
	
	

}
