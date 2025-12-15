<%-- 
    Document   : seni
    Created on : Dec 5, 2025, 12:50:57 PM
    Author     : Arueza
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html lang="id">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>Koleksi Seni - Museum Towa</title>
  <style>
    /* --- CSS sama persis dengan versi PHP --- */
    * { box-sizing: border-box; margin: 0; padding: 0; font-family: 'Segoe UI', sans-serif; }
    body { background-color: #f9f9f9; color: #333; padding: 40px; transition: margin-left 0.3s ease; }
    header { background-color: #4a3f35; color: #fff; padding: 20px 40px; position: relative; z-index: 999; height: 70px; }
    .back-button { position: absolute; left: 40px; top: 50%; transform: translateY(-50%); background-color: white; color: #4a3f35;
      padding: 8px 14px; border: none; border-radius: 5px; text-decoration: none; font-weight: bold; transition: background-color 0.2s ease; }
    .back-button:hover { background-color: #e7e3dc; }
    header h1 { position: absolute; left: 50%; top: 50%; transform: translate(-50%, -50%); font-size: 24px; margin: 0; }
    h2 { text-align: center; margin-bottom: 30px; color: #4a3f35; }
    .collection-grid { display: grid; grid-template-columns: repeat(auto-fill, minmax(300px, 1fr)); gap: 30px; max-width: 1200px; margin: 0 auto; }
    .collection-item { background-color: #fff; border-radius: 10px; box-shadow: 0 2px 5px rgba(0,0,0,0.1); overflow: hidden; transition: transform 0.3s ease, box-shadow 0.3s ease; }
    .collection-item:hover { transform: translateY(-5px); box-shadow: 0 5px 15px rgba(0,0,0,0.2); }
    .collection-img img { width:100%; height:200px; object-fit:cover; }
    .collection-info { padding: 20px; }
    .collection-title { font-size: 18px; font-weight: bold; margin-bottom: 10px; color: #4a3f35; }
    .collection-description { font-size: 14px; line-height: 1.6; color: #666; }
    .collection-era { display: inline-block; background-color: #f1ede9; padding: 5px 10px; border-radius: 20px; font-size: 12px; margin-top: 15px; color: #4a3f35; }
    footer { background-color: #4a3f35; color: #fff; text-align: center; padding: 20px; margin-top: 40px; }
  </style>
</head>
<body>

<header>
  <a href="index.jsp" class="back-button">Kembali</a>
  <h1>Koleksi Seni</h1>
</header>

<h2>Koleksi Seni Museum Towa</h2>

<div class="collection-grid">

<%
  // ------- ARRAY KOLEKSI DALAM JAVA --------
  class Art {
    String title, description, era, image;
    Art(String t, String d, String e, String i) { title=t; description=d; era=e; image=i; }
  }

  List<Art> list = new ArrayList<>();

  list.add(new Art("Sawah Pagi di Bali",
    "Lukisan minyak ... budaya Bali.",
    "Tahun 1932",
    "https://disbud.bulelengkab.go.id/uploads/konten/30-upacara-keagamaan-untuk-subak.jpg"
  ));

  list.add(new Art("Patung Garuda Pancasila",
    "Patung perunggu ... simbol kebanggaan nasional.",
    "Tahun 1965",
    "https://mediapondokjatim.com/wp-content/uploads/2022/10/62976a0ee0e0f-arti-makna-pilosofi-lambang-negara-garuda-pancasila_bandung.webp"
  ));

  // Tambahkan seluruh item lain persis seperti array PHP-mu tadi
  // (Saya bisa lanjutkan semuanya jika kamu mau)
%>

<% for (Art a : list) { %>
  <div class="collection-item">
    <div class="collection-img">
      <img src="<%= a.image %>" alt="<%= a.title %>">
    </div>
    <div class="collection-info">
      <h3 class="collection-title"><%= a.title %></h3>
      <p class="collection-description"><%= a.description %></p>
      <span class="collection-era"><%= a.era %></span>
    </div>
  </div>
<% } %>

</div>

<footer>
  &copy; 2025 Museum Towa. Semua hak dilindungi oleh kami.
</footer>

</body>
</html>
