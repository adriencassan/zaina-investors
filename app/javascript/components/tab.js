

function loadNavTab() {
  document.querySelectorAll(".tab").forEach((tab) => {
    tab.addEventListener("click", (event) => {
      document.querySelectorAll(".active").forEach((one) => {one.classList.remove("active")})
      event.currentTarget.classList.add("active");
    });
  });
}

export { loadNavTab };
