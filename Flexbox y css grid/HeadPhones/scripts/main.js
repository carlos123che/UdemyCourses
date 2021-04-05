AOS.init(); //inicializar AOS library

let menu = document.getElementById("menu");
let menubar = document.getElementById("menu-bar")

menubar.addEventListener('click', function(){
    menu.classList.toggle('menu-toggle');
})
