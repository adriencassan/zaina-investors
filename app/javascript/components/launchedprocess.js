function launchedprocess() {
const button = document.getElementById('launchedprocess');
if (button == null){ return}
button.addEventListener('click', (event) => {
  const id = event.currentTarget.getAttribute("data-project-id");
  fetch(`/projects/${id}/launch_process`, {
    method: "PATCH"
  });
});
}


export { launchedprocess };
