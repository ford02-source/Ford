<?php
include "koneksi.php";

$queryAmbil = mysqli_query($conn, "SELECT * FROM members ORDER BY nim ASC");
?>
<!DOCTYPE html>
<html lang="id">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>FORD! - Future!</title>
  <link rel="stylesheet" href="header.css">
  <link rel="stylesheet" href="vision.css?v=2">
  <link rel="stylesheet" href="footer.css?v=2">
</head>
<body>
   <!-- Navbar -->
  <nav class="navbar">
    <div class="logo">
      <img src="images/img2.png" alt="Logo Kelas">
      <span> FORD!</span>
    </div>
          
     <!-- Tombol Hamburger -->
  <div class="menu-toggle" id="menu-toggle">
    <span></span>
    <span></span>
    <span></span>
  </div>

    <div class="nav-wrapper">
    <div class="mobile-logo">
    <img src="images/img2.png" alt="Logo Kelas">
    <span> FORD!</span>
  </div>

            
      <ul class="nav-links">
        <li><a href="index.html">About Us!</a></li>
        <li class="active"><a href="vision.php">Our Vision</a></li>
        <li><a href="memberreal.php">Meet Our Member!!!</a></li>
        <li><a href="quotes.html">Quotes</a></li>
        <li><a href="fortune.html">Fortune!</a></li>
      </ul>
    <div class="highlight"></div>
  </div>


  <div class="lang">
    <img src="images/id-flag.png" alt="ID Flag">
    <span>Idn</span>
  </div>
</nav>


  <!-- Content -->
  <div class="content">
    <?php
    if(mysqli_num_rows($queryAmbil) > 0){
      while($row = mysqli_fetch_assoc($queryAmbil)){
          // ambil dan sanitize data
          $nama = htmlspecialchars($row['nama']);
          $nim  = htmlspecialchars($row['nim']);
          $vision = htmlspecialchars($row['vision']);
  	?>
    <div class="name-box" id="nameBox"><?php echo $nama; ?></div>
    <div class="quote-box" id="quoteBox"><?php echo $vision; ?></div>
    <?php
      } // end while
    } else {
      echo "<p>Tidak ada data quotes.</p>";
    }
  ?>
  </div>

      <!-- Footer -->
  <footer class="footer">
    <div class="footer-container">
      <div class="footer-left">
        <img src="images/img2.png" alt="Logo Kelas" class="footer-logo">
        <h3>FORD!</h3>
        <p>Kelompok Mahasiswa Rombel 2 <br> Pendidikan Bahasa dan Sastra Indonesia <br> Universitas Negeri Semarang</p>
      </div>

      <div class="footer-links">
        <h4>Menu</h4>
        <ul>
          <li><a href="home.html">About Us</a></li>
          <li class="active"><a href="vision.php">Our Vision</a></li>
          <li><a href="memberreal.html">Meet Our Member</a></li>
          <li><a href="quotes.html">Quotes</a></li>
          <li><a href="fortune.html">Fortune!</a></li>
        </ul>
      </div>

      <div class="footer-contact">
        <h4>Contact</h4>
        <p>Email: <a href="mailto:e.fordzz2@mail.com">e.fordzz2@mail.com</a></p>
        <p>Instagram: <a href="https://www.instagram.com/ford_unice/" target="https://www.instagram.com/ford_unice/">@ford_unice</a> </p>
      </div>
    </div>
    <div class="footer-bottom">
      <p>&copy; 2025 FORD! - All Rights Reserved.</p>
    </div>
  </footer>

  <script src="header.js?v=2"></script>
  <script src="vision.js"></script>
</body>
</html>
