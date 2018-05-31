function confirmationCall() {

const button = document.getElementById('confirmcall');
button.addEventListener('click', (event) => {
  event.target.style.color = "green";
  event.target.innerText = 'Call confirmed !';
  const id = event.currentTarget.getAttribute("data-project-id");
  console.log(id)
  fetch(`/projects/${id}/confirm_call`, {
    method: "PATCH"
  });
});
}


export { confirmationCall };
