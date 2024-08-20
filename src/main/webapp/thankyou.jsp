<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Thank You</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f0f8ff;
            color: #333;
        }

        header {
            background-color: #0044cc;
            color: #fff;
            padding: 15px 0;
            text-align: center;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
        }

        section {
            padding: 20px;
            background-color: #fff;
            margin: 20px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        #details p {
            font-size: 16px;
            line-height: 1.6;
        }

        footer {
            background-color: #0044cc;
            color: #fff;
            text-align: center;
            padding: 15px 0;
            position: relative;
            width: 100%;
            bottom: 0;
            box-shadow: 0 -2px 4px rgba(0, 0, 0, 0.1);
        }

        footer p {
            margin: 0;
            font-size: 14px;
        }

        footer a {
            color: #ffeb3b;
            text-decoration: none;
            font-weight: bold;
        }

        footer a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <header>
        <h1>Thank You for Your Enquiry!</h1>
    </header>

    <section id="enquiryDetails">
        <h2>Your Submitted Details</h2>
        <div id="details">
            <p><strong>Child's Name:</strong> ${childName}</p>
            <p><strong>Child's Age:</strong> ${childAge}</p>
            <p><strong>Parent's Name:</strong> ${parentName}</p>
            <p><strong>Phone Number:</strong> ${phoneNumber}</p>
            <p><strong>Email:</strong> ${email}</p>
            <p><strong>Preferred Admission Date:</strong> ${admissionDate}</p>
            <p><strong>Comments:</strong> ${comments}</p>
        </div>
    </section>

    <footer>
        <p>&copy; 2024 Vruksha International School of Montessori. All rights reserved. <a href="#">Privacy Policy</a></p>
    </footer>
</body>
</html>
