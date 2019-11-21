const initHideMap = () => {
  const checkbox = document.getElementById('show-map-box');
  const map = document.getElementById('map');
  const leftStyleContainer = document.querySelector('.search-cards');
  const maptext = document.querySelector('.label-text');

  checkbox.addEventListener("click", function(event) {
    map.classList.toggle("map-toggle");
    leftStyleContainer.classList.toggle("col-lg-12");
    maptext.classList.toggle("map-text-color");
  });
};

export { initHideMap };
