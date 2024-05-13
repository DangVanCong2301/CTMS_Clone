<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="BangDiemLoadControl.ascx.cs" Inherits="CTMS_Clone.Server.cms.BangDiem.BangDiemLoadControl" %>
<div class="content container">
            <div class="content__left">
                <div class="content__dropdown">
                    <a href="#" class="content__link">
                        <span class="content__name">Hiển thị</span>
                        <%--<i class="uil uil-angle-down content__icon content__dropdown-icon"></i>--%>
                    </a>
                    <div class="content__dropdown-collapse">
                        <div class="content__dropdown-content">
                            <a href="Admin.aspx?modul=bangDiem&modulPhu=giangVien" class="content__dropdown-item">Giảng viên</a>
                            <a href="Admin.aspx?modul=bangDiem&modulPhu=monHoc" class="content__dropdown-item">Môn học</a>
                            <a href="Admin.aspx?modul=bangDiem&modulPhu=lopTinChi" class="content__dropdown-item">Lớp tín chỉ</a>
                            <a href="Admin.aspx?modul=bangDiem&modulPhu=sinhVien" class="content__dropdown-item">Sinh viên</a>
                        </div>
                    </div>
                </div>
                <div class="content__dropdown">
                    <a href="#" class="content__link">
                        <span class="content__name">Thêm mới</span>
                        <%--<i class="uil uil-angle-down content__icon content__dropdown-icon"></i>--%>
                    </a>
                    <div class="content__dropdown-collapse">
                        <div class="content__dropdown-content">
                            <a href="Admin.aspx?modul=bangDiem&modulPhu=giangVien&thaoTac=themMoi" class="content__dropdown-item">Giảng viên</a>
                            <a href="Admin.aspx?modul=bangDiem&modulPhu=monHoc&thaoTac=themMoi" class="content__dropdown-item">Môn học</a>
                            <a href="Admin.aspx?modul=bangDiem&modulPhu=lopTinChi&thaoTac=themMoi" class="content__dropdown-item">Lớp tín chỉ</a>
                            <a href="Admin.aspx?modul=bangDiem&modulPhu=sinhVien&thaoTac=themMoi" class="content__dropdown-item">Sinh viên</a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="content__right">
                <asp:PlaceHolder ID="plBangDiemLoadControl" runat="server"></asp:PlaceHolder>
            </div>
           
        </div>