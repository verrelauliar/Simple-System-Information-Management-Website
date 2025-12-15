<%-- 
    Document   : budaya
    Created on : Dec 5, 2025, 12:50:34 PM
    Author     : Arueza
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="id">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>Koleksi Budaya - Museum Towa</title>
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
    header {
      background-color: #4a3f35;
      color: #fff;
      padding: 20px 40px;
      position: relative;
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
    }
    header h1 {
      position: absolute;
      left: 50%;
      top: 50%;
      transform: translate(-50%, -50%);
      font-size: 24px;
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
    }
    .collection-img {
      width: 100%;
      height: 200px;
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
    <a href="index.jsp" class="back-button">Kembali</a>
    <h1>Koleksi Budaya</h1>
  </header>

  <h2>Koleksi Budaya Museum Towa</h2>

  <div class="collection-grid">

  <%-- ======================= ARRAY DATA JSP ======================= --%>
  <%
    class Item {
      String title, description, era, image;
      Item(String t, String d, String e, String i) {
        title = t; description = d; era = e; image = i;
      }
    }

    java.util.List<Item> artCollection = new java.util.ArrayList<>();

    artCollection.add(new Item(
      "Rumah Adat Toraja",
      "Miniatur rumah adat Tongkonan dari Sulawesi Selatan dengan ukiran tradisional.",
      "Representasi abad ke-19",
      "https://www.ruparupa.com/blog/wp-content/uploads/2022/02/toraja-houses-1500.jpg"
    ));

    artCollection.add(new Item(
      "Gamelan Jawa Lengkap",
      "Set lengkap gamelan Jawa terdiri dari gong, kenong, dan saron.",
      "Tahun 1930",
      "https://upload.wikimedia.org/wikipedia/commons/thumb/2/26/Traditional_indonesian_instruments02.jpg/1200px-Traditional_indonesian_instruments02.jpg"
    ));

    artCollection.add(new Item(
      "Tari Topeng Cirebon",
      "Koleksi lima topeng tari dari Cirebon dengan ekspresi khas.",
      "Awal abad ke-20",
      "https://kendyferdian.wordpress.com/wp-content/uploads/2015/12/121915-sejarah-tari-topeng-cirebon3.jpg"
    ));

    artCollection.add(new Item(
      "Koleksi Alat Musik Sasando",
      "Alat musik petik tradisional dari Pulau Rote, NTT.",
      "Tahun 1950",
      "https://foto.kontan.co.id/A1-D390fUraBibWqWi39oea7u8g=/smart/2024/08/18/144913340.jpg"
    ));

    artCollection.add(new Item(
      "Pakaian Adat Minangkabau",
      "Pakaian adat lengkap pengantin Minangkabau dengan sulaman emas.",
      "Tahun 1925",
      "https://kabarbaik.co/wp-content/uploads/2024/04/sumatra-barat.jpeg"
    ));
  %>

  <%-- ======================= LOOPING DISPLAY ======================= --%>
  <%
    for (Item item : artCollection) {
  %>
    <div class="collection-item">
      <div class="collection-img">
        <img src="<%= item.image %>" alt="<%= item.title %>" style="width:100%; height:200px; object-fit:cover;">
      </div>
      <div class="collection-info" style="padding:20px;">
        <h3 style="color:#4a3f35; font-size:18px;"><%= item.title %></h3>
        <p style="color:#666; font-size:14px; margin-top:10px;"><%= item.description %></p>
        <span class="collection-era" style="display:inline-block; margin-top:15px; background:#f1ede9; padding:6px 12px; border-radius:20px; font-size:12px; color:#4a3f35;">
          <%= item.era %>
        </span>
      </div>
    </div>
  <%
    }
  %>

  </div>

  <footer>
    &copy; 2025 Museum Towa. Semua hak dilindungi.
  </footer>
</body>
</html>

