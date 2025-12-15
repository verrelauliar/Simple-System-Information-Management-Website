<%-- 
    Document   : lokasi
    Created on : Dec 5, 2025, 12:49:04 PM
    Author     : Arueza
--%>

<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="id">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>Lokasi - Museum Arueza</title>
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

    /* Location Section */
    h2 {
      text-align: center;
      margin-bottom: 30px;
      color: #4a3f35;
    }

    .location-container {
      max-width: 1200px;
      margin: 30px auto;
      display: flex;
      flex-direction: column;
      gap: 40px;
    }

    .map-container {
      width: 100%;
      height: 450px;
      border-radius: 10px;
      overflow: hidden;
      box-shadow: 0 2px 5px rgba(0,0,0,0.1);
    }

    .map-container iframe {
      width: 100%;
      height: 100%;
      border: none;
    }

    .info-container {
      display: flex;
      flex-wrap: wrap;
      gap: 30px;
    }

    .info-box {
      flex: 1;
      min-width: 300px;
      background-color: #fff;
      padding: 25px;
      border-radius: 10px;
      box-shadow: 0 2px 5px rgba(0,0,0,0.1);
    }

    .info-box h3 {
      color: #4a3f35;
      margin-bottom: 15px;
      font-size: 20px;
      border-bottom: 2px solid #e7e3dc;
      padding-bottom: 10px;
    }

    .info-box p {
      margin-bottom: 10px;
      line-height: 1.6;
    }

    .info-box ul {
      list-style-type: none;
    }

    .info-box ul li {
      margin-bottom: 8px;
      display: flex;
      align-items: center;
    }

    .info-box ul li:before {
      content: "•";
      color: #4a3f35;
      font-weight: bold;
      display: inline-block;
      width: 1em;
      margin-right: 10px;
    }

    /* Footer */
    footer {
      background-color: #4a3f35;
      color: #fff;
      text-align: center;
      padding: 20px;
      margin-top: 40px;
    }

    @media (max-width: 768px) {
      body {
        padding: 20px;
      }

      .info-container {
        flex-direction: column;
      }

      .map-container {
        height: 350px;
      }
    }
  </style>
</head>
<body>
  <header>
    <a href="revisi.jsp" class="back-button">Kembali</a>
    <h1>Lokasi Museum</h1>
  </header>

  <div class="location-container">
    <h2>Kunjungi Museum Arueza</h2>

    <div class="map-container">
      <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d10396.608841789563!2d70.21843015!3d-49.34926759999999!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0xb314be5696479131%3A0x947bf414d8802b38!2sPort-aux-Francais%2C%20Sel.%20Perancis%20dan%20Daratan%20Antartika!5e0!3m2!1sid!2sid!4v1747821157076!5m2!1sid!2sid" 
        allowfullscreen="" 
        loading="lazy" 
        referrerpolicy="no-referrer-when-downgrade">
      </iframe>
    </div>

    <div class="info-container">
      <div class="info-box">
        <h3>Alamat</h3>
        <p>Port Aux Francais No. 1185</p>
        <p>Antartika</p>
        <p>South France Antartika, 10110</p>
        <p>France</p>
      </div>

      <div class="info-box">
        <h3>Jam Buka</h3>
        <ul>
          <li>Senin: 09.00 - 15.00 WIB</li>
          <li>Selasa: 09.00 - 15.00 WIB</li>
          <li>Rabu: 09.00 - 15.00 WIB</li>
          <li>Kamis: 09.00 - 15.00 WIB</li>
          <li>Jumat: TUTUP</li>
          <li>Sabtu: 09.00 - 14.00 WIB</li>
          <li>Minggu: TUTUP</li>
        </ul>
      </div>

      <div class="info-box">
        <h3>Kontak</h3>
        <p>Telepon: (021) 890-3821</p>
        <p>Email: info@museumtowa.fr</p>
        <p>Website: www.museumtowa.fr</p>
        <p>Instagram: @museum_towa</p>
      </div>
    </div>
  </div>

  <footer>
    &copy; 2025 Museum Towa. Semua hak dilindungi oleh kami.
  </footer>

</body>
</html>

