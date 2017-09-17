function validate_form() {
    var emailRegex = /^[A-Za-z0-9._]*\@[A-Za-z]*\.[A-Za-z]{2,5}$/;
    var firstName = document.form.firstName.value,
        lastName = document.form.lastName.value;
    email = document.form.email.value;
        /*
        freemail = document.form.enterEmail.value,
        fpassword = document.form.Password.value,
        fmonth = document.form.birthday_month.value,
        fday = document.form.birthday_day.value,
        fyear = document.form.birthday_year.value;
*/
    if (firstName == "") {
        document.form.firstName.focus();
        document.getElementById("errorBox").innerHTML = "enter the first name";
        return false;
    }
    if (lastName == "") {
        document.form.lastName.focus();
        document.getElementById("errorBox").innerHTML = "enter the last name";
        return false;
    }
    if(email == "")
    {
        document.forms.email.focus();
        document.getElementsById("error").innerHTML="Enter Email correctly"
    }
}
