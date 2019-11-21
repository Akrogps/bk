const initShowOpenNow = () => {
  const toggleButton = document.getElementById("show-open-now-box");
  const notOpenPlaces = document.querySelectorAll(".not-open-now");
  const notOpenText = document.getElementById('label-text2');

  toggleButton.addEventListener("click", function(event) {
    notOpenPlaces.forEach((place) => {
      place.classList.toggle("not-open-opacity");
    });
    notOpenText.classList.toggle("not-open-text-color");
  });
};

export { initShowOpenNow };
