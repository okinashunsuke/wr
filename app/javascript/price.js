window.addEventListener('input', () => {
   const priceInput = document.getElementById("price");
   priceInput.setAttribute('id', 'i');
   const nopInput = document.getElementById("nop");
   nopInput.setAttribute('id', 'i');
   const addTotalDom = document.getElementById("total");
   addTotalDom.setAttribute('id', 'i');
    priceInput.addEventListener("input", () => {
     const nopValue = nopInput.value;
     const inputValue = priceInput.value;
     const total = Math.floor(nopValue * inputValue)
     addTotalDom.innerHTML = total.toLocaleString()
    });
});
