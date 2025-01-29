// frontend.js
export const nom_hotel = document.querySelector('#input_nom_hotel');
export const city_hotel = document.querySelector('#input_city_hotel');
export const adress_hotel = document.querySelector('#input_adress_hotel');
export const reference_hotel = document.querySelector('#input_reference_hotel');

const ajout_bdd = document.querySelector('#button');

ajout_bdd.addEventListener('click', () => {
    // Utilisez les constantes exportées ici
    console.log(nom_hotel.value);
    console.log(city_hotel.value);
    console.log(adress_hotel.value);
    console.log(reference_hotel.value);
});