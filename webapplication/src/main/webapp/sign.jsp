<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Student Work Study Program - Sign Up</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }
        html, body {
            height: 100%;
            font-family: Arial, sans-serif;
            display: flex;
            flex-direction: column;
        }
        body {
            margin: 0;
            background-size: cover;
            background-position: center;
            transition: background-image 1s ease-in-out;
        }

        .content {
            flex: 1;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        /* Logo styling */
        .logo {
            text-align: center;
            padding: 20px;
        }
        .logo img {
            width: 50px; /* Adjust the width to make the logo small */
        }
        .navbar {
            background-color: #007bff;
            color: white;
            padding: 15px;
            text-align: center;
        }
        .navbar h1 {
            font-size: 24px;
            margin-bottom: 5px;
        }
        .navbar p {
            font-size: 14px;
        }

        .form-container {
            background-color: rgba(255, 255, 255, 0.8);
            padding: 40px;
            border-radius: 10px;
            box-shadow: 0 0 15px rgba(0, 0, 0, 0.3);
            text-align: center;
            width: 300px;
        }

        h2 {
            margin-bottom: 20px;
            color: #333;
        }

        label {
            display: block;
            margin-bottom: 10px;
            color: #333;
        }

        input[type="text"],
        input[type="password"],
        input[type="email"] {
            width: 100%;
            padding: 10px;
            margin-bottom: 20px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        input[type="submit"] {
            width: 100%;
            padding: 10px;
            background-color: #007bff;
            border: none;
            color: white;
            border-radius: 5px;
            cursor: pointer;
        }

        input[type="submit"]:hover {
            background-color: #0056b3;
        }

        /* Social login button */
        .social-login {
            margin: 10px 0;
        }
        .social-button {
            display: inline-block;
            padding: 10px;
            margin: 5px;
            color: white;
            border-radius: 5px;
            cursor: pointer;
            text-decoration: none;
        }
        .google {
            background-color: #db4437;
        }

        .footer {
            background-color: #f1f1f1;
            color: #333;
            padding: 20px;
            text-align: center;
            width: 100%;
            position: relative;
            bottom: 0;
        }
    </style>
</head>
<body>
    <!-- Navbar -->
    <div class="navbar">
        <h1>Student Work Study Program Management</h1>
        <p>The Student Work Study Program Management system helps students find on-campus jobs and manage their work performance.</p>
    </div>

    <!-- Content -->
    <div class="content">
        <div class="form-container">
          <!-- Logo -->
            <div class="logo">
                <img src="kloo.png" alt="Logo">
            </div>
            <h2>Sign Up</h2>
            <form action="sign" method="post">
                <label for="username">Username:</label>
                <input type="text" id="username" name="username" required>

                <label for="email">Email:</label>
                <input type="email" id="email" name="email" required>

                <label for="password">Password:</label>
                <input type="password" id="password" name="password" required>

                <input type="submit" value="Sign Up">
            </form>

            <!-- Google login button -->
            <div class="social-login">
                <a href="https://accounts.google.com/signin" class="social-button google">
                    <img src="https://icon2.cleanpng.com/20240216/ikb/transparent-google-logo-google-logo-with-multicolored-g-and-1710875587855.webp" alt="Google Logo" style="width: 20px; height: 20px; vertical-align: middle;">
                    Sign with
                </a>
            </div>

            <p>Already have an account? <a href="login.jsp">Login here</a>.</p>
        </div>
    </div>

    <!-- Footer -->
    <div class="footer">
        &copy; 2024 Student Work Study Program Management. All Rights Reserved.
    </div>

    <script>
        // Array of background images
        const backgrounds = [
            'url("h.jpg")',
            'url("helo.jpg")',
            'url("ho.jpg")',
            'url("on.jpg")',
            'url("girl.jpg")',
            'url("Skill%20Development%20and%20Training.png")', 
            'url("istockphoto-1225923847-1024x1024.jpg")'
        ];

        let index = 0;
        document.body.style.backgroundImage = backgrounds[index];

        function changeBackground() {
            index = (index + 1) % backgrounds.length;
            document.body.style.backgroundImage = backgrounds[index];
        }

        setInterval(changeBackground, 2000);

        // After submission redirect to success page
        document.querySelector('form').addEventListener('submit', function(event) {
            event.preventDefault();
            alert("Your sign-up has been successful!");
            window.location.href = 'index.html';
        });
    </script>
</body>
</html>
