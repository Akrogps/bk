const initHideInputCheckboxes = () => {
  const booleans = document.querySelectorAll(".boolean");
  const dropdown1 = document.querySelectorAll(".elements-selected1");
  const dropdown2 = document.querySelectorAll(".elements-selected2");
  const dropdownHome = document.querySelectorAll(".tag-home");

  booleans.forEach((boolean) => {
    let booleanInput = boolean.querySelector(".boolean-input");
    let booleanLabel = boolean.querySelector(".boolean-label");
    booleanInput.style.display = "none";

    window.addEventListener("load", function(event) {
      if (booleanInput.checked) {
        booleanLabel.classList.add("form-select1");
        boolean.classList.add("form-select2");
      }
    });

    booleanInput.addEventListener("click", function(event) {
      booleanLabel.classList.toggle("form-select1");
      boolean.classList.toggle("form-select2");
    });
  });

  dropdown1.forEach((element) => {
    element.style.display = "none";
  });

  dropdown2.forEach((element) => {
    element.style.display = "none";
  });

  dropdownHome.forEach((element) => {
    let homeInput = element.querySelector(".tag-home-input");
    let homeLabel = element.querySelector(".tag-home-label");
    homeInput.style.display = "none";
    homeInput.addEventListener("click", function(event) {
      homeLabel.classList.toggle("text-blue");
    });
  });
};

export { initHideInputCheckboxes }
