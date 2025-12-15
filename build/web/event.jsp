<%-- 
    Document   : event
    Created on : Dec 5, 2025, 12:50:22 PM
    Author     : Arueza
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="id">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>Kegiatan Terkini - Museum Towa</title>
  <style>
    * {
      box-sizing: border-box;
      margin: 0;
      padding: 0;
      font-family: 'Segoe UI', sans-serif;
    }

    body {
      background-color: #f9f9f9;
      color: #333;
      padding: 40px;
      transition: margin-left 0.3s ease;
    }

    /* Header */
    header {
      background-color: #4a3f35;
      color: #fff;
      padding: 20px 40px;
      position: relative;
      z-index: 999;
      height: 70px;
    }

    .back-button {
      position: absolute;
      left: 40px;
      top: 50%;
      transform: translateY(-50%);
      background-color: white;
      color: #4a3f35;
      padding: 8px 14px;
      border: none;
      border-radius: 5px;
      text-decoration: none;
      font-weight: bold;
      transition: background-color 0.2s ease;
    }

    .back-button:hover {
      background-color: #e7e3dc;
    }

    header h1 {
      position: absolute;
      left: 50%;
      top: 50%;
      transform: translate(-50%, -50%);
      font-size: 24px;
      margin: 0;
    }

    h2 {
      text-align: center;
      margin-bottom: 30px;
      color: #4a3f35;
    }

    .collection-grid {
      display: grid;
      grid-template-columns: repeat(auto-fill, minmax(300px, 1fr));
      gap: 30px;
      max-width: 1200px;
      margin: 0 auto;
    }

    .collection-item {
      background-color: #fff;
      border-radius: 10px;
      box-shadow: 0 2px 5px rgba(0,0,0,0.1);
      overflow: hidden;
      transition: transform 0.3s ease, box-shadow 0.3s ease;
    }

    .collection-item:hover {
      transform: translateY(-5px);
      box-shadow: 0 5px 15px rgba(0,0,0,0.2);
    }

    .collection-img img {
      width: 100%;
      height: 200px;
      object-fit: cover;
    }

    .collection-info {
      padding: 20px;
    }

    .collection-title {
      font-size: 18px;
      font-weight: bold;
      margin-bottom: 10px;
      color: #4a3f35;
    }

    .collection-description {
      font-size: 14px;
      line-height: 1.6;
      color: #666;
    }

    .collection-era {
      display: inline-block;
      background-color: #f1ede9;
      padding: 5px 10px;
      border-radius: 20px;
      font-size: 12px;
      margin-top: 15px;
      color: #4a3f35;
    }

    footer {
      background-color: #4a3f35;
      color: #fff;
      text-align: center;
      padding: 20px;
      margin-top: 40px;
    }
  </style>
</head>
<body>

<header>
  <a href="revisi.jsp" class="back-button">Kembali</a>
  <h1>Event</h1>
</header>

<h2>Event Terkini Museum Towa</h2>

<div class="collection-grid">

<%
    class EventItem {
        String title, description, date, image;
        EventItem(String t, String d, String dt, String i) {
            title = t; description = d; date = dt; image = i;
        }
    }

    EventItem[] events = {
        new EventItem(
            "Seminar Sejarah Nasional Republik Indonesia",
            "Seminar yang mengeksplorasi sejarah perjuangan kemerdekaan Indonesia...",
            "7 Mei 2025",
            "https://broadwayshr.com/wp-content/uploads/2023/05/perbedaan-seminar-dan-workshop-1.jpg"
        ),
        new EventItem(
            "Pameran Keramik Nusantara: Melintasi Waktu",
            "Pameran koleksi keramik langka dari berbagai daerah di Indonesia...",
            "15 Juni 2025",
            "https://mmc.tirto.id/image/otf/970x0/2016/03/antarafoto-anggaran-perawatan-museum-230316-agr-3_ratio-16x9.jpg"
        ),
        new EventItem(
            "Workshop Batik Kontemporer",
            "Workshop interaktif yang menggabungkan teknik batik tradisional...",
            "3 Agustus 2025",
            "https://sublimbandung.com/wp-content/uploads/2023/11/bat1.webp"
        )
    };

    for (EventItem e : events) {
%>
      <div class="collection-item">
        <div class="collection-img">
          <img src="<%= e.image %>" alt="<%= e.title %>">
        </div>

        <div class="collection-info">
          <h3 class="collection-title"><%= e.title %></h3>
          <p class="collection-description"><%= e.description %></p>
          <span class="collection-era"><%= e.date %></span>
        </div>
      </div>
<%
    }
%>

</div>

<footer>
  &copy; 2025 Museum Towa. Semua hak dilindungi oleh kami.
</footer>

</body>
</html>

