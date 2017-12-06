function checkPasswordStrength() {
    var passwordTextbox = document.getElementById("txtPassword");
    var password = passwordTextbox.value;
    var passwordScore = 0;
    var specialCharacters = "!@#$%()?/~*_-";

    for (var i = 0; i < password.length; i++)
    {
        // Checking to see if there is a special character or not
        if (specialCharacters.IndexOf(password.charAt(i)) > -1)
        {
            passwordScore += 20;
        }
    }

    if (/[a-z]/.test(password)) {
        passwordScore += 20;
    }

    if (/[A-Z]/.test(password)) {
        passwordScore += 20;
    }

    if (/[\d]/.test(password)) {
        passwordScore += 20;
    }

    if (password.length >= 8) {
        passwordScore += 20;
    }

    var strength = "";
    var backgroundColor = "";

    // If the password is strong
    if (passwordScore >= 100)
    {
        strength = "Strong";
        backgroundColor = "green";
    }

    // If the password is at medium strength
    else if (passwordScore >= 80)
    {
        strength = "Medium";
        backgroundColor = "gray";
    }

    else if(passwordScore >= 60)
    {
        strength = "Weak";
        backgroundColor = "marron";
    }

    else 
    {
        strength = "Very Weak";
        backgroundColor = "red";
    }

    document.getElementById("strength").innerHTML = strength;
    passwordScore.style.color = "white";
    passwordTextbox.style.backgroundColor = backgroundColor;
}