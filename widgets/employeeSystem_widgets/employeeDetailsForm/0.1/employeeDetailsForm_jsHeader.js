
var EmployeeDetailsForm = function() {
	return {
		init: function() {
			$( "#birthdate" ).datepicker(
					{	dateFormat: "yy/mm/dd",
						changeMonth: true,
					    changeYear: true
					}
				);
		}
		// no comma after last method
	};
}();

jQuery(EmployeeDetailsForm.init()); // Run after page loads

