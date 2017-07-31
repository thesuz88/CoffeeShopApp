function validateForm() {
    var text;

    var fName = document.forms["userForm"]["firstName"].value;
    if (fName == "") {
        text = "Please enter Name";
        document.getElementsByClassName("invalid")[0].innerHTML = text;
        return false;
    }
    var lName = document.forms["userForm"]["lastName"].value;
    if (lName == "") {
        text = "Please enter Last Name";
        document.getElementsByClassName("invalid")[1].innerHTML = text;
        return false;
    }
    var address = document.forms["userForm"]["address"].value;
    if (address == "") {
        text = "Please enter Address";
        document.getElementsByClassName("invalid")[2].innerHTML = text;
        return false;
    }
    var city = document.forms["userForm"]["city"].value;
    if (city == "") {
        text = "Please enter city";
        document.getElementsByClassName("invalid")[3].innerHTML = text;
        return false;
    }
    var state = document.forms["userForm"]["state"].value;
    if (state == "") {
        text = "Please enter state";
        document.getElementsByClassName("invalid")[4].innerHTML = text;
        return false;
    }
    var email = document.forms["userForm"]["email"].value;

    var atpos = email.indexOf("@");
    var dotpos = email.lastIndexOf(".");
    if (atpos < 1 || dotpos < atpos + 2 || dotpos + 2 >= email.length) {
        text = "Please enter valid email";
        document.getElementsByClassName("invalid")[7].innerHTML = text;
        return false;
    }

    var password = document.forms["userForm"]["password"].value;
    var cpassword = document.forms["userForm"]["cpassword"].value;
    if(password ==""){
        text = "Please enter a password"
        document.getElementsByClassName("invalid")[8].innerHTML = text;
        return false;
    }

    if(password != "" && password == cpassword) {

        if (password.length < 6) {
            text = "Password must be more than 6 characters";
            document.getElementsByClassName("invalid")[8].innerHTML = text;
            return false;
        }
        re = /[0-9]/;
        if(!re.test(password)){
            text = "Password must contain at least 1 number."
            document.getElementsByClassName("invalid")[8].innerHTML = text;
            return false;
        }
        if (password == email) {
            text = "Password cannot be same as email";
            document.getElementsByClassName("invalid")[8].innerHTML = text;
            return false;
        }
    }else if (password !== cpassword){
        text = "Passwords do not match, please confirm password."
        document.getElementsByClassName("invalid")[8].innerHTML = text;
        return false;
    }
    var zip = document.forms["userForm"]["zip"].value;
    var isValidZip =(/^\d{5}$/);
    if (zip.match(isValidZip)) {
        return true;
    }else{
        text = "Enter valid zip";
        document.getElementsByClassName("invalid")[5].innerHTML = text;
        return false;
    }
}
