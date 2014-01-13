package tooltwist.employeeSystem.productionHelpers;

import java.util.Properties;

import javax.servlet.http.HttpServletRequest;

import tooltwist.misc.JspHelper;
import tooltwist.wbd.WbdProductionHelper;

import com.dinaa.data.XData;
import com.dinaa.ui.UimData;
import com.dinaa.xpc.Xpc;


public class EmployeeDetailsFormProductionHelper extends WbdProductionHelper {
	private String employeeId;
	private String employeeNumber;
	private String firstName;
	private String middleName;
	private String lastName;
	private String gender;
	private String status;
	private String birthdate;
	private String position;
	private String sssId;
	private String philhealthId;
	private String hdmfId;

	public EmployeeDetailsFormProductionHelper(Properties prop) {
		super(prop);
	}

	@Override
	public XData preFetch(UimData ud) throws Exception {

		final HttpServletRequest request = ((JspHelper) ud).getRequest();
		String employeeId = request.getParameter("employeeId");

		Xpc xpc = ud.getXpc();
		xpc.start("phinza.D.employee", "select");
		xpc.attrib("employeeId", employeeId);
		XData data = xpc.run();

		if ("select".equals(data.getRootType())) {
			setEmployeeId(data.getText("/select/employee/employeeId"));
			setEmployeeNumber(data.getText("/select/employee/employeeNumber"));
			setFirstName(data.getText("/select/employee/firstName"));
			setMiddleName(data.getText("/select/employee/middleName"));
			setLastName(data.getText("/select/employee/lastName"));
			setPosition(data.getText("/select/employee/position"));
			setBirthdate(data.getText("/select/employee/birthdate"));
			setGender(data.getText("/select/employee/gender"));
			setStatus(data.getText("/select/employee/status"));
			setSssId(data.getText("/select/employee/sssId"));
			setPhilhealthId(data.getText("/select/employee/philhealthId"));
			setHdmfId(data.getText("/select/employee/hdmfId"));
		} else {
			setEmployeeId("");
			setEmployeeNumber("");
			setFirstName("");
			setMiddleName("");
			setLastName("");
			setPosition("");
			setBirthdate("");
			setGender("M");
			setStatus("S");
			setSssId("");
			setPhilhealthId("");
			setHdmfId("");
		}

		return null;
	}

	public String getEmployeeId() {
		return employeeId;
	}

	public void setEmployeeId(String employeeId) {
		this.employeeId = employeeId;
	}

	public String getEmployeeNumber() {
		return employeeNumber;
	}

	public void setEmployeeNumber(String employeeNumber) {
		this.employeeNumber = employeeNumber;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getMiddleName() {
		return middleName;
	}

	public void setMiddleName(String middleName) {
		this.middleName = middleName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getBirthdate() {
		return birthdate;
	}

	public void setBirthdate(String birthdate) {
		this.birthdate = birthdate;
	}

	public String getPosition() {
		return position;
	}

	public void setPosition(String position) {
		this.position = position;
	}

	public String getSssId() {
		return sssId;
	}

	public void setSssId(String sssId) {
		this.sssId = sssId;
	}

	public String getPhilhealthId() {
		return philhealthId;
	}

	public void setPhilhealthId(String philhealthId) {
		this.philhealthId = philhealthId;
	}

	public String getHdmfId() {
		return hdmfId;
	}

	public void setHdmfId(String hdmfId) {
		this.hdmfId = hdmfId;
	}

}
