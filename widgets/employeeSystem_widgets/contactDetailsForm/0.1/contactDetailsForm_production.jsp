<html>
<head>
<title></title>
</head>
<body>
<%
	WbdProductionHelper helper = null;
	JspHelper jh = null;
	String snippetVar_myProperty;
	String snippetVar_thisNavpoint;
%>
<!--START-->
<%@page import="tooltwist.wbd.WbdProductionHelper"%>
<%@page import="com.dinaa.data.XData"%>
<%@page import="tooltwist.employeeSystem.productionHelpers.ContactDetailsFormProductionHelper"%>
<%@page import="tooltwist.misc.JspHelper"%>
<%@page import="tooltwist.ecommerce.AutomaticUrlParametersMode"%>
<%@page import="tooltwist.ecommerce.RoutingUIM"%>
<%
	// Get the production helper for this widget
	ContactDetailsFormProductionHelper h = (ContactDetailsFormProductionHelper) helper;
	XData data = h.getData(jh);
%>

<form method="post" class="form-horizontal well">

<input type="hidden" name="op" value="employeeSystem_widgets.contactDetailsForm.contactDetailsForm" />
<input type="hidden" name="employeeId" value="<%=h.getEmployeeId()%>" />
<input type="hidden" name="contactId" value="<%=h.getContactId()%>" />

<fieldset>

<!-- Form Name -->
<legend>Edit Contact Details</legend>

<!-- Text input-->
<div class="control-group">
  <label class="control-label" for="contactType">Type:</label>
  <div class="controls">
    <input id="contactType" name="contactType" type="text"  value="<%=h.getContactType()%>" placeholder="Enter Contact Information Type" class="input-large" required="">
  </div>
</div>

<!-- Text input-->
<div class="control-group">
  <label class="control-label" for="contactDetails">Details:</label>
  <div class="controls">
    <input id="contactDetails" name="contactDetails" type="text" value="<%=h.getContactDetails()%>" placeholder="Enter Contact Information Details" class="input-large" required="">
    
  </div>
</div>

<!-- Button (Double) -->
<div class="control-group">
  <div class="controls">
    <input type="submit" name="submit" class="btn btn-success" value="Submit" />
    <a href="%%parent%%?employeeId=<%= h.getEmployeeId() %>" class="btn btn-danger">Cancel</a>
  </div>
</div>

</fieldset>
</form>

<!--END-->
</body>
</html>
