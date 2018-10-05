
function capitalize(str) {
	if (str && str.length >= 1) {
		var firstChar = str.charAt(0);
		var remainingStr = str.slice(1);
		str = firstChar.toUpperCase() + remainingStr;
	}
	return str;
}

function validate_email(email_id) {
	var pattern = new RegExp(/^([a-zA-Z]+[\w-\.]+@([\w-]+\.)+[\w-]{2,4})?$/);
	return pattern.test(email_id);
}

function validate_phone(phone) {
	var ph_pattern = new RegExp(/^([6-9]+[\d]{9})?$/);
	return ph_pattern.test(phone);
}

$(document).ready(function () {
	var date_input = $('input[name="date"]'); //our date input has the name "date"
	var container = $('.bootstrap-iso form').length > 0 ? $('.bootstrap-iso form').parent() : "body";
	date_input.datepicker({
		format: 'mm/dd/yyyy',
		container: container,
		todayHighlight: true,
		autoclose: true,
		endDate: '0d'
	})
	$('#fname').on('keyup', function () {
		var fName = $('#fname');
		fName.val(capitalize(fName.val().trim()));
	});

	$('#lname').on('keyup', function () {
		var lName = $('#lname');
		lName.val(capitalize(lName.val().trim()));
	});

	$('#fname').on('blur', function () {
		var fName = $('#fname').val();
		if (!fName.trim()) {
			$('#first_name').text("Please enter the first name");
		}
		else {
			$('#first_name').text("");
		}
	});

	$('#lname').on('blur', function () {
		var lName = $('#lname').val();
		if (!lName.trim()) {
			$('#last_name').text("Please enter the last name");
		}
		else {
			$('#last_name').text("");
		}
	});


	$('#email').on('blur', function () {
		var email = $('#email').val();
		if (!email.trim()) {
			$('#e_mail').text("Please enter the e-mail");
		}
		else {
			$('#e_mail').text("");
		}
	});

	$('#date').on('blur', function () {
		var dob = $('#date').val();
		if (!dob.trim()) {
			$('#date_of_birth').text("Please enter the e-mail");
		}
		else {
			$('#date_of_birth').text("");
		}
	});

	$('#phone').on('blur', function () {
		var phone = $('#phone').val();
		if (!phone.trim()) {
			$('#phone_number').text("Please enter the phone number");
		}
		else {
			$('#phone_number').text("");
		}
	});


	$('#submitBtn').on('click', function () {
		$('#first_name').text("");
		$('#last_name').text("");
		$('#e_mail').text("");
		$('#date_of_birth').text("");
		$('#phone_number').text("");
		var fName = $("#fname").val();
		var lName = $("#lname").val();
		var email = $("#email").val();
		var dob = $("#date").val();
		var phone = $("#phone").val();
		if (!fName.trim() || !lName.trim() || !email.trim() || !dob.trim() || !phone.trim() || !validate_email(email) || !validate_phone(phone)) {
			if (!fName.trim()) {
				$('#first_name').text("Please enter the first name");
			}

			if (!lName.trim()) {
				$('#last_name').text("Please enter the last name");
			}
			if (!email.trim()) {
				$('#e_mail').text("Please enter the e-mail");
			}
			else {
				if (!validate_email(email)) {
					$('#e_mail').text("Please enter valid e-mail");
				}
			}
			if (!dob.trim()) {
				$('#date_of_birth').text("Please enter the date of birth");
			}
			if (!phone) {
				$('#phone_number').text("Please enter the phone number");
			}
			else {
				if (!validate_phone(phone)) {
					$('#phone_number').text("Please enter valid phone number");
				}
			}
		}
		else {
			var table = $("#contact_info tr:last").after("<tr><td>" + fName + "</td><td>" + lName + "</td><td>" + email + "</td><td>" + dob + "</td><td>" + phone + "</td></tr>");
			$("#contact_form").get(0).reset();
			$('#first_name').text("");
			$('#last_name').text("");
			$('#e_mail').text("");
			$('#date_of_birth').text("");
			$('#phone_number').text("");
		}

	});

});

