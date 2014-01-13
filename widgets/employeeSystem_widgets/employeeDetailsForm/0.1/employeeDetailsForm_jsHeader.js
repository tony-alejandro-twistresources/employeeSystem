
var EmployeeDetailsForm = function() {
	return {
		myVariable: null,

		init: function() {
			alert("EmployeeDetailsForm.init()");

//			// attach an event to an HTML element
//			var self = this;
//			jQuery(".EmployeeDetailsForm .myElementClass").click(function() {
//				self.myMethod();
//				// do something
//				...
//			});
		},
		
		myMethod: function() {
			alert("EmployeeDetailsForm.myMethod()");
		}
		// no comma after last method
	};
}();

//jQuery(EmployeeDetailsForm.init()); // Run after page loads