const initHideMap = () => {
  const checkbox = document.getElementById('show-map-box');
  const map = document.getElementById('map');
  const leftStyleContainer = document.querySelector('.search-cards');

  checkbox.addEventListener("click", function(event) {
    map.classList.toggle("map-toggle");
    leftStyleContainer.classList.toggle("col-lg-12");
  });

};

export { initHideMap };
