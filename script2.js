

let indexSlide = 0;
const slides = document.querySelectorAll(".slide");
const slidesContainer = document.querySelector(".slides");

function showSlide() {
  slidesContainer.style.transform = `translateX(-${indexSlide * 100}%)`;
  slidesContainer.style.transition = "transform 1s ease";

  indexSlide = (indexSlide + 1) % slides.length;
}

setInterval(showSlide, 4000); // ganti slide tiap 4 detik
