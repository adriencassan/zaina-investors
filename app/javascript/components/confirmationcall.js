function confirmationCall() {
const button = document.getElementById('confirmcall');
if (button == null){ return}
button.addEventListener('click', (event) => {
  event.target.style.color = "green";
  event.target.innerText = 'Call confirmed !';
  const id = event.currentTarget.getAttribute("data-project-id");
  fetch(`/projects/${id}/confirm_call`, {
    method: "PATCH"
  });
});
}


export { confirmationCall };
