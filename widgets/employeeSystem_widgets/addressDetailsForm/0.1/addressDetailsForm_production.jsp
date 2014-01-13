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
<%@page import="tooltwist.employeeSystem.productionHelpers.AddressDetailsFormProductionHelper"%>
<%@page import="tooltwist.misc.JspHelper"%>
<%@page import="tooltwist.ecommerce.AutomaticUrlParametersMode"%>
<%@page import="tooltwist.ecommerce.RoutingUIM"%>
<%
	// Get the production helper for this widget
	AddressDetailsFormProductionHelper h = (AddressDetailsFormProductionHelper) helper;
	XData data = h.getData(jh);
%>

<form method="post" class="form-horizontal well">

<input type="hidden" name="op" value="employeeSystem_widgets.addressDetailsForm.addressDetails" />
<input type="hidden" name="employeeId" value="<%=h.getEmployeeId()%>" />
<input type="hidden" name="addressId" value="<%=h.getAddressId()%>" />

<fieldset>

<!-- Form Name -->
<legend>Edit Address Information</legend>

<!-- Text input-->
<div class="control-group">
  <label class="control-label" for="streetAddress">Street Address:</label>
  <div class="controls">
    <input id="streetAddress" name="streetAddress" type="text"  value="<%=h.getStreetAddress()%>" placeholder="Enter Street Address" class="input-xxlarge" required="">
    
  </div>
</div>

<!-- Text input-->
<div class="control-group">
  <label class="control-label" for="city">City:</label>
  <div class="controls">
    <input id="city" name="city" type="text" value="<%=h.getCity()%>" placeholder="Enter City/Town" class="input-xlarge" required="">
    
  </div>
</div>

<!-- Text input-->
<div class="control-group">
  <label class="control-label" for="Province/State">State:</label>
  <div class="controls">
    <input id="Province/State" name="stateProvince" type="text" value="<%=h.getStateProvince()%>" placeholder="Enter State/Province" class="input-xlarge" required="">
    
  </div>
</div>

<!-- Text input-->
<div class="control-group">
  <label class="control-label" for="zipcode">Zip Code:</label>
  <div class="controls">
    <input id="zipcode" name="zipcode" type="text" value="<%=h.getZipcode()%>" placeholder="Enter Zip Code" class="input-xlarge" required="">
    
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
