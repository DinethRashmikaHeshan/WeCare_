<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" type="text/css" href="CSS/hstyle.css">
<title>Insert title here</title>
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

    <div class="user-profile">
        <div class="profile-card">
            <div class="profile-picture">
                <!-- Add the user's profile picture here -->
            </div>
            <div class="profile-details">
                <h2>User Profile</h2>
                <c:forEach var="pat" items="${pdetails}">
                <ul>
                
                    <li><strong>ID:</strong> ${pat.id}</li>
                    <li><strong>Name:</strong> ${pat.name}</li>
                    <li><strong>Phone:</strong> ${pat.phone}</li>
                    <li><strong>Email:</strong> ${pat.email}</li>
                    <li><strong>Username:</strong> ${pat.userName}</li>
                    <li><strong>Password:</strong> ${pat.pwd}</li>
                </ul>
                </c:forEach>
            </div>
        </div>
    </div>

    <footer class="footer">
        <p>&copy; 2023 E-Channeling System</p>
    </footer>

</body>
</html>