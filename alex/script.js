document.addEventListener("DOMContentLoaded", function() {
    const loginForm = document.getElementById("login-form");
    const loginButton = document.getElementById("login-btn");
    const loginMessage = document.getElementById("login-message");

    loginForm.addEventListener("submit", function(event) {
        event.preventDefault();
        
        // Perform client-side validation if needed
        let username = document.getElementById("username").value.trim();
        let password = document.getElementById("password").value.trim();

        if (username === "" || password === "") {
            loginMessage.textContent = "Please enter both username and password.";
            return;
        }

        // AJAX request to login.php for server-side validation
        let formData = new FormData();
        formData.append("username", username);
        formData.append("password", password);

        fetch("login.php", {
            method: "POST",
            body: formData
        })
        .then(response => response.json())
        .then(data => {
            if (data.success) {
                // Login successful, redirect or show success message
                loginMessage.textContent = "Login successful!";
                window.location.href = "index.html"; // Redirect to homepage
            } else {
                // Login failed, display error message
                loginMessage.textContent = data.message;
            }
        })
        .catch(error => {
            console.error("Error:", error);
            loginMessage.textContent = "An error occurred. Please try again.";
        });
    });
});
