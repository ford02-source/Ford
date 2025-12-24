const track = document.querySelector('.carousel-track');
const cards = document.querySelectorAll('.card');
const prevBtn = document.querySelector('.prev');
const nextBtn = document.querySelector('.next');

let index = 0;
let cardWidth = cards[0].offsetWidth + 20; // lebar + margin
let autoSlide; 

// ✅ Update posisi & kasih highlight ke card tengah
function updateCarousel() {
  track.style.transform = `translateX(${-index * cardWidth}px)`;

  cards.forEach((card, i) => {
    card.classList.remove('active');
    if (i === index) {
      card.classList.add('active');
    }
  });
}

// Tombol Next
nextBtn.addEventListener('click', () => {
  index = (index + 1) % cards.length;
  updateCarousel();
  resetAutoSlide();
});

// Tombol Prev
prevBtn.addEventListener('click', () => {
  index = (index - 1 + cards.length) % cards.length;
  updateCarousel();
  resetAutoSlide();
});

// ✅ Auto Slide tiap 3 detik
function startAutoSlide() {
  autoSlide = setInterval(() => {
    index = (index + 1) % cards.length;
    updateCarousel();
  }, 3000);
}

// Reset interval biar smooth kalo user klik tombol
function resetAutoSlide() {
  clearInterval(autoSlide);
  startAutoSlide();
}

// Jalankan awal
updateCarousel();
startAutoSlide();
