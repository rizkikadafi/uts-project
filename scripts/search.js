const inputSearch = document.querySelector('#search');
const tableContainer = document.querySelector('.table-container');
const searchOption = document.querySelector('#search-option');
const searchOrder = document.querySelector('#search-order');

let xhr = new XMLHttpRequest();
inputSearch.addEventListener('keyup', () => {

  xhr.onreadystatechange = () => {
    if(xhr.readyState == 4 && xhr.status == 200) {
      tableContainer.innerHTML = xhr.responseText;
    }
  }
  
  xhr.open('GET', `ajax/data.php?keyword=${inputSearch.value}&orderby=${searchOption.value}&order=${searchOrder.value}`, true);
  xhr.send();
})

searchOption.addEventListener("change", () => {
  // let xhr = new XMLHttpRequest();
  
  xhr.onreadystatechange = () => {
    if(xhr.readyState == 4 && xhr.status == 200) {
      tableContainer.innerHTML = xhr.responseText;
    }
  }
  
  xhr.open('GET', `ajax/data.php?keyword=${inputSearch.value}&orderby=${searchOption.value}&order=${searchOrder.value}`, true);
  xhr.send();
})

searchOrder.addEventListener("change", () => {
  // let xhr = new XMLHttpRequest();
  
  xhr.onreadystatechange = () => {
    if(xhr.readyState == 4 && xhr.status == 200) {
      tableContainer.innerHTML = xhr.responseText;
    }
  }
  
  xhr.open('GET', `ajax/data.php?keyword=${inputSearch.value}&orderby=${searchOption.value}&order=${searchOrder.value}`, true);
  xhr.send();
})