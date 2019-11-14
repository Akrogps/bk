import places from 'places.js';

const initAutocomplete = () => {
  const addressInput = document.getElementById('location-searchbar');
  if (addressInput) {
    places({ container: addressInput });
  }
};

export { initAutocomplete };
