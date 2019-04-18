import utils from "./utils.js";

console.log('front.js loaded');

window.addEventListener('DOMContentLoaded', function(event) {

    console.log('DOMContentLoaded start!!');

    utils.say( "Hello, Static Import!");
    document.querySelector('#output').textContent = "DOM fully loaded and parsed!!";
    //document.querySelector('#output').addEventListener('click', () => {
    //});
});
