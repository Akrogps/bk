let elements = [];

const initShowSelectedFields = (class_name, slice_number) => {
  const show = document.getElementById("fields-selected");
  let fields = document.querySelectorAll(class_name);

  fields.forEach((field) => {
    let text = field.id.slice(slice_number);

    window.addEventListener("load", function(event) {
      if (field.checked) {
        elements.push(text);
      }
      show.innerHTML = "";
      elements.forEach((element) => {
        show.insertAdjacentHTML("beforeend", `
          <div class="field-selected">
            ${element}
          </div>
        `);
      });
    });

    field.addEventListener("click", function(event) {
      if (event.target.checked) {
        elements.push(text);
      } else {
        elements = elements.filter(field => field !== text);
      }
      show.innerHTML = "";
      elements.forEach((element) => {
        show.insertAdjacentHTML("beforeend", `
          <div class="field-selected">
            ${element}
          </div>
        `);
      });
    });
  });
};

export { initShowSelectedFields }
