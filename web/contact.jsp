<%-- 
    Document   : contact
    Created on : Dec 5, 2025, 12:49:26 PM
    Author     : Arueza
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="id">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>Kontak Museum Towa</title>
  <style>
    * { box-sizing: border-box; margin: 0; padding: 0; font-family: 'Segoe UI', sans-serif; }
    body { background-color: #f9f9f9; color: #333; padding: 40px; transition: margin-left 0.3s ease; }

    header { background-color: #4a3f35; color: #fff; padding: 20px 40px; position: relative; height: 70px; }
    .back-button { position: absolute; left: 40px; top: 50%; transform: translateY(-50%); background-color: white;
      color: #4a3f35; padding: 8px 14px; border-radius: 5px; text-decoration: none; font-weight: bold; }
    .back-button:hover { background-color: #e7e3dc; }

    header h1 { position: absolute; left: 50%; top: 50%; transform: translate(-50%, -50%); font-size: 24px; }

    h2 { text-align: center; margin-bottom: 30px; color: #4a3f35; }

    table {
      width: 100%; max-width: 800px; margin: auto; border-collapse: collapse;
      background-color: #fff; border-radius: 10px; box-shadow: 0 2px 5px rgba(0,0,0,0.1);
    }

    thead { background-color: #4a3f35; color: white; }
    th, td { padding: 16px 20px; text-align: left; }

    tbody tr:nth-child(even) { background-color: #f1ede9; }
    tbody tr:hover { background-color: #e7e3dc; }

    footer { background-color: #4a3f35; color: #fff; text-align: center; padding: 20px; margin-top: 40px; }
  </style>
</head>
<body>

<header>
  <a href="revisi.jsp" class="back-button">Kembali</a>
  <h1>Museum Towa</h1>
</header>

<h2>Daftar Kontak Museum Towa</h2>

<table>
  <thead>
    <tr>
      <th>Nama</th>
      <th>Posisi</th>
      <th>Email</th>
      <th>No. Telepon</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td data-label="Nama">Alfreza Routya Faizan</td>
      <td data-label="Posisi">Author Web Museum</td>
      <td data-label="Email">frezz@museum.fr</td>
      <td data-label="No. Telepon">0877-9201-1039</td>
    </tr>
    <tr>
      <td data-label="Nama">Verrel Aulia Rahman</td>
      <td data-label="Posisi">Author Web Museum</td>
      <td data-label="Email">nesromz@museum.fr</td>
      <td data-label="No. Telepon">0898-9181-0933</td>
    </tr>
    <tr>
      <td data-label="Nama">Abdul Hanif</td>
      <td data-label="Posisi">Author Web Museum</td>
      <td data-label="Email">hanyip@museum.fr</td>
      <td data-label="No. Telepon">0821-31232-1313</td>
    </tr>
  </tbody>
</table>

<footer>
  &copy; 2025 Museum Towa. Semua hak dilindungi oleh kami.
</footer>

</body>
</html>
