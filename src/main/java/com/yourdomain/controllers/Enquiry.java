package com.yourdomain.controllers;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;




@WebServlet("/enquiry")
public class Enquiry extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Retrieve form data
        String childName = request.getParameter("childName");
        String childAge = request.getParameter("childAge");
        String parentName = request.getParameter("parentName");
        String phoneNumber = request.getParameter("phoneNumber");
        String email = request.getParameter("email");
        String admissionDate = request.getParameter("admissionDate");
        String comments = request.getParameter("comments");


        // Set request attributes
        request.setAttribute("childName", childName);
        request.setAttribute("childAge", childAge);
        request.setAttribute("parentName", parentName);
        request.setAttribute("phoneNumber", phoneNumber);
        request.setAttribute("email", email);
        request.setAttribute("admissionDate", admissionDate);
        request.setAttribute("comments", comments);
//response.sendRedirect("thankyou.jsp");
        // Forward to thankyou.jsp
        request.getRequestDispatcher("thankyou.jsp").forward(request, response);
    }
}
