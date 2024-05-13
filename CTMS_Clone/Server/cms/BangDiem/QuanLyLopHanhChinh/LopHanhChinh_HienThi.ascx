<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="LopHanhChinh_HienThi.ascx.cs" Inherits="CTMS_Clone.Server.cms.BangDiem.QuanLyLopHanhChinh.LopHanhChinh_HienThi" %>
<div class="table">
    <section class="table__header">
        <h1>Danh sách lớp hành chính</h1>
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
                        <th>Tên lớp</th>
                        <th>Số sinh viên</th>
                        <th>Công cụ</th>
                    </tr>
                </thead>
                <tbody id="display">
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
    function loadLopHanhChinh() {
        const formData = new FormData();
        formData.append("thaoTac", "hienThi");
        var xhr = new XMLHttpRequest();
        xhr.open('post', 'Server/cms/BangDiem/QuanLyLopHanhChinh/Ajax/LopHanhChinh.aspx', false);
        xhr.onreadystatechange = () => {
            if (xhr.readyState == 4 && xhr.status == 200) {
                const data = JSON.parse(xhr.responseText);
                let html = "";
                html += data.map(obj =>
                    `
                    <tr>
                        <td>${obj.PK_iLopHanhChinhID}</td>
                        <td>
                            ${obj.sTenLopHC}
                        </td>
                        <td>
                            ${obj.iSoLuongSV}
                        </td>
                        <td>
                            <div class="btn-tools">
                                <a class="btn-tool btn-tool-more" href="Admin.aspx?modul=bangDiem&modulPhu=sinhVien&thaoTac=hienThi&id=${obj.PK_iLopHanhChinhID}" title="Chi tiết"><i class="uil uil-eye"></i></a>
                                <a class="btn-tool btn-tool-edit" href="Admin.aspx?modul=bangDiem&modulPhu=giangVien&thaoTac=chinhSua&id=${obj.PK_iLopHanhChinhID}"><i class="uil uil-edit"></i></a>
                                <a class="btn-tool btn-tool-del" href="javascript:xoaGiangVien(${obj.PK_iLopTinChiID})"><i class="uil uil-trash"></i></a>
                            </div>
                        </td>
                    </tr>
                    `).join('');
                document.getElementById("display").innerHTML = html;
            }
        }
        xhr.send(formData);
    }
    loadLopHanhChinh();
</script>