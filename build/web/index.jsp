<%-- 
    Document   : index
    Created on : Dec 5, 2025, 12:44:51 PM
    Author     : Arueza
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="id">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Login - Museum Towa</title>
  <style>
    body {
      font-family: 'Segoe UI', sans-serif;
      background-color: #f9f9f9;
      display: flex;
      justify-content: center;
      align-items: center;
      height: 100vh;
      margin: 0;
      background-image: url(https://a.travel-assets.com/findyours-php/viewfinder/images/res70/210000/210473-Museum-Of-Fine-Arts-And-Ceramics.jpg);
      background-size: cover;
    }

    .login-container {
      background-color: #fff;
      padding: 40px;
      border-radius: 12px;
      box-shadow: 0 2px 10px rgba(0,0,0,0.1);
      width: 100%;
      max-width: 400px;
    }

    .login-container h2 {
      margin-bottom: 20px;
      color: #4a3f35;
      text-align: center;
    }

    .login-container label {
      display: block;
      margin-bottom: 5px;
      color: #333;
    }

    .login-container input {
      width: 95%;
      padding: 10px;
      margin-bottom: 15px;
      border-radius: 5px;
      border: 1px solid #ccc;
    }

    .login-container button {
      width: 100%;
      padding: 10px;
      background-color: #4a3f35;
      color: white;
      border: none;
      border-radius: 5px;
      font-weight: bold;
      cursor: pointer;
    }

    .login-container button:hover {
      background-color: #1b4f72;
    }

    .login-container .footer {
      margin-top: 20px;
      text-align: center;
    }

    .login-container .footer a {
      text-decoration: none;
      color: #4a3f35;
    }
  </style>
</head>
<body>
  <div class="login-container">
    <h2>Login Museum Towa</h2>

    <!-- Arahkan ke LoginServlet -->
    <form action="login" method="POST">
      <label for="username">Username</label>
      <input type="text" name="username" placeholder="Username" required>

      <label for="password">Password</label>
      <input type="password" name="password" placeholder="Password" required>
      
      <button type="submit">Masuk</button>
    </form>

    <!-- Error message dari parameter URL -->
    <div id="error-msg" style="color: red; font-size: 14px; margin-bottom: 10px;">
      <%
        String error = request.getParameter("error");
        if ("password".equals(error)) {
            out.print("Password salah!");
        } else if ("user".equals(error)) {
            out.print("Username tidak ditemukan!");
        }
      %>
    </div>

    <div class="footer">
      <p>Belum punya akun? <a href="register.jsp">Daftar</a></p>
    </div>
  </div>
</body>
</html>
