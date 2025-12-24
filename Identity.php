<?php
include "koneksi.php";

if (isset($_GET['nim'])) {
    $nim = mysqli_real_escape_string($conn, $_GET['nim']);
    $query = mysqli_query($conn, "SELECT * FROM members WHERE nim = '$nim'");
    $data = mysqli_fetch_assoc($query);

    if (!$data) {
        echo "<p style='text-align:center; font-family:sans-serif;'>Data tidak ditemukan 😢</p>";
        exit;
    }
} else {
    echo "<p style='text-align:center; font-family:sans-serif;'>Tidak ada NIM yang dikirim.</p>";
    exit;
}
?>
<!DOCTYPE html>
<html lang="id">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>FORD! - <?php echo htmlspecialchars($data['nama']); ?></title>
  <link rel="stylesheet" href="header.css">
  <link rel="stylesheet" href="identity.css?v=1">
  <link rel="stylesheet" href="footer.css">
</head>
<body class="home">

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
        <li><a href="vision.php">Our Vision</a></li>
        <li class="active"><a href="memberreal.php">Meet Our Member!!!</a></li>
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

<!-- Isi halaman -->
<section class="profile-header">
  <div class="profile-top">
    <div class="profile-photo">
      <img src="uploads/<?php echo htmlspecialchars($data['foto']); ?>" alt="Foto <?php echo htmlspecialchars($data['nama']); ?>">
    </div>

    <div class="profile-info">
      <h1><?php echo htmlspecialchars($data['nama']); ?></h1>
      <p><strong>NIM : </strong> <?php echo htmlspecialchars($data['nim']); ?></p>
      <p><strong>Tanggal Lahir : </strong> <?php echo htmlspecialchars($data['tgl_lhr']); ?></p>

      <?php if (!empty($data['ig'])): ?>
        <p><strong>Instagram:</strong> 
          <a href="https://instagram.com/<?php echo htmlspecialchars($data['ig']); ?>" target="_blank">
            @<?php echo htmlspecialchars($data['ig']); ?>
          </a>
        </p>
      <?php endif; ?>

      <?php if (!empty($data['email'])): ?>
        <p><strong>Email:</strong> 
          <a href="mailto:<?php echo htmlspecialchars($data['email']); ?>">
            <?php echo htmlspecialchars($data['email']); ?>
          </a>
        </p>
      <?php endif; ?>
    </div>
  </div>

  <div class="profile-logo">
    <img src="images/img1.png" alt="Logo">
  </div>
</section>



<div class="block">
  <!-- Vision -->
  <section class="card-block">
    <h2>Vision</h2>
    <p><?php echo !empty($data['vision']) ? htmlspecialchars($data['vision']) : 'Belum ada visi.'; ?></p>
  </section>

  <!-- Quotes -->
  <section class="card-block">
    <h2>Quotes</h2>
    <p><?php echo !empty($data['quotes']) ? '"' . htmlspecialchars($data['quotes']) . '"' : '"Belajar bukan hanya tentang nilai, tapi tentang hidup."'; ?></p>
  </section>

  <section class="social-container">
  <div class="social-card">
    <h3>Know Me Well 👊🏼</h3>
    <div class="social-links">
      <a href="mailto:emailkamu@gmail.com" class="social gmail" target="_blank">
        <img src="images/gmail.png" alt="Gmail">
      </a>
      <a href="https://instagram.com/username" class="social ig" target="_blank">
        <img src="images/instagram.png" alt="Instagram">
      </a>
      <a href="https://x.com/username" class="social x" target="_blank">
        <img src="images/twitter.png" alt="X (Twitter)">
      </a>
      <a href="https://facebook.com/username" class="social fb" target="_blank">
        <img src="images/facebook.png" alt="Facebook">
      </a>
      <a href="https://tiktok.com/username" class="social tiktok" target="_blank">
        <img src="images/tik-tok.png" alt="Tik Tok">
      </a>
    </div>
  </div>
</section>


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
        <li><a href="vision.html">Our Vision</a></li>
        <li><a href="memberreal.php">Meet Our Member</a></li>
        <li><a href="achieve.html">Achievement</a></li>
        <li><a href="quotes.html">Quotes</a></li>
      </ul>
    </div>

    <div class="footer-contact">
      <h4>Contact</h4>
        <p>Email: <a href="mailto:e.fordzz2@mail.com">e.fordzz2@mail.com</a></p>
        <p>Instagram: <a href="https://www.instagram.com/ford_unice/" target="https://www.instagram.com/ford_unice/">@ford_unice</a> </p>
    </div>
  </div>

  <div class="footer-bottom">
    <p>&copy; 2025 FORD! UNICE - All Rights Reserved.</p>
  </div>
</footer>

<script src="header.js?v=2"></script>
</body>
</html>
