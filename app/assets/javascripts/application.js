//= require rails-ujs
//= require_tree .
//= require turbolinks

const updateProductQuantity = (e, action) => {
  console.log(e)
  Rails.ajax({
    url: "/order_lines/" + e.target.dataset.productId,
    type: "put",
    data: `amount=${action}`,
    success: (data) => {
      console.log(data)
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



