<%-- 
    Document   : sejarah
    Created on : Dec 5, 2025, 12:50:51 PM
    Author     : Arueza
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="id">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>Koleksi Sejarah - Museum Towa</title>
  <style>
    * { box-sizing: border-box; margin: 0; padding: 0; font-family: 'Segoe UI', sans-serif; }
    body { background-color: #f9f9f9; color: #333; padding: 40px; transition: margin-left 0.3s ease; }

    header {
      background-color: #4a3f35; color: #fff; padding: 20px 40px;
      position: relative; z-index: 999; height: 70px;
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
      background: #fff; border-radius: 10px; overflow: hidden;
      box-shadow: 0 2px 5px rgba(0,0,0,0.1);
      transition: transform .3s, box-shadow .3s;
    }
    .collection-item:hover {
      transform: translateY(-5px); box-shadow: 0 5px 15px rgba(0,0,0,0.2);
    }
    .collection-img { width: 100%; height: 200px; background: #e7e3dc; }
    .collection-info { padding: 20px; }
    .collection-title { font-size: 18px; margin-bottom: 10px; color: #4a3f35; font-weight: bold; }
    .collection-description { font-size: 14px; color: #666; line-height: 1.6; }
    .collection-era {
      display: inline-block; background: #f1ede9; padding: 5px 10px;
      border-radius: 20px; font-size: 12px; margin-top: 15px; color: #4a3f35;
    }

    footer {
      background: #4a3f35; color:#fff; text-align:center;
      padding:20px; margin-top:40px;
    }
  </style>
</head>
<body>

<header>
  <a href="revisi.jsp" class="back-button">Kembali</a>
  <h1>Koleksi Sejarah</h1>
</header>

<h2>Koleksi Sejarah Museum Towa</h2>

<div class="collection-grid">

<%
    class Item {
        String title, description, era, image;
        Item(String t, String d, String e, String i) {
            title=t; description=d; era=e; image=i;
        }
    }

    java.util.List<Item> artCollection = new java.util.ArrayList<>();

    artCollection.add(new Item(
      "Prasasti Yupa",
      "Replika prasasti Yupa dari Kerajaan Kutai, prasasti tertua di Indonesia. Berisi tulisan Pallawa tentang Raja Mulawarman.",
      "Replika abad ke-4",
      "https://asset-a.grid.id/crop/0x0:0x0/x/photo/2023/12/08/isi-7-prasasti-yupajpg-20231208091719.jpg"
    ));
    artCollection.add(new Item(
      "Meriam Si Jagur",
      "Replika meriam kolonial Portugis dengan ornamen khas dan kisah mistis.",
      "Replika abad ke-16",
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTtKIq8OCn2TPZVEJ7rT4_ScwUsBt3RaETIGA&s"
    ));
    artCollection.add(new Item(
      "Peta Kuno Majapahit",
      "Reproduksi peta kekuasaan Majapahit berdasarkan Negarakertagama dan catatan sejarah.",
      "Reproduksi abad ke-14",
      "https://i.pinimg.com/564x/b3/13/24/b3132455c6f2b8f524b4df33243bc276.jpg"
    ));
    artCollection.add(new Item(
      "Artefak VOC di Batavia",
      "Koin, peralatan navigasi, dan arsip dagang peninggalan VOC.",
      "Abad ke-17 dan 18",
      "https://cdn.grid.id//crop/0x0:0x0/700x0/photo/nationalgeographic/201401152016220_b.jpg"
    ));
    artCollection.add(new Item(
      "Dokumen Proklamasi",
      "Replika naskah Proklamasi 17 Agustus 1945 beserta foto dokumentasi aslinya.",
      "Replika 1945",
      "https://radartasiktv.disway.id/upload/1e14504c7499c871409273dc1f49c478.jpg"
    ));
    artCollection.add(new Item(
      "Peta Perjanjian Giyanti",
      "Peta pembagian wilayah Mataram menjadi Surakarta & Yogyakarta.",
      "Reproduksi 1755",
      "https://upload.wikimedia.org/wikipedia/id/thumb/8/83/Jawa_Setelah_Perjanjian_Giyanti.png/1200px-Jawa_Setelah_Perjanjian_Giyanti.png"
    ));
    artCollection.add(new Item(
      "Artefak Kerajaan Sriwijaya",
      "Replika arca Buddha dan benda maritim Sriwijaya.",
      "Replika abad ke-7 hingga 13",
      "https://www.dailysports.id/upload/large/46a058bc259858a36b8fd0fe0ee06e10.png"
    ));
    artCollection.add(new Item(
      "Denah Benteng Vredeburg",
      "Denah asli perubahan struktur Benteng Vredeburg dari masa ke masa.",
      "Tahun 1790",
      "https://kebudayaan.kemdikbud.go.id/Vredeburg/wp-content/uploads/sites/60/2020/07/Denah-MBVY-1024x819.jpg"
    ));
    artCollection.add(new Item(
      "Koleksi Uang Kuno Nusantara",
      "Kepeng Tiongkok hingga uang ORI, menunjukkan perkembangan ekonomi.",
      "Abad ke-10 hingga 20",
      "https://c.inilah.com/reborn/2024/10/Uang_koin_kuno_menjadi_barang_bersejarah_yang_diburu_oleh_para_kolektor_Foto_Freepik_11zon_8bb0fbb413.jpg"
    ));
    artCollection.add(new Item(
      "Dokumentasi Konferensi Asia Afrika",
      "Dokumen dan foto KAA Bandung 1955.",
      "Tahun 1955",
      "https://mow.anri.go.id/storage/uploads/MOW-05-KAA-2.png"
    ));
    artCollection.add(new Item(
      "Artefak Perang Diponegoro",
      "Senjata, pakaian dan arsip sejarah Perang Diponegoro.",
      "Tahun 1825-1830",
      "https://akcdn.detik.net.id/customthumb/2015/02/07/10/102406_babad.jpg?w=700&q=90"
    ));
    artCollection.add(new Item(
      "Peta Pelayaran Majapahit",
      "Rekonstruksi jalur pelayaran Majapahit di Asia Tenggara.",
      "Rekonstruksi abad ke-14",
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ5eOLmgfd9jo29IJUzOdMNfaD6KnFM1x2rOECXJ4C28yloMmd6_xNnT8kLIt3sA6xd1ww"
    ));
%>

<% for (Item it : artCollection) { %>
  <div class="collection-item">
    <div class="collection-img">
      <img src="<%= it.image %>" alt="<%= it.title %>" style="width:100%; height:200px; object-fit:cover;">
    </div>
    <div class="collection-info">
      <h3 class="collection-title"><%= it.title %></h3>
      <p class="collection-description"><%= it.description %></p>
      <span class="collection-era"><%= it.era %></span>
    </div>
  </div>
<% } %>

</div>

<footer>
  &copy; 2025 Museum Towa. Semua hak dilindungi oleh kami.
</footer>

</body>
</html>

