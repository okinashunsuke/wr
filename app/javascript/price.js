// ーーーーーーーーーーーidーーーーーーーーー

// window.addEventListener('load', () => {
//   const priceInput = document.getElementById("tanka");
//   const nop = document.getElementById("ninku");
//   priceInput.addEventListener("input", () => {
//     const nopValue = nop.value;
//     const inputValue = priceInput.value;
//     const addTaxDom = document.getElementById("seikyu");
//     addTaxDom.innerHTML = Math.floor(nopValue * inputValue)
//  })
// });


//ーーーーーーーーーーーｾﾚｸﾀｰｵｰﾙーーーーーーーーーーーー

//  window.addEventListener('load', () => {
//   const priceInput = document.querySelectorAll('.tanka');
//   const nop = document.querySelectorAll('.ninku');
//   const addTaxDom = document.querySelectorAll('.seikyu');
  
//   for(let i = 0; i < priceInput.length; i++){
  
//   priceInput[i].addEventListener('input', () => {
      
//     const nopValue = nop[i].value;

//     const inputValue = priceInput[i].value;
     
//     addTaxDom.innerHTML = Math.floor(inputValue * nopValue)
    
//      });
  
//  };

// });


// クラス名変更しますーーーーーーーーー----------------
window.addEventListener('load', () => {

  var total = [];

  window.addEventListener('input', () => {

  
   const priceInput = document.getElementById("tanka");
  
   priceInput.setAttribute('id', 'i');
  
   const nop = document.getElementById("ninku");
  
   nop.setAttribute('id', 'i');
  
   const addTaxDom = document.getElementById("seikyu");

   addTaxDom.setAttribute('id', 'i');

    priceInput.addEventListener("input", () => {

    
     const nopValue = nop.value;
  
     const inputValue = priceInput.value;
  
     const aa = Math.floor(nopValue * inputValue)
     
     addTaxDom.innerHTML = aa.toLocaleString()
     
    //  ---------------------------------------------------------
     const kei = document.getElementById("kei")

    const month = document.getElementById("month")
    var keisan = document.querySelectorAll("seikyui")
    });
     
     kei.addEventListener("click", () => {
      // total.push(aa)
      

      for (var i = 0, len = keisan.length; i < len; i++) {
        console.log(keisan[i]);
      }
      // var ninku = document.getElementsByClassName("ninku")
      // var tanka = document.getElementsByClassName("tanka")
      // tanka = [].slice.call( tanka ) ;
      // ninku =  Array.from(ninku)
      // // total.push(aa)
      // total.forEach(function(el) {
      //   console.log(total)
      // });
      // Array.from(tanka).forEach(function(el) {
      //   tanka.value
      // });
      // console.log(tanka[1])
      // tanka =  Array.from(tanka)
      // const ninkuValue = ninku.value;
      // const tankaValue = tanka.value;
      //  tanka.forEach( function ( tanka ) {
      //   console.log( tanka.tagName ) ;
      // } ) ;
    //  month.innerHTML = total
    // })

   
    // const seikyu = document.getElementsByClassName("seikyu")

    // console.log(seikyu)
    //  month.innerHTML = Math.floor( seikyu + )
  
  })
});

});



// month total

// console.log(nop[0])
// const goukei = parseInt(goukei)