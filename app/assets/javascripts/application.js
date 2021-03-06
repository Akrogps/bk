//= require rails-ujs
//= require_tree .

const updateProductQuantity = (e, action) => {
  Rails.ajax({
    url: "/order_lines/" + e.target.dataset.productId,
    type: "put",
    data: `amount=${action}`,
    success: (data) => {
      location.reload()
    }
  })
}

// input.addEventListener('input', (event) => {
//   fetch("/order_lines/autocomplete?query=" + event.target.value)
//   .then((data) => {
//     return data.json()
//    // location.reload()
//   })

const destroyProduct = (e) => {
  console.log("destroy product", e.target.dataset.productId)
  Rails.ajax({
    url: "/order_lines/" + e.target.dataset.productId,
    type: "delete",
    success: (data) => {
      location.reload()
    }
  })
}

let productLinesAdd = document.querySelectorAll(".product-add-one")
productLinesAdd.forEach(productLine => {
  productLine.addEventListener("click", (e) => updateProductQuantity(e, "add_one"))
})

let productLinesRemove = document.querySelectorAll(".product-remove-one")
productLinesRemove.forEach(productLine => {
  productLine.addEventListener("click", (e) => updateProductQuantity(e, "remove_one"))
})

let productDestroys = document.querySelectorAll(".destroy-product")
if(productDestroys){
  productDestroys.forEach(productLine => {
    productLine.addEventListener("click", (e) => destroyProduct(e))
  })
}



