<%-- 
    Document   : revisi
    Created on : Dec 15, 2025, 1:23:07 PM
    Author     : Verrel
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="id">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>Tugas SIM Kelompok 3 05TPLP002</title>
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
      transition: margin-left 0.3s ease;
      background-image: url(https://a.travel-assets.com/findyours-php/viewfinder/images/res70/210000/210473-Museum-Of-Fine-Arts-And-Ceramics.jpg);
      background-size: cover;
    }

    .sidebar {
      height: 100%;
      width: 250px;
      position: fixed;
      top: 0;
      left: -250px;
      background-color: #3d342d;
      padding-top: 60px;
      transition: 0.3s;
      z-index: 1000;
    }

    .sidebar a {
      padding: 15px 25px;
      text-decoration: none;
      color: #fff;
      display: block;
      transition: 0.3s;
    }

    .sidebar a:hover {
      background-color: #5c4b3a;
    }

    .sidebar.active {
      left: 0;
    }

    .dropdown {
      position: relative;
    }

    .dropdown-content {
      display: none;
      background-color: #4a3f35;
      position: relative;
      padding-left: 10px;
    }

    .dropdown-content a {
      padding: 12px 25px;
      display: block;
      color: #fff;
      text-decoration: none;
    }

    .dropdown-content a:hover {
      background-color: #5c4b3a;
    }

    .sidebar-toggle {
      font-size: 24px;
      cursor: pointer;
      color: white;
      margin-right: 20px;
    }

    header {
      background-color: #4a3f35;
      color: #fff;
      padding: 20px 40px;
      display: flex;
      justify-content: space-between;
      align-items: center;
      position: relative;
      z-index: 999;
    }

    header h1 {
      font-size: 24px;
    }

    .header-logo {
      width: 60px;
      height: 60px;
      border-radius: 50%;
      margin-right: 15px;
      vertical-align: middle;
      border: 2px solid #fff;
      box-shadow: 0 2px 4px rgba(0,0,0,0.2);
      object-fit: cover;
    }

    nav a {
      color: #fff;
      margin-left: 20px;
      text-decoration: none;
      font-weight: bold;
    }

    nav a:hover {
      text-decoration: underline;
    }

    .hero {
      background-image: url('https://images.unsplash.com/photo-1576075579055-198d2cfd9c48');
      background-size: cover;
      background-position: center;
      height: 60vh;
      display: flex;
      align-items: center;
      justify-content: center;
      color: #fff;
      text-align: center;
    }

    .hero h2 {
      background-color: rgba(0, 0, 0, 0.5);
      padding: 20px;
      border-radius: 10px;
      font-size: 36px;
    }

    .section {
      padding: 40px;
      max-width: 1000px;
      margin: auto;

    }

    .section h3 {
      background-color: rgba(0, 0, 0, 0.5);
      color: #fff;
      font-size: 28px;
      margin: 20px auto;
      padding: 12px 24px;
      border-radius: 10px;
      display: inline-block;
      box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
      text-align: center;
}

    .dashboard {
      display: flex;
      gap: 20px;
      margin-top: 20px;
      flex-wrap: wrap;
      justify-content: space-between;
    }

    .dashboard.vertical {
      flex-direction: column;
      align-items: center;
    }

    .dashboard-card {
      flex: 1 1 30%;
      background-color: #e7e3dc;
      padding: 30px;
      border-radius: 10px;
      text-align: center;
      box-shadow: 0 2px 5px rgba(0,0,0,0.1);
    }

    .dashboard-card.wide {
      width: 100%;
      max-width: 700px;
      padding: 50px;
    }

    .dashboard-card h4 {
      font-size: 32px;
      margin-bottom: 10px;
      color: #4a3f35;
    }

    .dashboard-card p {
      font-size: 16px;
      color: #333;
    }

    .dashboard-card button {
      margin-top: 15px;
      padding: 10px 20px;
      border: none;
      background-color: #4a3f35;
      color: white;
      border-radius: 5px;
      cursor: pointer;
    }

    .dashboard-card button:hover {
      background-color: #3a2f28;
    }

    footer {
      background-color: #4a3f35;
      color: #fff;
      text-align: center;
      padding: 20px;
      margin-top: 40px;
    }

    body.sidebar-open {
      margin-left: 250px;
    }

    .live-indicator {
      display: inline-block;
      width: 8px;
      height: 8px;
      background-color: #28a745;
      border-radius: 50%;
      margin-left: 8px;
      animation: pulse 2s infinite;
    }

    .live-indicator.updating {
      background-color: #ffc107;
      animation: pulse 0.5s infinite;
    }

    .live-indicator.error {
      background-color: #dc3545;
      animation: none;
    }

    @keyframes pulse {
      0% { opacity: 1; }
      50% { opacity: 0.3; }
      100% { opacity: 1; }
    }

    .last-updated {
      font-size: 12px;
      color: #666;
      margin-top: 5px;
    }
  </style>
