// Data nama + cita-cita
//const visions = [
  //{ name: "Andi", quote: "Ingin menjadi seorang dokter yang bermanfaat bagi banyak orang." },
  //{ name: "Budi", quote: "Cita-citaku adalah membangun sekolah gratis untuk anak-anak." },
  //{ name: "Citra", quote: "Aku ingin menjadi penulis terkenal yang bukunya menginspirasi dunia." },
  //{ name: "Dewi", quote: "Mimpiku adalah menjadi insinyur dan membangun teknologi ramah lingkungan." }
//];

let index = 0;
const nameBox = document.getElementById("nameBox");
const quoteBox = document.getElementById("quoteBox");

// tampilkan pertama kali tanpa animasi keluar
nameBox.textContent = visions[0].name;
quoteBox.textContent = visions[0].quote;

// fungsi untuk ganti data dengan animasi
function showVision() {
  const vision = visions[index];

  // Animasi keluar
  nameBox.classList.add("fade-out");
  quoteBox.classList.add("fade-out");

  setTimeout(() => {
    // Update teks
    nameBox.textContent = vision.name;
    quoteBox.textContent = vision.quote;

    // Reset class biar animasi bisa dipakai ulang
    nameBox.className = "name-box fade-in-up";
    quoteBox.className = "quote-box fade-in-down";

    setTimeout(() => {
      nameBox.classList.remove("fade-in-up");
      quoteBox.classList.remove("fade-in-down");
    }, 1000);

  }, 1000);

  // Next index
  index = (index + 1) % visions.length;
}

// ganti setiap 5 detik
setInterval(showVision, 5000);
