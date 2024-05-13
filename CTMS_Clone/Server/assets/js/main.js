// Show navbar
const showMenu = (headerToggle, navbarId) => {
    const toggleBtn = document.getElementById(headerToggle),
        nav = document.getElementById(navbarId);
    if (headerToggle && navbarId) {
        toggleBtn.addEventListener('click', () => {
            nav.classList.toggle('show-menu');
            toggleBtn.classList.toggle("uil-times");
        });
    }
}
showMenu('header-toggle', 'navbar');

// link active 
const linkColor = document.querySelectorAll(".nav__link");
function colorLink() {
    linkColor.forEach((element) => {
        element.classList.remove("active");
        this.classList.add("active");
    });
}
linkColor.forEach(element => element.addEventListener('click', colorLink));

// Drop menu
//const optionMenu = document.querySelector(".table__top-field-drop"),
//    selectBtn = optionMenu.querySelector(".drop-btn"),
//    options = optionMenu.querySelectorAll(".drop-option"),
//    btnText = optionMenu.querySelector(".drop-btn__text");
//console.log(options);

//options.forEach(option => {
//    option.addEventListener('click', () => {
//        let selectOption = option.querySelector('.drop-option__text').innerText;
//        console.log(selectOption);
//        btnText.innerText = selectOption
//    });
//});

//// Light Dark theme
//const themeBtn = document.getElementById('theme-button');
//const darkTheme = "dark-theme";
//const iconTheme = "uil-moon";

//// Chủ đề đã chọn trước đó (nếu người dùng đã chọn)
//const selectedTheme = localStorage.getItem('selected-theme');
//const selectedIcon = localStorage.getItem('selected-icon');

//// Chúng ta có được dòng điện mà giao diện có bằng cách xác thực lớp light-theme
//const getCurrentTheme = () => document.body.classList.contains(darkTheme) ? "dark" : "light";
//const getCurrentIcon = () => themeBtn.classList.contains(iconTheme) ? "uil uil-sun" : "uil uil-moon";

// Chúng tôi xác thực nếu trước đó người dùng đã chọn một chủ đề
//if (selectedTheme) {
//    document.body.classList[selectedTheme === "light" ? "add" : "remove"](lightTheme);
//    themeBtn.classList[selectedIcon === "uil uil-sun" ? "add" : "remove"](iconTheme);
//}

//themeBtn.addEventListener('click', () => {
//    // Thêm, xoá
//    document.body.classList.toggle(darkTheme);
//    themeBtn.classList.toggle(iconTheme);

//    localStorage.setItem("selected-theme", getCurrentTheme());
//    localStorage.setItem("selected-icon", getCurrentIcon());
//})