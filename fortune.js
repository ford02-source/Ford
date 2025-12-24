const canvas = document.getElementById("wheelCanvas");
    const ctx = canvas.getContext("2d");
    let names = [];
    let angle = 0;
    let spinning = false;
    let isPreview = true;

    // Preview awal
    const previewNames = ["Item 1", "Item 2", "Item 3", "Item 4"];

    // Input nama
    const nameInput = document.getElementById("nameInput");
    const nameList = document.getElementById("nameList");

    nameInput.addEventListener("keypress", (e) => {
      if (e.key === "Enter") {
        e.preventDefault();
        const val = nameInput.value.trim();
        if (val) {
          if (isPreview) {
            names = [];
            isPreview = false;
          }
          names.push(val);
          renderList();
          drawWheel();
        }
        nameInput.value = "";
      }
    });

    function renderList() {
      nameList.innerHTML = "";
      names.forEach(n => {
        const li = document.createElement("li");
        li.textContent = n;
        nameList.appendChild(li);
      });
    }

    function drawWheel() {
      ctx.clearRect(0, 0, canvas.width, canvas.height);

      const data = isPreview ? previewNames : names;
      if (data.length === 0) return;

      const slice = 2 * Math.PI / data.length;

      data.forEach((name, i) => {
        const start = i * slice + angle;
        ctx.beginPath();
        ctx.moveTo(200, 200);
        ctx.arc(200, 200, 200, start, start + slice);
        ctx.fillStyle = i % 2 === 0 ? "#D04848" : "#fff";
        ctx.fill();
        ctx.stroke();

        // Teks di slice
        ctx.save();
        ctx.translate(200, 200);
        ctx.rotate(start + slice / 2);
        ctx.textAlign = "right";
        ctx.fillStyle = i % 2 === 0 ? "#fff" : "#D04848";
        ctx.font = "16px Arial";
        ctx.fillText(name, 180, 10);
        ctx.restore();
      });
    }

    drawWheel();

    // Fungsi easing untuk spin yang smooth
    function easeOut(t) {
      return 1 - Math.pow(1 - t, 3); // cubic easing
    }

    document.getElementById("spinBtn").addEventListener("click", () => {
      if (spinning || names.length === 0) return;
      spinning = true;

      const spinAngle = Math.random() * 360 + 1800; // 5–10 putaran
      const duration = 4000; // durasi 4 detik
      const start = performance.now();

      function animate(now) {
        const elapsed = now - start;
        const progress = Math.min(elapsed / duration, 1); // 0 → 1
        const eased = easeOut(progress);

        angle = eased * (spinAngle * Math.PI / 180);
        drawWheel();

        if (progress < 1) {
          requestAnimationFrame(animate);
        } else {
          spinning = false;
          selectWinner();
        }
      }
      requestAnimationFrame(animate);
    });

    function selectWinner() {
      const slice = 2 * Math.PI / names.length;
      const deg = (angle % (2 * Math.PI) + 2 * Math.PI) % (2 * Math.PI);
      const index = names.length - 1 - Math.floor(deg / slice);
      const winner = names[index];

      document.getElementById("winnerName").textContent = winner;
      document.getElementById("overlay").style.display = "flex";

      // hapus nama yg sudah menang
      names.splice(index, 1);
      renderList();
      drawWheel();
    }

    // Tutup overlay
    document.getElementById("closeOverlay").addEventListener("click", () => {
      document.getElementById("overlay").style.display = "none";
    });

    // Shuffle button
    document.getElementById("shuffleBtn").addEventListener("click", () => {
      for (let i = names.length - 1; i > 0; i--) {
        const j = Math.floor(Math.random() * (i + 1));
        [names[i], names[j]] = [names[j], names[i]];
      }
      renderList();
      drawWheel();
    });

    // Sort button
    document.getElementById("sortBtn").addEventListener("click", () => {
      names.sort((a, b) => a.localeCompare(b));
      renderList();
      drawWheel();
    });

    // Clear All button
    document.getElementById("clearBtn").addEventListener("click", () => {
      names = [];
      isPreview = true;
      renderList();
      drawWheel();
    });