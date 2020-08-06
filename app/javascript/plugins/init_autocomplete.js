import places from 'places.js';
const initAutocomplete = () => {
  const addressInput = document.getElementById('bike_address');
  if (addressInput) {
    places({ container: addressInput });
  }
};
const initPagesAutocomplete = () => {
  const pagesAddressInput = document.getElementById('pages_bike_address');
  console.log(pagesAddressInput)
  if (pagesAddressInput) {
    places({ container: pagesAddressInput });
  }
};
const reconfigurableOptions = {
  language: 'de'
};

export { initAutocomplete, initPagesAutocomplete };
