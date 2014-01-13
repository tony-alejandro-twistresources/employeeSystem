
var ContactDetailsForm = function() {
	return {
		myVariable: null,

		init: function() {
			alert("ContactDetailsForm.init()");

//			// attach an event to an HTML element
//			var self = this;
//			jQuery(".ContactDetailsForm .myElementClass").click(function() {
//				self.myMethod();
//				// do something
//				...
//			});
		},
		
		myMethod: function() {
			alert("ContactDetailsForm.myMethod()");
		}
		// no comma after last method
	};
}();

//jQuery(ContactDetailsForm.init()); // Run after page loads