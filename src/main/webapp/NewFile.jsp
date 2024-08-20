<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Welcome to Our School</title>
    <style>
        /* General Styles */
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            line-height: 1.6;
            background-color: #f4f4f4;
            overflow-x: hidden;
        }

        /* Auto-Scrolling Background Images */
        .background {
            position: fixed;
            top: 0;
            left: 0;
            width: 300%;
            height: 100vh;
            display: flex;
            z-index: -1;
            animation: scrollBackground 20s linear infinite;
        }

        .background-image {
            width: 33.33%;
            height: 100%;
            background-size: cover;
            background-position: center;
        }

        .background-image:nth-child(1) {
            background-image: url('./bg-1.jpeg');
        }

        .background-image:nth-child(2) {
            background-image: url('./bg-2.jpg');
        }

        .background-image:nth-child(3) {
            background-image: url('./bg-3.jpg');
        }

        @keyframes scrollBackground {
            0% {
                transform: translateX(0);
            }
            100% {
                transform: translateX(-100%);
            }
        }

        /* Hero Section */
        .hero {
            color: black;
            height: 100vh;
            display: flex;
            align-items: center;
            justify-content: center;
            text-align: center;
            position: relative;
            z-index: 1;
        }

        .hero-content h1 {
            font-size: 4rem;
            margin-bottom: 10px;
        }

        .hero-content p {
            font-size: 1.5rem;
            margin-bottom: 20px;
        }

        /* About Us Section */
        .about-us {
            padding: 40px;
            text-align: center;
            background-color: #fff;
            position: relative;
            z-index: 1;
        }

        .about-us h2 {
            font-size: 2.5rem;
            margin-bottom: 20px;
        }

        .about-us p {
            font-size: 1.2rem;
            max-width: 800px;
            margin: 0 auto;
        }

        /* Modal Styles */
        .modal {
            display: none;
            position: fixed;
            z-index: 2;
            left: 0;
            top: 0;
            width: 100%;
            height: 100%;
            overflow: auto;
            background-color: rgba(0, 0, 0, 0.5);
        }

        .modal-content {
            background-color: white;
            margin: 15% auto;
            padding: 20px;
            border: 1px solid #888;
            width: 80%;
            max-width: 500px;
            text-align: left;
            border-radius: 10px;
        }

        .modal-content h2 {
            margin-top: 0;
        }

        .modal-content label {
            display: block;
            margin-top: 10px;
        }

        .modal-content input {
            width: 100%;
            padding: 8px;
            margin-top: 5px;
            margin-bottom: 20px;
            border-radius: 5px;
            border: 1px solid #ddd;
        }

        .modal-content button {
            background-color: #333;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        .modal-content button:hover {
            background-color: #555;
        }

        .close {
            color: #aaa;
            float: right;
            font-size: 28px;
            font-weight: bold;
        }

        .close:hover,
        .close:focus {
            color: black;
            text-decoration: none;
            cursor: pointer;
        }

        /* Footer Section */
        footer {
            background-color: #333;
            color: white;
            text-align: center;
            padding: 10px;
            position: fixed;
            width: 100%;
            bottom: 0;
        }
    </style>
</head>
<body>
    <!-- Auto-Scrolling Background Images -->
    <div class="background">
        <div class="background-image"></div>
        <div class="background-image"></div>
        <div class="background-image"></div>
    </div>

    <!-- Header Section -->
    <header class="hero">
        <div class="hero-content">
            <h1>Welcome to Our School</h1>
            <p>Shaping the future, one student at a time.</p>
        </div>
    </header>

    <!-- About Us Section -->
    <section class="about-us">
        <h2>About Our School</h2>
        <p>Our school provides a nurturing environment for students to grow and excel. We offer a diverse curriculum and a variety of extracurricular activities.</p>
    </section>

    <!-- Modal for Student Information -->
    <div id="studentModal" class="modal">
        <div class="modal-content">
            <span class="close">&times;</span>
            <h2>Student Information</h2>
            <form id="studentForm" action="enquiry" method="post">
                <label for="childName">Child Name:</label>
                <input type="text" id="childName" name="childName" required>

                <label for="childAge">Child Age:</label>
                <input type="text" id="childAge" name="childAge" required>

                <label for="parentName">Parent Name:</label>
                <input type="text" id="parentName" name="parentName" required>

                <label for="phoneNumber">Phone Number:</label>
                <input type="tel" id="phoneNumber" name="phoneNumber" required>

                <label for="email">Email:</label>
                <input type="email" id="email" name="email" required>

                <label for="admissionDate">Admission Date:</label>
                <input type="date" id="admissionDate" name="admissionDate" required>

                <label for="comments">Comments:</label>
                <input type="text" id="comments" name="comments" required>

                <button type="submit">Submit</button>
            </form>
        </div>
    </div>

    <!-- Footer Section -->
    <footer>
        <p>&copy; 2024 Our School. All rights reserved.</p>
    </footer>

    <script>
        // JavaScript for Modal Functionality
        window.onload = function() {
            setTimeout(function() {
                document.getElementById('studentModal').style.display = 'block';
            }, 3000);
        };

        // Close the modal when the user clicks on the 'x' button
        document.querySelector('.close').onclick = function() {
            document.getElementById('studentModal').style.display = 'none';
        };

        // Close the modal when the user clicks outside of the modal
        window.onclick = function(event) {
            if (event.target == document.getElementById('studentModal')) {
                document.getElementById('studentModal').style.display = 'none';
            }
        };
    </script>
</body>
</html>
