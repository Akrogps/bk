const initShowCheckboxes = (dropdown_name, select_name) => {
  let checkboxes = document.getElementById(dropdown_name);
  let select = document.getElementById(select_name);

  select.addEventListener("click", function(event) {
    if (dropdown_name === "checkboxes1") {
      if (!expanded1) {
        checkboxes.style.display = "block";
        expanded1 = true;
      } else {
        checkboxes.style.display = "none";
        expanded1 = false;
      }
    } else {
      if (!expanded2) {
        checkboxes.style.display = "block";
        expanded2 = true;
      } else {
        checkboxes.style.display = "none";
        expanded2 = false;
      }
    }
  });

  // Click outside feature
  document.addEventListener("click", function(event) {
    let isClickInside = checkboxes.contains(event.target) || select.contains(event.target);
    if (!isClickInside) {
      checkboxes.style.display = "none";
      if (dropdown_name === "checkboxes1") {
        expanded1 = false;
      } else {
        expanded2 = false;
      }
    }
  });
};

export { initShowCheckboxes };
