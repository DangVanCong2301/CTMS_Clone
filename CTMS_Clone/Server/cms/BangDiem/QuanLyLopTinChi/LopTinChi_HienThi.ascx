<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="LopTinChi_HienThi.ascx.cs" Inherits="CTMS_Clone.Server.cms.BangDiem.QuanLyLopTinChi.LopTinChi_HienThi" %>
<div class="table">
    <section class="table__header">
        <h1 id="txtSubject" runat="server"></h1>
        <a href="Admin.aspx?modul=bangDiem&modulPhu=lopTinChi&thaoTac=themMoi" class="btn-tool btn-tool-add" title="Thêm mới lớp tín chỉ"><i class="uil uil-plus-circle"></i></a>
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
                        <th>ID</th>
                        <th>Tên môn</th>
                        <th>Giảng viên</th>
                        <th>Tên lớp</th>
                        <th>Số sinh viên</th>
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
<script type="text/javascript">
    function xoaLopTC(id) {
        if (confirm("Bạn có chắc muốn xoá lớp tín chỉ này?")) {
            const formData = new FormData();
            formData.append("PK_iLopTinChiID", id);
            formData.append("thaoTac", "xoa");
            var xhr = new XMLHttpRequest();
            xhr.open('post', 'Server/cms/BangDiem/QuanLyLopTinChi/Ajax/LopTinChi.aspx', false);
            xhr.onreadystatechange = () => {
                if (xhr.readyState == 4 && xhr.status == 200) {
                    if (xhr.responseText == "1") {
                        alert("Xoá thành công!");
                        document.querySelector(".line_" + id).style.display = 'none';
                    } else {
                        alert('Lớp tin chỉ này đang bị ràng buộc, bạn không thể xoá!');
                    }
                }
            }
            xhr.send(formData);
        }
    }
</script>
