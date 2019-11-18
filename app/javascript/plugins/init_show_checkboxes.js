const initShowCheckboxes = (dropdown_name, select_name) => {
  let dropdown = document.getElementById(dropdown_name);
  let select = document.getElementById(select_name);

  select.addEventListener("click", function(event) {
    if (dropdown_name === "checkboxes1") {
      if (!expanded1) {
        dropdown.style.display = "block";
        expanded1 = true;
      } else {
        dropdown.style.display = "none";
        expanded1 = false;
      }
    } else {
      if (!expanded2) {
        dropdown.style.display = "block";
        expanded2 = true;
      } else {
        dropdown.style.display = "none";
        expanded2 = false;
      }
    }
  });

  // Click outside feature
  document.addEventListener("click", function(event) {
    let isClickInside = dropdown.contains(event.target) || select.contains(event.target);
    if (!isClickInside) {
      dropdown.style.display = "none";
      if (dropdown_name === "checkboxes1") {
        expanded1 = false;
      } else {
        expanded2 = false;
      }
    }
  });
};

export { initShowCheckboxes };
