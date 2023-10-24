<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
    <title>E-Channeling System</title>
    <link rel="stylesheet" type="text/css" href="CSS/hstyle.css"> <!-- Link to your CSS file -->
</head>
<body>
    <header class="header">
        <div class="container">
            <div class="logo">
                <img src="img/We-Caren.png" alt="E-Channeling System Logo">
            </div>
            <nav class="navigation">
                <ul>
                    <li><a href="index.html">Home</a></li>
                    <li><a href="aboutus.html">About Us</a></li>
                    <li><a href="feedback.html">Feedback</a></li>
                    <li><a href="contactus.html">Contact Us</a></li>
                </ul>
            </nav>
        </div>
    </header>

    <div class="content">
        <div class="login-container">
        <form action="">
        <h2>Login</h2>
            <div class="form-group">
                <label class="ll" for="username">Username:</label>
                <input type="text" id="username" name="username" placeholder="Enter your username" required>
            </div>
            <div class="form-group">
                <label class="ll" for="password">Password:</label>
                <input type="password" id="password" name="password" placeholder="Enter your password" required>
            </div>
            <input type = "submit" name = "submit" value = "Login">
            <p>Don't have an account? <a href="registration.html">Register for E-Channeling</a></p>
        </form>
        </div>
    </div>

    <footer class="footer">
        <p>&copy; 2023 E-Channeling System</p>
    </footer>
</body>
</html>