</head>
<body>

  <!-- Sidebar -->
  <div class="sidebar" id="sidebar">
    <a href="revisi.jsp">Dashboard</a>

    <div class="dropdown">
      <a href="#" onclick="toggleDropdown(event)">Data Koleksi ▼</a>
        <div class="dropdown-content" id="dropdown-koleksi">
          <a href="koleksi/seni.jsp">Koleksi Seni</a>
          <a href="koleksi/sejarah.jsp">Koleksi Sejarah</a>
          <a href="koleksi/budaya.jsp">Koleksi Budaya</a>
          <a href="koleksi/figure">Koleksi Figure</a>
        </div>
    </div>

    <div class="dropdown">
      <a href="#" onclick="toggleTentang(event)">Tentang ▼</a>
      <div class="dropdown-content" id="dropdown-tentang">
        <a href="museum.php">Pengertian Museum</a>
        <a href="sejarah.php">Sejarah Museum</a>
      </div>
    </div>

    <div class="dropdown">
      <a href="#" onclick="toggleLayanan(event)">Layanan ▼</a>
      <div class="dropdown-content" id="dropdown-layanan">
        <a href="kunjungan.php">Kunjungan Museum</a>
        <a href="formTiket.php">Tiket Kunjungan</a>
        <a href="pengaduan.php">Pengaduan Pengunjung</a>
      </div>
    </div>
    <a href="Lokasi.php">Lokasi</a>
    <a href="Event.php">Kegiatan</a>
    <a href="index.html">Logout</a>
  </div>

  <!-- Header -->
  <header>
    <div>
      <span class="sidebar-toggle" onclick="toggleSidebar()">☰</span>
      <img src="MuseumTowaCantik.png" alt="Museum Logo" class="header-logo">
      <h1 style="display:inline">Museum Towa</h1>
    </div>
    <nav>
      <a href="contact.php">Contact</a>
    </nav>
  </header>

  <!-- Hero Section -->
  <div class="hero">
    <h2>Selamat Datang di Sistem Informasi Museum Towa</h2>
  </div>

  <!-- Statistik Pengunjung & Pengaduan -->
  <div class="section">
    <div style="text-align:center;">
    <h3>Statistik Pengunjung</h3>
    <div class="dashboard vertical">
      <div class="dashboard-card wide">
        <h4 id="user-count-display">👥 <span id="user-count"><?php echo number_format($user_count); ?></span><span class="live-indicator" id="live-indicator"></span></h4>
        <p>Jumlah Pengunjung Terdaftar</p>
        <div class="last-updated" id="last-updated">Terakhir diperbarui: <?php echo date('d/m/Y H:i:s'); ?></div>
        <button onclick="refreshUserCount()">Refresh Data</button>
      </div>
      <div class="dashboard-card wide">
        <h4>📝 37</h4>
        <p>Pengaduan Pengunjung</p>
        <button onclick="alert('Data Pengaduan Bersifat Pribadi dan Tertutup')">Lihat Detail</button>
      </div>
    </div>
  </div>

  <!-- Dashboard Author -->
  <div class="section">
    <div style="text-align:center;">
    <h3>Author</h3>
    <div class="dashboard">
      <div class="dashboard-card">
        <h4>Alfreza Routya Faizan</h4>
        <p>Mahasiswa Universitas Pamulang</p>
        <p>221011450096</p>
      </div>
      <div class="dashboard-card">
        <h4>Verrel Aulia Rahman</h4>
        <p>Mahasiswa Universitas Pamulang</p>
        <p>221011450139</p>
      </div>
      <div class="dashboard-card">
        <h4>Fadhil Nata Pratama</h4>
        <p>Mahasiswa Universitas Pamulang</p>
        <p>221011450131</p>
      </div>
    </div>
  </div>

  <!-- Footer -->
  <footer>
    &copy; 2025 Museum Towa. Semua hak dilindungi oleh kami.
  </footer>

  <!-- JavaScript -->
  <script>
    function toggleSidebar() {
      const sidebar = document.getElementById("sidebar");
      const body = document.body;
      sidebar.classList.toggle("active");
      body.classList.toggle("sidebar-open");
    }

    function toggleDropdown(event) {
      event.preventDefault();
      const dropdown = document.getElementById("dropdown-koleksi");
      dropdown.style.display = dropdown.style.display === "block" ? "none" : "block";
    }

    function toggleTentang(event) {
      event.preventDefault();
      const dropdown = document.getElementById("dropdown-tentang");
      dropdown.style.display = dropdown.style.display === "block" ? "none" : "block";
    }
    
    function toggleLayanan(event) {
      event.preventDefault();
      const dropdown = document.getElementById("dropdown-layanan");
      dropdown.style.display = dropdown.style.display === "block" ? "none" : "block";
    }

    function updateUserCount() {
      const indicator = document.getElementById('live-indicator');
      indicator.className = 'live-indicator updating';
      
      fetch('get_user_count.php')
        .then(response => response.json())
        .then(data => {
          if (data.success) {
            document.getElementById('user-count').textContent = data.formatted_count;
            document.getElementById('last-updated').textContent = 'Terakhir diperbarui: ' + 
              new Date().toLocaleString('id-ID');
            indicator.className = 'live-indicator';
          } else {
            indicator.className = 'live-indicator error';
            console.error('Failed to fetch user count');
          }
        })
        .catch(error => {
          console.error('Error:', error);
          indicator.className = 'live-indicator error';
        });
    }

    function refreshUserCount() {
      updateUserCount();
    }

    // Auto refresh every 30 seconds
    setInterval(updateUserCount, 30000);

    // Update on page visibility change (when user comes back to tab)
    document.addEventListener('visibilitychange', function() {
      if (!document.hidden) {
        updateUserCount();
      }
    });
  </script>

</body>
</html>
