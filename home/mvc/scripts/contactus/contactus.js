$(function () {
    $("#submitButton").click(function () {
        var name = $('#Name').val().trim();
        var email = $('#Email').val().trim();
        var phone = $('#Phone').val();
        if (validateForm(name, email, phone) == false) {
            return;
        }

        var job = $('#Job').val();
        var organization = $('#Organization').val();
        var location = $('#Location').val();
        var content = $('#Content').val();

        $.post("/api/ContactUsApi/Post",
            { Name: name, Job: job, Organization: organization, Location: location, Phone: phone, Email: email, Content: content },
            function (result) {
                if (result == true) {
                    showPopupResult(SubcribeHeaderSuccess, SubcribeContentSuccess);
                    $('#Name').val('');
                    $('#Job').val('');
                    $('#Organization').val('');
                    $('#Location').val('');
                    $('#Phone').val('');
                    $('#Email').val('');
                    $('#Content').val('');
                } else {
                    showPopupResult(ErrorLabel, SubcribeContentError);
                }
            });
    });
});

function validateForm(name, email, phone) {
    var isValid = true;

    if (name.trim() == "") {
        $('#NameValidationMessage').show();
        $(".error-numeric").hide();
        $('#Name').addClass("field-error");
        $('#Name').focus();
        isValid = false;
    }
    else {
        $('#NameValidationMessage').hide();
        $('#Name').removeClass("field-error");
    }
    if (phone.trim() != "") {
        var regex = /^[\d-)(+\s]+$/;
        if (regex.test(phone) == false) {
            $(".error-phone").show();
            $('#Phone').addClass("field-error");
            $('#Phone').focus();
            isValid = false;
        } else {
            $(".error-phone").hide();
            $('#Phone').removeClass("field-error");
        }
    }
    else {
        $(".error-phone").hide();
        $('#Phone').removeClass("field-error");
    }

    if (email.trim() == '') {
        $('#EmailValidationMessage').show();
        $('.error-message-email').hide();
        $('#Email').addClass("field-error");
        if ($("#Name").val() == "") {
            $('#Name').focus();
        } else {
            $("#Email").focus();
        }
        isValid = false;
    } else {
        $('#EmailValidationMessage').hide();

        var regex = /^[\w._-]+@[a-zA-Z_.]+?\.[a-zA-Z]{2,}$/;
        if (regex.test(email.trim()) == false) {
            $('.error-message-email').show();
            $('#Email').addClass("field-error");
            if ($("#Name").val() == "") {
                $('#Name').focus();
            } else {
                $("#Email").focus();
            }
            isValid = false;
        } else {
            $('.error-message-email').hide();
            $('#Email').removeClass("field-error");
        }
    }

    return isValid;
}

