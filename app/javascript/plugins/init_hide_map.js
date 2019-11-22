const initHideMap = () => {
  const checkbox = document.getElementById('show-map-box');
  const map = document.getElementById('map');
  const leftStyleContainer = document.querySelector('.search-cards');
  const mapText = document.getElementById('label-text1');
  const textOverMap = document.getElementById('map-over');

  if (!checkbox) {
    return
  }

  checkbox.addEventListener("click", function(event) {
    map.classList.toggle("map-toggle");
    leftStyleContainer.classList.toggle("col-lg-12");
    mapText.classList.toggle("map-text-color");
    textOverMap.classList.toggle("map-toggle");
  });
};

export { initHideMap };
