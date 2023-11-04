const profile = document.querySelector('.profile .profile-wrapper');

profile.addEventListener("click", () => {
  profile.children[2].classList.toggle('hidden');
})

const deleteBtn = document.querySelector('[name="delete"]');
const cofirmHidden = document.querySelector('.confirm');
const selectedRow = document.querySelectorAll('.select input');
const selectedRowArray = Array(...selectedRow);
const notchecked = elm => !elm.checked;


deleteBtn.addEventListener("click", () => {
  const empty = selectedRowArray.every(notchecked);

  if(empty) {
    alert("Tidak ada data yang diseleksi!");
  } else {
    let confirmation = confirm("Apakah anda yakin ingin menghapus data yang diseleksi?");
    cofirmHidden.setAttribute('value', confirmation);
  }
})
