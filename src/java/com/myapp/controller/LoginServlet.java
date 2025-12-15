package com.myapp.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.*;

@WebServlet(name = "LoginServlet", urlPatterns = {"/login"})
public class LoginServlet extends HttpServlet {

    private static final String DB_URL = "jdbc:mysql://localhost:3306/dbmuseum";
    private static final String DB_USER = "root";
    private static final String DB_PASS = "";

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String username = request.getParameter("username");
        String password = request.getParameter("password");

        Connection conn = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;

        try {
            // Load MySQL driver
            Class.forName("com.mysql.cj.jdbc.Driver");

            // Connect database
            conn = DriverManager.getConnection(DB_URL, DB_USER, DB_PASS);

            // Query username
            String sql = "SELECT password FROM users WHERE username = ?";
            stmt = conn.prepareStatement(sql);
            stmt.setString(1, username);
            rs = stmt.executeQuery();
            
            if (!rs.next()) {
    response.sendRedirect("index.jsp?error=username");
    return;
}

// 1. Get the hash from the database
String hashedPassword = rs.getString("password");

// 2. THE FIX: Convert PHP's $2y$ prefix to Java's $2a$
if (hashedPassword != null && hashedPassword.startsWith("$2y$")) {
    hashedPassword = hashedPassword.replaceFirst("\\$2y\\$", "\\$2a\\$");
}

    // 3. Check the password as normal
    if (BCrypt.checkpw(password, hashedPassword)) {
        // Login Success
        // Create session to store user info
        request.getSession().setAttribute("user", username);
    
        response.sendRedirect("revisi.jsp");
    } else {
        // Password Wrong
        response.sendRedirect("index.jsp?error=password");
    }

            // Username tidak ditemukan
            if (!rs.next()) {
                response.sendRedirect("index.jsp?error=username");
                return;
            }
            
            // Cocokkan password
            if (BCrypt.checkpw(password, hashedPassword)) {
                // Login sukses
                response.sendRedirect("revisi.jsp");
            } else {
                // Password salah
                response.sendRedirect("index.jsp?error=password");
            }

        } catch (Exception e) {
            e.printStackTrace();
            response.getWriter().println("Terjadi error: " + e.getMessage());
        } finally {
            try { if (rs != null) rs.close(); } catch (Exception e) {}
            try { if (stmt != null) stmt.close(); } catch (Exception e) {}
            try { if (conn != null) conn.close(); } catch (Exception e) {}
        }
    }
}
