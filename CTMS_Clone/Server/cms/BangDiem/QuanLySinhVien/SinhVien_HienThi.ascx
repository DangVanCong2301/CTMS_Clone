<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="SinhVien_HienThi.ascx.cs" Inherits="CTMS_Clone.Server.cms.BangDiem.QuanLySinhVien.SinhVien_HienThi" %>
<div class="table">
    <section class="table__header">
        <h1>Danh sinh viên</h1>
        <a href="Admin.aspx?modul=bangDiem&modulPhu=giangVien&thaoTac=themMoi" class="btn-tool btn-tool-add" title="Thêm mới danh mục"><i class="uil uil-plus-circle"></i></a>
    </section>
    <section class="table__body">
        <div class="table__top-field">
            <div class="table__top-field-select">
                <span>Hiển thị</span>
                <select class="table__item-per-page">
                    <option value="1">1</option>
                    <option value="2">2</option>
                    <option value="3">3</option>
                    <option value="4">4</option>
                </select>
                <span>mỗi trang</span>
            </div>
            <div class="table__top-field-search">
                <input type="text" name="name" value="" onkeyup="timGiangVien(this)" placeholder="Tìm" />
                <i class="uil uil-search"></i>
            </div>
        </div>
        <div class="table__content">
            <table>
                <thead>
                    <tr>
                        <th>Mã</th>
                        <th>Họ tên</th>
                        <th>Giới tính</th>
                        <th>Ngày sinh</th>
                        <th>Địa chỉ</th>
                        <th>Email</th>
                        <th>Công cụ</th>
                    </tr>
                </thead>
                <tbody id="display" runat="server">
                            
                </tbody>
            </table>
        </div>
        <div class="bottom-field">
            <ul class="pagination">
                <li class="prev"><a href="#" id="prev"><i class="uil uil-angle-left"></i></a></li>
                <li class="list"><a href="#">1</a></li>
                <li class="list"><a href="#">2</a></li>
                <li class="list"><a href="#">3</a></li>
                <li class="next"><a href="#" id="next"><i class="uil uil-angle-right"></i></a></li>
            </ul>
        </div>
    </section>
</div>
