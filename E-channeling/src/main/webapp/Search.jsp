<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>        
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

    <div class="search-container">
    <h1>Find a Doctor</h1>
    <form id="searchForm" action="search" method="post">
        <div class="search-form">
            <input type="text" id="doctorName" name="doctorName" placeholder="Enter Doctor Name">
            <select id="specialty" name="specialty">
                <option value="">Select Specialty</option>
                <option value="cardiologist">Cardiologist</option>
                <option value="dermatologist">Dermatologist</option>
                <!-- Add more specialties here -->
            </select>
            <button type="submit" id="searchButton">Search</button>
        </div>
    </form>
</div>
<div class="search-container">
    <h1>Search Results</h1>
    <div class="search-results">
        <c:forEach var="doc" items="${ddetails}">
            <div class="feature-card">
                <ul>
                    <li><strong>ID:</strong> ${doc.id}</li>
                    <li><strong>Name:</strong> ${doc.name}</li>
                    <li><strong>Speciality:</strong> ${doc.speciality}</li>
                    <li><strong>Hospital:</strong> ${doc.hospital}</li>
                </ul>
                <button class="make-appointment-button">Make Appointment</button>
            </div>
        </c:forEach>
    </div>
</div>



    

    <footer class="footer">
        <p>&copy; 2023 E-Channeling System</p>
    </footer>
</body>
</html>
