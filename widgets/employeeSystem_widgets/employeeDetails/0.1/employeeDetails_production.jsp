<%@page import="com.dinaa.data.XNodes"%>
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
<%@page import="tooltwist.employeeSystem.productionHelpers.EmployeeDetailsProductionHelper"%>
<%@page import="tooltwist.misc.JspHelper"%>
<%@page import="tooltwist.ecommerce.AutomaticUrlParametersMode"%>
<%@page import="tooltwist.ecommerce.RoutingUIM"%>
<%
	// Get the production helper for this widget
	EmployeeDetailsProductionHelper h = (EmployeeDetailsProductionHelper) helper;
	XData data = h.getData(jh);
%>

<form class="form-horizontal">
<a href="%%homePage%%" class="btn">Home</a>
<fieldset>

<!-- Form Name -->
<legend>Edit Employee Details</legend>

<input type="hidden" name="employeeId" value="<%=h.getEmployeeId()%>">

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
	    <%=h.getFirstName()%>
	  </div>
	</div>
	
	<!-- Text input-->
	<div class="control-group">
	  <label class="control-label" for="middleName">Middle Name:</label>
	  <div class="controls">
	    <%=h.getMiddleName()%>
	  </div>
	</div>
	
	<!-- Text input-->
	<div class="control-group">
	  <label class="control-label" for="lastName">Last Name:</label>
	  <div class="controls">
	    <%=h.getLastName()%>
	  </div>
	</div>
	
	<!-- Text input-->
	<div class="control-group">
	  <label class="control-label" for="position">Position:</label>
	  <div class="controls">
	    <%=h.getPosition()%>
	  </div>
	</div>
	
	<!-- Text input-->
	<div class="control-group">
	  <label class="control-label" for="birthdate">Birth Date:</label>
	  <div class="controls">
	    <%=h.getBirthdate()%>
	  </div>
	</div>
	
	<!-- Multiple Radios (inline) -->
	<div class="control-group">
	  <label class="control-label" for="gender">Gender: </label>
	  <div class="controls">
	    <%=h.getGender()%>
	  </div>
	</div>
	
	<!-- Multiple Radios -->
	<div class="control-group">
	  <label class="control-label" for="status">Civil Status:</label>
	  <div class="controls">
	    <%=h.getStatus()%>
	  </div>
	</div>
</div>

<div class="span6">
	<!-- Text input-->
	<div class="control-group">
	  <label class="control-label" for="sssId">SSS No.:</label>
	  <div class="controls">
	    <%=h.getSssId()%>
	  </div>
	</div>
	
	<!-- Text input-->
	<div class="control-group">
	  <label class="control-label" for="philhealthId">Phil-Health ID:</label>
	  <div class="controls">
	    <%=h.getPhilhealthId()%>
	  </div>
	</div>
	
	<!-- Text input-->
	<div class="control-group">
	  <label class="control-label" for="hdmfId">Pag-IBIG ID:</label>
	  <div class="controls">
	    <%=h.getHdmfId()%>
	  </div>
	</div>
</div>
</div>
<div class="row">
<!-- Button (Double) -->
<div class="control-group">
  <div class="controls">
   <a href="%%target%%?employeeId=<%= h.getEmployeeId() %>" class="btn">Edit</a>
<!--     <button id="reset" name="reset" class="btn btn-danger">Reset</button> -->
  </div>
</div>
</div>
</fieldset>
</form>

<!--END-->
</body>
</html>
