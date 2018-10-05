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



    $('#submitBtn').on('click', function () {
            $('#fn').text("");
            $('#ln').text("");
            $('#em').text("");
            $('#dm').text("");
            $('#pn').text("");

            var fName = $("#fname").val();
            var lName = $("#lname").val();
            var email = $("#email").val();
            var dob = $("#date").val();
            var phone = $("#phone").val();
            if (!fName.trim() || !lName.trim() || !email.trim() || !dob.trim() || !phone.trim() || !validate_email(email) || !validate_phone(phone)) {
                if (!fName.trim()) {
                    $('#fn').text("Please enter the First name").parent().show();;

                }

                if (!lName.trim()) {
                    $('#ln').text("Please enter the Last name");
                }
                if (!email.trim()) {
                    $('#em').text("Please enter the e-mail");
                }
                else {
                    if (!validate_email(email)) {
                        $('#em').text("Please enter valid Email");
                    }
                }
                if (!dob.trim()) {
                    $('#dm').text("Please enter the Date Of Birth");
                }
                if (!phone) {
                    $('#pn').text("Please enter the Phone Number");
                }
                else {
                    if (!validate_phone(phone)) {
                        $('#pn').text("Please enter valid Phone Number");
                    }

                }
            }
            else {
                var table = $("#contact_info tr:last").after("<tr><td>" + fName + "</td><td>" + lName + "</td><td>" + email + "</td><td>" + dob + "</td><td>" + phone + "</td></tr>");
                $("#contact_form").get(0).reset();
                $('#fn').text("");
                $('#ln').text("");
                $('#em').text("");
                $('#dm').text("");
                $('#pn').text("");
            }

        });

});

