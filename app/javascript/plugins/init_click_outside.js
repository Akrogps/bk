const initClickOutside = (dropdown_name, select_name) => {
  let dropdown = document.getElementById(dropdown_name);
  let select = document.getElementById(select_name);
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

export { initClickOutside };
