// Bisa dipakai kalau mau nambah interaksi
// Misalnya alert saat klik card
document.querySelectorAll(".card").forEach(card => {
  card.addEventListener("click", () => {
    const nama = card.querySelector(".basic").textContent;
    alert("Kamu mengklik " + nama);
  });
});
