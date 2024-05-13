<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="CTMS_Clone.Default" %>

<%@ Register Src="~/Client/cms/UserLoadControl.ascx" TagPrefix="uc1" TagName="UserLoadControl" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>CTMS - Một sản phẩm của VanCong</title>
    <link href="Client/assets/css/styles.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://unicons.iconscout.com/release/v4.0.0/css/line.css"/>
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
                                        <a href="http://www.fithou.edu.vn/" class="dropdown__link">Trang chủ</a>
                                    </li>
                                    <li>
                                        <a href="Default.aspx?modul=trangChu&modulPhu=hienThiLichHoc" class="dropdown__link">CTMS</a>
                                    </li>
                                    <li>
                                        <a href="#" class="dropdown__link">FForum</a>
                                    </li>
                                </ul>
                            </li>
                            <li class="dropdown__item">
                                <div class="nav__link">
                                    Cá nhân<i class="uil uil-angle-down dropdown__arrow"></i>
                                </div>
                                <ul class="dropdown__menu">
                                    <li>
                                        <a href="Default.aspx?modul=ketQua" class="dropdown__link">Kết quả học tập</a>
                                    </li>
                                    <li>
                                        <a href="#" class="dropdown__link">Đăng ký chuyên ngành</a>
                                    </li>
                                    <li>
                                        <a href="Default.aspx?modul=dangKy" class="dropdown__link">Đăng ký lớp tín chỉ</a>
                                    </li>
                                    <li>
                                        <a href="Default.aspx?modul=hoaDon" class="dropdown__link">Hoá đơn học phí</a>
                                    </li>
                                    <li>
                                        <a href="#" class="dropdown__link">Đổi mật khẩu</a>
                                    </li>
                                    <li>
                                        <a href="#" class="dropdown__link">Thoát</a>
                                    </li>
                                </ul>
                            </li>
                            <li>
                                <a href="Default.aspx?modul=lichHoc" class="nav__link">Lịch học</a>
                            </li>
                            <li>
                                <a href="Default.aspx?modul=lichThi" class="nav__link">Lịch thi</a>
                            </li>
                            <li>
                                <a href="#" class="nav__link">Chương trình đào tạo</a>
                            </li>
                        </ul>
                    </div>
                </nav>
            </header>
            <main class="main">
                <uc1:UserLoadControl runat="server" id="UserLoadControl" />
            </main>
            <section class="footer">
                <div class="footer__access-count">Hiện có 100 truy cập</div>
                <div class="footer__copyright">&#169; Một sản phẩm của VanCong</div>
            </section>
        </div>
    </form>
</body>
<script src="Client/assets/js/main.js"></script>
</html>
