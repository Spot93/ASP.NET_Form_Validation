function validation() {

        //Variables to store values from textboxes
        var firstName = document.getElementById("txtFirstName").value;
        var age = document.getElementById("txtAge").value;
        var email = document.getElementById("txtEmail").value;
        var phone = document.getElementById("txtPhone").value;

        //Regular expressions for phone number and email validation
        var phoneNumberExpression = /^(\+\d{1,2}\s)?\(?\d{3}\)?[\s.-]\d{3}[\s.-]\d{4}$/;
        var emailExp = /^\w+(\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,4})+$/;

        //Receive true/false value from methods below
        var nameTest = nameCheck(firstName);
        var ageTest = ageCheck(age);
    
        //Begin TextBox validation
        if (firstName === "" || nameTest === true) {
            alert("Please enter a valid first name.");
            return false;
        }

        if (age === "" || age <= 0 || age >= 125 || ageTest === true) {
            alert("Please enter a valid age.");
            return false;
        }

        if (email === "" || !email.match(emailExp)) {
            alert("Please enter a valid email address.");
            return false;
        }

        if (phone === "" || !phone.match(phoneNumberExpression)) {
            alert("Please enter a telephone number in format 555-555-5555.");
            return false;
        }
        //End TextBox validation

        //Testing if name contains numbers
        function nameCheck(name) {
            return /\d/.test(name);
        }
        //Testing if age contains non-numerics
        function ageCheck(age) {
            return /\D/.test(age);
    }

}

//Set up a listener for reset button click
document.getElementById("btnReset").addEventListener("click", resetValues);

function resetValues() {

    //Store elements to reset values
    var firstName = document.getElementById("txtFirstName");
    var age = document.getElementById("txtAge");
    var email = document.getElementById("txtEmail");
    var phone = document.getElementById("txtPhone");
    var chkMusic = document.getElementById("chkMusic");
    var chkSports = document.getElementById("chkSports");
    var chkReading = document.getElementById("chkReading");
    var chkVolunteering = document.getElementById("chkVolunteering");

    //Set textbox values to an empty string
    firstName.value = "";
    age.value = "";
    email.value = "";
    phone.value = "";

    //Uncheck checkboxes
    chkMusic.checked = false;
    chkSports.checked = false;
    chkReading.checked = false;
    chkVolunteering.checked = false;

    //Select default radiobutton
    document.getElementById("rbOther").checked = true;

    //Set dropdownlist to default value
    document.getElementById("ddlColor").selectedIndex = 0;

    //Hide information display
    var span = document.getElementById("information");
    span.style.display = "none";
}
