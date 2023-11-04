const form_inputs = document.querySelectorAll('.form-input')
console.log(form_inputs[0].children.item(1));

form_inputs.forEach((e) => {
  const placeholder = e.children.namedItem('placeholder');
  const input = e.children.item(1);
  placeholder.addEventListener("click", () => {
    input.focus();
  })
})