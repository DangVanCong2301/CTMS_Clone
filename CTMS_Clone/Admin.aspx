<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="CTMS_Clone.Admin" %>

<%@ Register Src="~/Server/cms/AdminLoadControl.ascx" TagPrefix="uc1" TagName="AdminLoadControl" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>CTMS - Một sản phẩm của VanCong</title>
    <link href="Server/assets/css/styles.css" rel="stylesheet" />
    <link href="Server/assets/css/responsive.css" rel="stylesheet" />
    <link href="Server/assets/css/detail.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://unicons.iconscout.com/release/v4.0.0/css/line.css"/>
    <style>
        :root {
            --header-height: 3.5rem;
            --nav-width: 219px;
            --first-color: #6923d0;
            --first-color-light: #f4f0fa;
            --title-color: #19181b;
            --text-color: #58555e;
            --text-color-light: #a5a1aa;
            --body-color: #f9f6fd;
            --container-color: #ffffff;
            --body-font: 'Poppins', sans-serif;
            --normal-font-size: .938rem;
            --small-font-size: .75rem;
            --smaller-font-size: .75rem;
            --font-medium: 500;
            --font-semi-bold: 600;
            --z-index: 100;
        }

    </style>
</head>
<body>
    <form id="form2" runat="server">
        <div class="background-image">
        </div>
        <div class="header">
            <div class="header__container">
                <img class="header__img" src="Server/assets/pic/no_user.jpg" />
                <a href="#" class="header__logo">CTMS CLONE</a>
                <div class="header__search">
                    <input type="search" name="name" value="" placeholder="Tìm kiếm..." class="header__input" />
                    <i class="uil uil-search header__icon"></i>
                </div>
                <div class="header__toggle">
                    <i class="uil uil-bars" id="header-toggle"></i>
                </div>
            </div>
        </div>
        <div class="nav" id="navbar">
            <nav class="nav__container">
                <div>
                    <a href="#" class="nav__link nav__logo">
                        <i class="uil uil-compact-disc nav__icon"></i>
                        <span class="nav__logo-name">VanCong</span>
                    </a>
                    <div class="nav__list">
                        <div class="nav__items">
                            <h3 class="nav__subtitle">Bảng điểm</h3>
                            <a href="#" class="nav__link active">
                                <i class="uil uil-estate nav__icon"></i>
                                <span class="nav__name">Trang chủ</span>
                            </a>
                            <div class="nav__dropdown">
                                <a href="#" class="nav__link">
                                    <i class="uil uil-print nav__icon"></i>
                                    <span class="nav__name">Quản lý</span>
                                    <i class="uil uil-angle-down nav__icon nav__dropdown-icon"></i>
                                </a>
                                <div class="nav__dropdown-collapse">
                                    <div class="nav__dropdown-content">
                                        <a href="Server/Admin.aspx?modul=bangDiem" class="nav__dropdown-item">Bảng điểm</a>
                                        <a href="#" class="nav__dropdown-item">Lịch học</a>
                                        <a href="#" class="nav__dropdown-item">Học phí</a>
                                    </div>
                                </div>
                            </div>
                            <a href="#" class="nav__link">
                                <i class="uil uil-link nav__icon"></i>
                                <span class="nav__name">Liên kết</span>
                            </a>
                        </div>
                        <div class="nav__items">
                            <h3 class="nav__subtitle">Danh mục</h3>
                            <div class="nav__dropdown">
                                <a href="#" class="nav__link">
                                    <i class="uil uil-bell nav__icon"></i>
                                <span class="nav__name">Thông báo</span>
                                    <i class="uil uil-angle-down nav__icon nav__dropdown-icon"></i>
                                </a>
                                <div class="nav__dropdown-collapse">
                                    <div class="nav__dropdown-content">
                                        <a href="#" class="nav__dropdown-item">Bị chặn</a>
                                        <a href="#" class="nav__dropdown-item">Im lặng</a>
                                        <a href="#" class="nav__dropdown-item">Công khai</a>
                                        <a href="#" class="nav__dropdown-item">Chương trình</a>
                                    </div>
                                </div>
                            </div>
                            <a href="#" class="nav__link">
                                <i class="uil uil-message nav__icon"></i>
                                <span class="nav__name">Liên quan</span>
                            </a>
                            <a href="#" class="nav__link">
                                <i class="uil uil-bookmark nav__icon"></i>
                                <span class="nav__name">Đã lưu</span>
                            </a>
                        </div>
                    </div>
                </div>
                <a href="#" class="nav__link nav__logout">
                    <i class="uil uil-signout nav__icon"></i>
                    <span class="nav__name">Đăng xuất</span>
                </a>
            </nav>
        </div>
        <uc1:AdminLoadControl runat="server" ID="AdminLoadControl" />
    </form>
    <script src="Server/assets/js/main.js"></script>
    <%--<script>
        const optionMenu = document.querySelector(".table__top-field-drop"),
            selectBtn = optionMenu.querySelector(".drop-btn"),
            options = optionMenu.querySelectorAll(".drop-option"),
            btnText = optionMenu.querySelector(".drop-btn__text");

        selectBtn.addEventListener('click', () => {
            optionMenu.classList.toggle('active');
        });

        options.forEach(option => {
            option.addEventListener('click', () => {
                let selectOption = option.querySelector('.drop-option__text').innerText;
                console.log(selectOption);
                btnText.innerText = selectOption;
                //let isOption = btnText.innerText == selectOption ? "selected" : "";
                //option.classList.add(`${isOption}`);
            });
        });
    </script>
    <script>
        const wrapper = document.querySelector(".table__top-field-select-search"),
            selectSearchBtn = wrapper.querySelector(".select-btn__content"),
            searchInput = wrapper.querySelector(".select-search input"),
            optionsSub = wrapper.querySelector('.select-options');

        let subjects = ["Quản trị mạng", "SQL Server", "Lập trình hướng sự kiện", "Lập trình mạng", "Lập trình cơ sở", "Giải tích 1"];

        function addSubjects(selectedSubject) {
            optionsSub.innerHTML = "";
            subjects.forEach(subject => {
                let isSelected = subject == selectedSubject ? "selected" : "";
                let li = `<li onclick="updateName(this)" class="${isSelected}">${subject}</li>`;
                optionsSub.insertAdjacentHTML("beforeend", li);
            })
        }
        addSubjects();

        function updateName(selectedLi) {
            searchInput.value = "";
            addSubjects(selectedLi.innerText);
            wrapper.classList.remove('active');
            selectSearchBtn.firstElementChild.innerText = selectedLi.innerText;
        }

        selectSearchBtn.addEventListener('click', () => {
            wrapper.classList.toggle("active")
        });

        searchInput.addEventListener('keyup', () => {
            let arr = [];
            let searchedVal = searchInput.value.toLowerCase();
            arr = subjects.filter(data => {
                return data.toLowerCase().startsWith(searchedVal);
            }).map(data => `<li onclick="updateName(this)">${data}</li>`).join("");
            optionsSub.innerHTML = arr ? arr : `<p>Không tìm thấy!</p>`;
        });
    </script>--%>
</body>
</html>

