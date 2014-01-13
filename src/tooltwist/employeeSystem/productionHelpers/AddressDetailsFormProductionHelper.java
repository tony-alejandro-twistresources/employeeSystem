package tooltwist.employeeSystem.productionHelpers;

import java.util.Properties;

import javax.servlet.http.HttpServletRequest;

import tooltwist.misc.JspHelper;
import tooltwist.wbd.WbdProductionHelper;

import com.dinaa.data.XData;
import com.dinaa.ui.UimData;
import com.dinaa.xpc.Xpc;
//import org.apache.commons.httpclient.HttpClient;
//import org.apache.commons.httpclient.HttpStatus;
//import org.apache.commons.httpclient.methods.PostMethod;

public class AddressDetailsFormProductionHelper extends WbdProductionHelper {
	private String addressId;
	private String employeeId;
	private String streetAddress;
	private String city;
	private String stateProvince;
	private String zipcode;

	public AddressDetailsFormProductionHelper(Properties prop) {
		super(prop);
	}

	@Override
	public XData preFetch(UimData ud) throws Exception {
		final HttpServletRequest request = ((JspHelper) ud).getRequest();
		String employeeId = request.getParameter("employeeId");
		String addressId = request.getParameter("addressId");

		Xpc xpc = ud.getXpc();
		xpc.start("phinza.D.employeeAddress", "select");
		xpc.attrib("addressId", addressId);
		XData data = xpc.run();

		if ("select".equals(data.getRootType())) {
			setEmployeeId(data.getText("/select/employeeAddress/employeeId"));
			setAddressId(data.getText("/select/employeeAddress/addressId"));
			setStreetAddress(data.getText("/select/employeeAddress/streetAddress"));
			setCity(data.getText("/select/employeeAddress/city"));
			setStateProvince(data.getText("/select/employeeAddress/stateProvince"));
			setZipcode(data.getText("/select/employeeAddress/zipcode"));
		} else {
			setEmployeeId(employeeId);
			setAddressId("");
			setStreetAddress("");
			setCity("");
			setStateProvince("");
			setZipcode("");
		}

		return null;
	}

	public String getAddressId() {
		return addressId;
	}

	public void setAddressId(String addressId) {
		this.addressId = addressId;
	}

	public String getEmployeeId() {
		return employeeId;
	}

	public void setEmployeeId(String employeeId) {
		this.employeeId = employeeId;
	}

	public String getStreetAddress() {
		return streetAddress;
	}

	public void setStreetAddress(String streetAddress) {
		this.streetAddress = streetAddress;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getStateProvince() {
		return stateProvince;
	}

	public void setStateProvince(String stateProvince) {
		this.stateProvince = stateProvince;
	}

	public String getZipcode() {
		return zipcode;
	}

	public void setZipcode(String zipcode) {
		this.zipcode = zipcode;
	}

}
