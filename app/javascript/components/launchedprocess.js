function launchedprocess() {

const button = document.getElementById('launchedprocess');
button.addEventListener('click', (event) => {
  event.target.style.color = "green";
  event.target.innerText = 'Process launched !';
});
}

export { launchedprocess };

