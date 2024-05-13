<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="NhomLop_HienThi.ascx.cs" Inherits="CTMS_Clone.Server.cms.BangDiem.QuanLyNhomLopTinChi.NhomLop_HienThi" %>
<div class="table">
    <section class="table__header">
        <h1>Danh sách lớp tín chỉ</h1>
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
                        <th>Tên nhóm lớp</th>
                        <th>Tên môn</th>
                        <th>Số lượng lớp</th>
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
    function loadNhomLop() {
        const formData = new FormData();
        formData.append('thaoTac', 'hienThi');
        var xhr = new XMLHttpRequest();
        xhr.open('post', 'Server/cms/BangDiem/QuanLyNhomLopTinChi/Ajax/NhomLop.aspx', false);
        xhr.onreadystatechange = () => {
            if (xhr.readyState == 4 && xhr.status == 200) {
                const groups = JSON.parse(xhr.responseText);
                console.log(groups);
                let html = "";
                html += groups.map(group => `
                    <tr>
                        <td>${group.PK_iNhomLopID}</td>
                        <td>
                            ${group.sTenNhom}
                        </td>
                        <td>
                            ${group.sTenMonHoc}
                        </td>
                        <td>
                            ${group.iSoLuongLop}
                        </td>
                        <td>
                            <div class="btn-tools">
                                <a class="btn-tool btn-tool-more" href="Admin.aspx?modul=bangDiem&modulPhu=lopTinChi&thaoTac=hienThi&id=${group.PK_iNhomLopID}" title="Chi tiết"><i class="uil uil-eye"></i></a>
                            </div>
                        </td>
                    </tr>
                `).join('');
                document.getElementById("display").innerHTML = html;
            }
        }
        xhr.send(formData);
    }
    loadNhomLop();
</script>
