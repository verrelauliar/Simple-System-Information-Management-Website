<%-- 
    Document   : museum
    Created on : Dec 5, 2025, 12:44:51 PM
    Author     : Arueza
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="id">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>Kontak Museum Arueza</title>
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

    /* Table Section */
    h2 {
      text-align: center;
      margin-bottom: 30px;
      color: #4a3f35;
    }

    table {
      width: 100%;
      max-width: 800px;
      margin: auto;
      border-collapse: collapse;
      background-color: #fff;
      border-radius: 10px;
      box-shadow: 0 2px 5px rgba(0,0,0,0.1);
      overflow: hidden;
    }

    thead {
      background-color: #4a3f35;
      color: white;
    }

    th, td {
      padding: 16px 20px;
      text-align: left;
    }

    tbody tr:nth-child(even) {
      background-color: #f1ede9;
    }

    tbody tr:hover {
      background-color: #e7e3dc;
    }

    th {
      font-size: 16px;
      text-transform: uppercase;
      letter-spacing: 0.5px;
    }

    td {
      font-size: 15px;
    }

    @media (max-width: 600px) {
      table, thead, tbody, th, td, tr {
        display: block;
      }

      thead {
        display: none;
      }

      tr {
        margin-bottom: 15px;
        background: white;
        border-radius: 10px;
        box-shadow: 0 1px 3px rgba(0,0,0,0.1);
      }

      td {
        padding: 12px;
        text-align: right;
        position: relative;
      }

      td::before {
        content: attr(data-label);
        position: absolute;
        left: 16px;
        top: 12px;
        font-weight: bold;
        color: #4a3f35;
        text-align: left;
      }
    }

    /* Footer */
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

  <!-- Header -->
  <header>
    <a href="revisi.jsp" class="back-button">Kembali</a>
    <h1>Museum Arueza</h1>
  </header>

  <!-- Kontak Section -->
  <h2>Pengertian Museum</h2>

  <table>
    <thead></thead>
    <tbody>
      <tr>
        <td data-label="">
          International Council of Museum (ICOM) mendefinisikan Museum sebagai sebuah lembaga non-profit yang melayani masyakat luas. 
          Adapun di dalamnya melakukan penilitian, mengumpulkan, dan memamerkan peninggalan sejarah yang terbuka untuk umum. 
          Mereka beroperasi dan berkomunikasi secara etis, profesional dan dengan partisipasi masyarakat, 
          menawarkan beragam pengalaman untuk pendidikan, kesenangan, refleksi dan berbagi pengetahuan.

          <br><br>

          Menurut Peraturan Pemerintah 66 tahun 2015 tentang Museum, dijelaskan bahwa museum adalah lembaga yang berfungsi melindungi, 
          mengembangkan, memanfaatkan koleksi, dan mengomunikasikannya kepada masyarakat. 
          Peraturan Pemerintah ini merupakan aturan pelaksanaan dari ketentuan Pasal 18 ayat (5) Undang-Undang Nomor 11 Tahun 2010 
          tentang Cagar Budaya. Dengan itu, Museum Geologi berdiri untuk merepresentasikan museum kepada masayakat Indonesia.
        </td>
      </tr>
    </tbody>
  </table>

  <!-- Footer -->
  <footer>
    &copy; 2025 Museum Towa. Semua hak dilindungi oleh kami.
  </footer>

</body>
</html>
