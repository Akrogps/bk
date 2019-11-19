let elements = [];

const initShowSelectedFields = (class_name, slice_number) => {
  const show = document.getElementById("fields-selected");
  let fields = document.querySelectorAll(class_name);

  fields.forEach((field) => {
    field.addEventListener("click", function(event) {
      const text = field.id.slice(slice_number);
      if (elements.includes(text)) {
        elements = elements.filter(field => field !== text);
      } else {
        elements.push(text);
      }
      show.innerHTML = "";
      elements.forEach((element) => {
        show.insertAdjacentHTML("beforeend", `
          <div class="field-selected">${element}</div>
        `);
      });
    });
  });

  window.addEventListener("load", function(event) {
    console.log(elements);
    elements.forEach((element) => {
      show.insertAdjacentHTML("beforeend", `
        <div class="field-selected">${element}</div>
      `);
    });
  });
};

export { initShowSelectedFields }
