const navLinks = document.querySelectorAll(".nav-links li");
const highlight = document.querySelector(".highlight");

function moveHighlight(element) {
  if (!element) return;
  const rect = element.getBoundingClientRect();
  const parentRect = element.parentElement.getBoundingClientRect();

  highlight.style.width = rect.width + "px";
  highlight.style.left = (rect.left - parentRect.left) + "px";
}

// Atur posisi awal ke tab aktif
const activeItem = document.querySelector(".nav-links li.active");
if (activeItem) moveHighlight(activeItem);

// Klik navigasi
navLinks.forEach(li => {
  li.addEventListener("click", () => {
    navLinks.forEach(l => l.classList.remove("active"));
    li.classList.add("active");
    moveHighlight(li);
  });
});

// Responsif
window.addEventListener("resize", () => {
  const activeItem = document.querySelector(".nav-links li.active");
  if (activeItem) moveHighlight(activeItem);
});

// === MENU RESPONSIVE (HAMBURGER) ===
const menuToggle = document.getElementById('menu-toggle');
const navWrapper = document.querySelector('.nav-wrapper');

menuToggle.addEventListener('click', () => {
  navWrapper.classList.toggle('active');
  menuToggle.classList.toggle('open');
});

// Tutup menu jika klik link
document.querySelectorAll('.nav-links a').forEach(link => {
  link.addEventListener('click', () => {
    navWrapper.classList.remove('active');
    menuToggle.classList.remove('open');
  });
});
