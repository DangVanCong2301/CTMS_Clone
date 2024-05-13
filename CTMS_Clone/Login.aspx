<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="CTMS_Clone.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>CTMS CLONE</title>
    <link href="Client/assets/css/styles.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://unicons.iconscout.com/release/v4.0.0/css/line.css" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <header class="header">
                <nav class="nav container">
                    <div class="nav__data">
                        <a href="#" class="nav__logo">CTMS CLONE</a>
                        <div class="nav__toggle" id="nav-toggle">
                            <i class="uil uil-bars nav__burger"></i>
                            <i class="uil uil-times nav__close"></i>
                        </div>
                    </div>
                    <div class="nav__menu" id="nav-menu">
                        <ul class="nav__list">
                            <li class="dropdown__item">
                                <div class="nav__link">
                                    Liên kết<i class="uil uil-angle-down dropdown__arrow"></i>
                                </div>
                                <ul class="dropdown__menu">
                                    <li>
                                        <a href="#" class="dropdown__link">Trang chủ</a>
                                    </li>
                                    <li>
                                        <a href="#" class="dropdown__link">CTMS</a>
                                    </li>
                                    <li>
                                        <a href="#" class="dropdown__link">FForum</a>
                                    </li>
                                </ul>
                            </li>
                            <li>
                                <a href="#" class="nav__link">Đăng nhập</a>
                            </li>
                            <li class="dropdown__item">
                                <div class="nav__link">
                                    Kích hoạt<i class="uil uil-angle-down dropdown__arrow"></i>
                                </div>
                                <ul class="dropdown__menu">
                                    <li>
                                        <a href="#" class="dropdown__link">Xác thực lần đầu</a>
                                    </li>
                                    <li>
                                        <a href="#" class="dropdown__link">Tài khoản sinh viên</a>
                                    </li>
                                    <li>
                                        <a href="#" class="dropdown__link">Tài khoản giảng viên</a>
                                    </li>
                                </ul>
                            </li>
                            <li>
                                <a href="#" class="nav__link">Trợ giúp</a>
                            </li>
                        </ul>
                    </div>
                </nav>
            </header>
            <section class="login">
                <div class="login__form">
                    <div class="">
                        <h1 class="login__title">
                            <span>Đăng nhập</span>
                        </h1>
                    </div>
                    <div class="">
                        <div class="login__inputs">
                            <div class="">
                                <label for="" class="login__label">Email</label>
                                <input type="text" name="input-username" placeholder="Nhập email của bạn" class="login__input" />
                            </div>
                            <div class="">
                                <label for="" class="login__label">Mật khẩu</label>
                                <div class="login__box">
                                    <input type="password" placeholder="Nhập mật khẩu của bạn" name="input-password" class="login__input" id="input-pass" />
                                    <!-- <i class="uil uil-eye"></i> -->
                                    <i class="uil uil-eye-slash login__eye" id="input-icon"></i>
                                </div>
                            </div>
                        </div>
                        <div class="login__check">
                            <input type="checkbox" class="login__check-input" name="" id="" />
                            <label for="" class="login__check-label">Nhớ mật khẩu</label>
                        </div>
                    </div>
                    <div class="">
                        <div class="login__buttons">
                            <button type="submit" class="login__button">Đăng nhập</button>
                            <%--<button class="login__button login__button-ghost">Đăng ký</button>--%>
                        </div>
                        <p class="notice" style="color: #ee2624" id="notice" runat="server"></p>
                        <a href="#" class="login__forgot">Quên mật khẩu</a>
                        <div class="login__forgot instruct">Admin(tk: admin; mk: admin)</div>
                        <div class="login__forgot instruct">User(tk: user; mk: user)</div>
                    </div>
                </div>
            </section>
            <section class="footer">
                <div class="footer__access-count">Hiện có 100 truy cập</div>
                <div class="footer__copyright">&#169; Một sản phẩm của VanCong</div>
            </section>
        </div>
    </form>
    <script src="Client/assets/js/main.js"></script>
    <script type="text/javascript">
        const showHiddenPass = (inputPass, inputIcon) => {
            const input = document.getElementById(inputPass),
                iconEye = document.getElementById(inputIcon);
            iconEye.addEventListener('click', () => {
                if (input.type === 'password') {
                    input.type = 'text';
                    iconEye.classList.add('uil-eye')
                    iconEye.classList.remove('uil-eye-slash')
                } else {
                    input.type = 'password';
                    iconEye.classList.add('uil-eye-slash')
                    iconEye.classList.remove('uil-eye');
                }
            });
        }

        showHiddenPass('input-pass', 'input-icon');
    </script>
</body>
</html>
