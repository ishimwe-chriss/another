package com.example.demo;

import java.io.*;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import java.sql.*;
import java.util.*;

@WebServlet("/register")
public class Register extends HttpServlet {

    private static final String INSERT_QUERY = "INSERT INTO users(name, city, mobile, dob) VALUES(?,?,?,?)";
    private static final String SELECT_QUERY = "SELECT * FROM users";

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        res.setContentType("text/html");

        // Check if the request is for display
        String action = req.getParameter("action");
        if ("display".equals(action)) {
            displayUsers(req, res);
        } else {
            registerUser(req, res);
        }
    }

    private void registerUser(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        // Read form data
        String name = req.getParameter("name");
        String city = req.getParameter("city");
        String mobile = req.getParameter("mobile");
        String dob = req.getParameter("dob");

        // Load JDBC driver
        try {
            Class.forName("org.postgresql.Driver");
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }

        // Database connection details
        String url = "jdbc:postgresql://localhost:5432/regdb";
        String user = "postgres";
        String password = "123456";

        try (Connection con = DriverManager.getConnection(url, user, password)) {
            // Insert into database
            try (PreparedStatement ps = con.prepareStatement(INSERT_QUERY)) {
                ps.setString(1, name);
                ps.setString(2, city);
                ps.setString(3, mobile);
                ps.setString(4, dob);

                int count = ps.executeUpdate();

                if (count > 0) {
                    res.getWriter().println("Record stored into database successfully");
                } else {
                    res.getWriter().println("Record not stored into database");
                }
            } catch (SQLException se) {
                se.printStackTrace();
                res.getWriter().println(se.getMessage());
            }
        } catch (SQLException e) {
            e.printStackTrace();
            res.getWriter().println(e.getMessage());
        }
    }

    private void displayUsers(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        // Load JDBC driver
        try {
            Class.forName("org.postgresql.Driver");
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }

        // Database connection details
        String url = "jdbc:postgresql://localhost:5432/regdb";
        String user = "postgres";
        String password = "123456";

        List<Map<String, Object>> userList = new ArrayList<>();

        try (Connection con = DriverManager.getConnection(url, user, password);
             Statement stmt = con.createStatement();
             ResultSet rs = stmt.executeQuery(SELECT_QUERY)) {

            while (rs.next()) {
                Map<String, Object> userMap = new HashMap<>();
                userMap.put("name", rs.getString("name"));
                userMap.put("city", rs.getString("city"));
                userMap.put("mobile", rs.getString("mobile"));
                userMap.put("dob", rs.getDate("dob")); // Adjust data type as per your database

                userList.add(userMap);
            }

            // Pass data to JSP for rendering
            req.setAttribute("users", userList);
            req.getRequestDispatcher("/WEB-INF/display.jsp").forward(req, res);

        } catch (SQLException se) {
            se.printStackTrace();
            res.getWriter().println(se.getMessage());
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req, resp);
    }
}
