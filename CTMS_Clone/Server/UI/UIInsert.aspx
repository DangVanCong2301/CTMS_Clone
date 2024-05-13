<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UIInsert.aspx.cs" Inherits="CTMS_Clone.Server.UI.UIInsert" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="../assets/css/styles.css" rel="stylesheet" />
    <link href="../assets/css/responsive.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://unicons.iconscout.com/release/v4.0.0/css/line.css"/>
    <title>UI Insert</title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="header">
            <div class="header__container">
                <a href="#" class="header__logo">CTMS CLONE</a>
                <div class="header__search">
                    <input type="search" name="name" value="" placeholder="Tìm kiếm..." class="header__input" />
                    <i class="uil uil-search header__icon"></i>
                </div>
                <div class="header__toggle">
                    <i class="uil uil-bars" id="header-toggle"></i>
                </div>
                <div class="header__user">
                    <i class="uil uil-sun change-theme" id="theme-button"></i>
                    <img class="header__img" src="../assets/pic/no_user.jpg" />
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
        <div class="content container">
            <div class="content__left">
                <div class="content__dropdown">
                    <a href="#" class="content__link">
                        <span class="content__name">Thêm mới</span>
                        <%--<i class="uil uil-angle-down content__icon content__dropdown-icon"></i>--%>
                    </a>
                    <div class="content__dropdown-collapse">
                        <div class="content__dropdown-content">
                            <a href="#" class="content__dropdown-item">Bảng điểm</a>
                            <a href="#" class="content__dropdown-item">Học sinh</a>
                        </div>
                    </div>
                </div>
                <div class="content__dropdown">
                    <a href="#" class="content__link">
                        <span class="content__name">Chỉnh sửa</span>
                        <%--<i class="uil uil-angle-down content__icon content__dropdown-icon"></i>--%>
                    </a>
                    <div class="content__dropdown-collapse">
                        <div class="content__dropdown-content">
                            <a href="#" class="content__dropdown-item">Bảng điểm</a>
                            <a href="#" class="content__dropdown-item">Học sinh</a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="content__right">
                <div class="insert">
                    <section class="insert__header">
                        <h1>Thêm mới học sinh</h1>
                    </section>
                    <section class="insert__body">
                        <div class="insert__content">
                            <div class="insert__form">
                                <div class="">
                                    <div class="insert__inputs">
                                        <div>
                                            <label class="insert__label">Họ tên</label>
                                            <input type="text" placeholder="Nhập họ tên" class="insert__input" name="name" value="" />
                                        </div>
                                        <div>
                                            <label class="insert__label">Giới tính</label>
                                            <div class="input__box">
                                                <asp:RadioButton ID="rbMale" GroupName="gender" CssClass="" runat="server" Checked="true" />
                                                <label class="input__box-label" for="rbMale">Nam</label>
                                                <asp:RadioButton ID="rbFemale" GroupName="gender" CssClass="" runat="server" />
                                                <label class="input__box-label" for="rbFemale">Nữ</label>
                                            </div>
                                        </div>
                                        <div>
                                            <label class="insert__label">Ngày sinh</label>
                                            <input type="date" name="name" value="" class="insert__input-date" />
                                        </div>
                                        <div>
                                            <label class="insert__label">Địa chỉ</label>
                                            <input type="text" placeholder="Nhập địa" class="insert__input" name="name" value="" />
                                        </div>
                                        <div>
                                            <label class="insert__label">Email</label>
                                            <input type="text" placeholder="Nhập email" class="insert__input" name="name" value="" />
                                        </div>
                                        <div>
                                            <label class="insert__label">Ghi chú</label>
                                            <textarea class="insert__input"></textarea>
                                        </div>
                                    </div>
                                    <div class="insert__check">
                                        <input type="checkbox" class="insert__checkbox-input" />
                                        <label class="insert__check-label">Thêm giảng viên khác khi thêm giảng viên này!</label>
                                    </div>
                                </div>
                                <div>
                                    <div class="insert__buttons">
                                        <asp:Button Text="Thêm" CssClass="insert__button insert__button-insert" runat="server" />
                                        <asp:Button Text="Huỷ" CssClass="insert__button insert__button-destroy" runat="server" />
                                    </div>
                                </div>
                            </div>
                        </div>

                    </section>
                </div>
            </div>

        </div>
    </form>
    <script src="../assets/js/main.js"></script>
    <script type="text/javascript">
        // Light Dark theme
        const themeBtn = document.getElementById('theme-button');
        const darkTheme = "dark-theme";
        const iconTheme = "uil-moon";

        // Chủ đề đã chọn trước đó (nếu người dùng đã chọn)
        const selectedTheme = localStorage.getItem('selected-theme');
        const selectedIcon = localStorage.getItem('selected-icon');

        // Chúng ta có được dòng điện mà giao diện có bằng cách xác thực lớp light-theme
        const getCurrentTheme = () => document.body.classList.contains(darkTheme) ? "light" : "dark";
        const getCurrentIcon = () => themeBtn.classList.contains(iconTheme) ? "uil-sun" : "uil-moon";

        // Chúng tôi xác thực nếu trước đó người dùng đã chọn một chủ đề
        if (selectedTheme) {
            document.body.classList[selectedTheme === "light" ? "add" : "remove"](darkTheme);
            themeBtn.classList[selectedIcon === "uil-sun" ? "add" : "remove"](iconTheme);
        }

        themeBtn.addEventListener('click', () => {
            // Thêm, xoá
            document.body.classList.toggle(darkTheme);
            themeBtn.classList.toggle(iconTheme);

            localStorage.setItem("selected-theme", getCurrentTheme());
            localStorage.setItem("selected-icon", getCurrentIcon());
        })
    </script>
</body>
</html>
