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
<%@page import="tooltwist.employeeSystem.productionHelpers.EmployeeDetailsFormProductionHelper"%>
<%@page import="tooltwist.misc.JspHelper"%>
<%@page import="tooltwist.ecommerce.AutomaticUrlParametersMode"%>
<%@page import="tooltwist.ecommerce.RoutingUIM"%>
<%
	// Get the production helper for this widget
	EmployeeDetailsFormProductionHelper h = (EmployeeDetailsFormProductionHelper) helper;
	XData data = h.getData(jh);
%>

<form method="post" class="form-horizontal">
<fieldset>

<!-- Form Name -->
<legend>Edit Employee Details</legend>

<input type="hidden" name="employeeId" value="<%=h.getEmployeeId()%>">
<input type="hidden" name="employeeNumber" value="<%=h.getEmployeeNumber()%>">
<input type="hidden" name="op" value="employeeSystem_widgets.employeeDetailsForm.employeeDetailsFormRequestHandler">

<div class="row">
<div class="span6">

	<% if(h.getEmployeeNumber() != null && !"".equals(h.getEmployeeNumber()) && !"null".equals(h.getEmployeeNumber())) { %>
	<div class="control-group">
	  <label class="control-label" for="employeeNumber">Employee Number:</label>
	  <div class="controls">
	    <%=h.getEmployeeNumber()%>
	  </div>
	</div>
	<% } %>

	<!-- Text input-->
	<div class="control-group">
	  <label class="control-label" for="firstName">First Name:</label>
	  <div class="controls">
	    <input id="firstName" name="firstName" type="text" placeholder="Enter First Name" class="input-large" required="required" value="<%=h.getFirstName()%>">
	  </div>
	</div>
	
	<!-- Text input-->
	<div class="control-group">
	  <label class="control-label" for="middleName">Middle Name:</label>
	  <div class="controls">
	    <input id="middleName" name="middleName" type="text" placeholder="Enter Middle Name" class="input-large" value="<%=h.getMiddleName()%>">
	  </div>
	</div>
	
	<!-- Text input-->
	<div class="control-group">
	  <label class="control-label" for="lastName">Last Name:</label>
	  <div class="controls">
	    <input id="lastName" name="lastName" type="text" placeholder="Enter Last Name" class="input-large" required="required" value="<%=h.getLastName()%>">
	  </div>
	</div>
	
	<!-- Text input-->
	<div class="control-group">
	  <label class="control-label" for="position">Position</label>
	  <div class="controls">
	    <input id="position" name="position" type="text" placeholder="Enter Position" class="input-large" value="<%=h.getPosition()%>">
	  </div>
	</div>
	
	<!-- Text input-->
	<div class="control-group">
	  <label class="control-label" for="birthdate">Birth Date:</label>
	  <div class="controls">
	    <input id="birthdate" name="birthdate" type="text" placeholder="Enter Birth Date (YYYY/MM/DD)" class="input-large" required="required" value="<%=h.getBirthdate()%>">
	  </div>
	</div>
	
	<!-- Multiple Radios (inline) -->
	<div class="control-group">
	  <label class="control-label" for="gender">Gender: </label>
	  <div class="controls">
	    <label class="radio inline" for="gender-0">
	      <% if("Male".equals(h.getGender())) {  %>
	      	<input type="radio" name="gender" id="gender-0" value="Male" checked="checked" required="required">
	      <% } else { %>
	      	<input type="radio" name="gender" id="gender-0" value="Male" required="required">
	      <% } %>
	      Male
	    </label>
	    <label class="radio inline" for="gender-1">
	      <% if("Female".equals(h.getGender())) {  %>
	      	<input type="radio" name="gender" id="gender-1" value="Female" checked="checked" required="required">
	      <% } else { %>
	      	<input type="radio" name="gender" id="gender-1" value="Female" required="required">
	      <% } %>
	      Female
	    </label>
	  </div>
	</div>
	
	<!-- Multiple Radios -->
	<div class="control-group">
	  <label class="control-label" for="status">Civil Status</label>
	  <div class="controls">
	    <label class="radio" for="status-0">
	      <% if("Single".equals(h.getStatus())) {  %>
	      	<input type="radio" name="status" id="status-0" value="Single" checked="checked" required="required">
	      <% } else { %>
	      	<input type="radio" name="status" id="status-0" value="Single" required="required">
	      <% } %>
	      Single
	    </label>
	    <label class="radio" for="status-1">
	      <% if("Married".equals(h.getStatus())) {  %>
	      	<input type="radio" name="status" id="status-1" value="Married" checked="checked" required="required">
	      <% } else { %>
	      	<input type="radio" name="status" id="status-1" value="Married" required="required">
	      <% } %>
	      Married
	    </label>
	    <label class="radio" for="status-2">
	      <% if("Divorced".equals(h.getStatus())) {  %>
	      	<input type="radio" name="status" id="status-2" value="Divorced" checked="checked" required="required">
	      <% } else { %>
	      	<input type="radio" name="status" id="status-2" value="Divorced" required="required">
	      <% } %>
	      Divorced
	    </label>
	    <label class="radio" for="status-3">
	      <% if("Widowed".equals(h.getStatus())) {  %>
	      	<input type="radio" name="status" id="status-3" value="Widowed" checked="checked" required="required">
	      <% } else { %>
	      	<input type="radio" name="status" id="status-3" value="Widowed" required="required">
	      <% } %>
	      Widowed
	    </label>
	  </div>
	</div>
</div>

<div class="span6">
	<!-- Text input-->
	<div class="control-group">
	  <label class="control-label" for="sssId">SSS No.</label>
	  <div class="controls">
	    <input id="sssId" name="sssId" type="text" placeholder="Enter SSS No." class="input-large" value="<%=h.getSssId()%>">
	  </div>
	</div>
	
	<!-- Text input-->
	<div class="control-group">
	  <label class="control-label" for="philhealthId">Phil-Health ID:</label>
	  <div class="controls">
	    <input id="philhealthId" name="philhealthId" type="text" placeholder="Enter Phil-Health ID" class="input-large" value="<%=h.getPhilhealthId()%>">
	  </div>
	</div>
	
	<!-- Text input-->
	<div class="control-group">
	  <label class="control-label" for="hdmfId">Pag-IBIG ID:</label>
	  <div class="controls">
	    <input id="hdmfId" name="hdmfId" type="text" placeholder="Enter Pag-IBIG Number" class="input-large" value="<%=h.getHdmfId()%>">
	  </div>
	</div>
</div>
</div>
<div class="row">
<!-- Button (Double) -->
<div class="control-group">
  <div class="controls">
    <input type="submit" name="submit" class="btn btn-success" value="Submit" />
<!--     <button id="reset" name="reset" class="btn btn-danger">Reset</button> -->
  </div>
</div>
</div>
</fieldset>
</form>

<!--END-->
</body>
</html>
