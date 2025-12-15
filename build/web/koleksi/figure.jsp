<%-- 
    Document   : figure
    Created on : Dec 5, 2025, 12:50:41 PM
    Author     : Arueza
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="id">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>Koleksi Figure - Museum Towa</title>
  <style>
    * { box-sizing: border-box; margin: 0; padding: 0; font-family: 'Segoe UI', sans-serif; }
    body { background-color: #f9f9f9; color: #333; padding: 40px; transition: margin-left 0.3s ease; }

    header {
      background-color: #4a3f35; color: #fff; padding: 20px 40px;
      position: relative; height: 70px; z-index: 999;
    }
    .back-button {
      position: absolute; left: 40px; top: 50%; transform: translateY(-50%);
      background-color: white; color: #4a3f35; padding: 8px 14px;
      border-radius: 5px; text-decoration: none; font-weight: bold;
    }
    .back-button:hover { background-color: #e7e3dc; }
    header h1 {
      position: absolute; left: 50%; top: 50%;
      transform: translate(-50%, -50%); font-size: 24px;
    }

    h2 { text-align: center; margin-bottom: 30px; color: #4a3f35; }

    .collection-grid {
      display: grid; grid-template-columns: repeat(auto-fill, minmax(300px, 1fr));
      gap: 30px; max-width: 1200px; margin: 0 auto;
    }
    .collection-item {
      background-color: #fff; border-radius: 10px; overflow: hidden;
      box-shadow: 0 2px 5px rgba(0,0,0,0.1);
      transition: transform .3s, box-shadow .3s;
    }
    .collection-item:hover {
      transform: translateY(-5px);
      box-shadow: 0 5px 15px rgba(0,0,0,0.2);
    }
    .collection-img { width: 100%; height: 200px; background: #e7e3dc; }
    .collection-info { padding: 20px; }
    .collection-title { font-size: 18px; margin-bottom: 10px; color: #4a3f35; font-weight: bold; }
    .collection-description { font-size: 14px; color: #666; line-height: 1.6; }
    .collection-era {
      display: inline-block; background: #f1ede9; padding: 5px 10px;
      border-radius: 20px; font-size: 12px; margin-top: 15px; color: #4a3f35;
    }

    footer { background: #4a3f35; color: #fff; text-align: center; padding: 20px; margin-top: 40px; }
  </style>
</head>
<body>

<header>
  <a href="index.jsp" class="back-button">Kembali</a>
  <h1>Koleksi Figure</h1>
</header>

<h2>Koleksi Figure Museum Towa</h2>

<div class="collection-grid">

<%-- ----------- DATA ARRAY DALAM JSP ----------- --%>
<%
    class Item {
      String title, description, era, image;
      Item(String t, String d, String e, String i) {
        title = t; description = d; era = e; image = i;
      }
    }

    java.util.List<Item> artCollection = new java.util.ArrayList<>();

    artCollection.add(new Item(
      "Patung Cut Nyak Dien",
      "Patung perunggu pahlawan nasional Cut Nyak Dien dalam posisi siaga memimpin perlawanan.",
      "Dibuat tahun 1985",
      "https://blue.kumparan.com/image/upload/fl_progressive,fl_lossy,c_fill,f_auto,q_auto:best,w_640/v1634025439/01ghd52ahjdkxszsbpd6kmzcpa.jpg"
    ));

    artCollection.add(new Item(
      "Lukisan Pangeran Diponegoro",
      "Lukisan cat minyak Pangeran Diponegoro bergaya romantisme.",
      "Tahun 1950",
      "https://img.okezone.com/content/2024/01/03/337/2948921/mengulik-alasan-kepala-perwira-belanda-digambar-berukuran-besar-di-lukisan-penangkapan-pangeran-diponegoro-qItcRbvFcq.jpg"
    ));

    artCollection.add(new Item(
      "Manuskrip Tulisan Kartini",
      "Salinan surat asli R.A. Kartini yang menggambarkan pemikiran visionernya.",
      "Replika surat tahun 1901",
      "https://assets.kompasiana.com/items/album/2019/04/21/photo-2019-04-21-12-24-00-5cbc76b395760e308b528442.jpg?t=o&v=350"
    ));

    artCollection.add(new Item(
      "Koleksi Benda Pribadi Soekarno",
      "Peci, kacamata, dan alat tulis milik Presiden Soekarno.",
      "Tahun 1945–1965",
      "https://assets.promediateknologi.id/.../b8a.jpg"
    ));

    artCollection.add(new Item(
      "Patung Sultan Hasanuddin",
      "Patung Sultan Hasanuddin dengan ornamen khas Makassar.",
      "Dibuat tahun 1975",
      "https://indonesiatimur.co/wp-content/uploads/2013/07/sultan.jpg"
    ));

    artCollection.add(new Item(
      "Supersemar",
      "Replika Supersemar lengkap dengan tanda tangan.",
      "Replika dokumen 1966",
      "https://cdn-2.tstatic.net/tribunnews/foto/bank/images/surat-perintah-11-maret-2.jpg"
    ));

    artCollection.add(new Item(
      "Diorama Gajah Mada",
      "Diorama Sumpah Palapa dengan detail kerajaan Majapahit.",
      "Representasi abad ke-14",
      "https://blogger.googleusercontent.com/.../Sumpah+Palapa+Gajah+Mada+2.JPG"
    ));

    artCollection.add(new Item(
      "Foto Ki Hajar Dewantara",
      "Koleksi foto langka pendiri Taman Siswa.",
      "Tahun 1922–1940",
      "https://statik.unesa.ac.id/.../paud.jpg"
    ));

    artCollection.add(new Item(
      "Keris Sunan Kalijaga",
      "Replika keris pusaka dengan pamor khas.",
      "Replika abad ke-16",
      "https://images.tokopedia.net/.../keris.jpg"
    ));

    artCollection.add(new Item(
      "Dokumentasi Bung Tomo",
      "Foto dan rekaman suara perjuangan 10 November.",
      "Tahun 1945",
      "https://mobile.isukarno-perpusbungkarno.../koleksi.jpg"
    ));

    artCollection.add(new Item(
      "Lukisan Raja-Raja Mataram",
      "Seri lukisan raja Mataram Islam.",
      "Dibuat tahun 1990",
      "https://asset-a.grid.id/.../lukisan.jpg"
    ));

    artCollection.add(new Item(
      "Artefak Tuanku Imam Bonjol",
      "Al-Quran dan jubah perang peninggalan Imam Bonjol.",
      "Awal abad ke-19",
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTgEY_HeLSB..."
    ));
%>

<%-- ----------- LOOPING TAMPILAN ----------- --%>
<%
  for (Item i : artCollection) {
%>
    <div class="collection-item">
      <div class="collection-img">
        <img src="<%= i.image %>" alt="<%= i.title %>" style="width:100%; height:200px; object-fit:cover;">
      </div>
      <div class="collection-info">
        <h3 class="collection-title"><%= i.title %></h3>
        <p class="collection-description"><%= i.description %></p>
        <span class="collection-era"><%= i.era %></span>
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

