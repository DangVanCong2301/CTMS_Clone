<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="GiangVien_HienThi.ascx.cs" Inherits="CTMS_Clone.Server.cms.BangDiem.QuanLyGiangVien.GiangVien_HienThi" %>
<div class="table">
    <section class="table__header">
        <h1>Danh sách giảng viên</h1>
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
                        <th>ID</th>
                        <th>Họ tên</th>
                        <th>Giới tính</th>
                        <th>Ngày sinh</th>
                        <th>Địa chỉ</th>
                        <th>Email</th>
                        <th>Công cụ</th>
                    </tr>
                </thead>
                <tbody id="display">
                    <tr>
                        <td>1</td>
                        <td>
                            <img src="assets/pic/no_user.jpg" alt="Img" />
                            Mai Thị Thuý Hà
                        </td>
                        <td>Nữ</td>
                        <td>23/01/1980</td>
                        <td>Hà Nội</td>
                        <td>ha@gmail.com</td>
                        <td>
                            <div class="btn-tools">
                                <%--<a class="btn-tool btn-tool-more" href="#"><i class="uil uil-eye"></i></a>--%>
                                <a class="btn-tool btn-tool-edit" href="#"><i class="uil uil-edit"></i></a>
                                <a class="btn-tool btn-tool-del" href="#"><i class="uil uil-trash"></i></a>
                            </div>
                        </td>
                    </tr>
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
    function loadGiangVien() {
        const formData = new FormData();
        formData.append("thaoTac", "hienThi");
        var xhr = new XMLHttpRequest();
        xhr.open('post', 'Server/cms/BangDiem/QuanLyGiangVien/Ajax/GiangVien.aspx', false);
        xhr.onreadystatechange = () => {
            if (xhr.readyState == 4 && xhr.status == 200) {
                const data = JSON.parse(xhr.responseText);
                thongTinGiangVien(data);
            } else {
                alert(`Error: ${xhr.status}`);
            }
        }
        xhr.send(formData);
    }
    loadGiangVien();

    function thongTinGiangVien(data) {
        const display = document.getElementById("display");
        let html = ""; // Không được đặt là const vì chuỗi là string
        html += data.map(record => // Không đặt dấu ngoặc nhọn
            `
                    <tr class='line__${record.PK_iGiangVienID}'>
                        <td>${record.PK_iGiangVienID}</td>
                        <td  style="text-align: left">
                            <img src="Server/assets/pic/no_user.jpg" alt="Img" />
                           ${record.sHoTen}
                        </td>
                        <td>${record.sGioiTinh}</td>
                        <td>${record.dNgaySinh}</td>
                        <td>${record.sDiaChi}</td>
                        <td>${record.sEmail}</td>
                        <td>
                            <div class="btn-tools">
                                <a class="btn-tool btn-tool-more" href="Admin.aspx?modul=hoSo&id=${record.PK_iGiangVienID}" title="Xem chi tiết"><i class="uil uil-eye"></i></a>
                                <a class="btn-tool btn-tool-edit" href="Admin.aspx?modul=bangDiem&modulPhu=giangVien&thaoTac=chinhSua&id=${record.PK_iGiangVienID}"><i class="uil uil-edit"></i></a>
                                <a class="btn-tool btn-tool-del" href="javascript:xoaGiangVien(${record.PK_iGiangVienID})"><i class="uil uil-trash"></i></a>
                            </div>
                        </td>
                    </tr>
            `
        ).join('');
        display.innerHTML = html;
    }

    function xoaGiangVien(id) {
        if (confirm("Bạn có chắc muốn xoá giảng viên này không?")) {
            const formData = new FormData();
            formData.append("PK_iGiangVienID", id);
            formData.append("thaoTac", "xoa");
            var xhr = new XMLHttpRequest();
            xhr.open('post', 'Server/cms/BangDiem/QuanLyGiangVien/Ajax/GiangVien.aspx', false);
            xhr.onreadystatechange = () => {
                if (xhr.readyState == 4 && xhr.status == 200) {
                    if (xhr.responseText == "0") {
                        alert("Giảng viên này đang bị ràng buộc, bạn không thể xoá!");
                    } else {
                        alert("Xoá thành công!");
                        document.querySelector(".line__" + id).style.display = 'none';
                    }
                } else {
                    alert(`Error: ${xhr.status}`);
                }
            }
            xhr.send(formData);
        }
    }

    function timGiangVien(keyword) {
        const formData = new FormData();
        formData.append("tuKhoa", keyword.value);
        formData.append("thaoTac", "tim");
        var xhr = new XMLHttpRequest();
        xhr.open('post', 'Server/cms/BangDiem/QuanLyGiangVien/Ajax/GiangVien.aspx', false);
        xhr.onreadystatechange = () => {
            if (xhr.readyState == 4 && xhr.status == 200) {
                const data = JSON.parse(xhr.responseText);
                console.log(data);
                let html = "";
                for (let i = 0; i < data.length; i++) {
                    html += `
                    <tr>
                        <td>${data[i].PK_iGiangVienID}</td>
                        <td class='text-left'>
                            <img src="Server/assets/pic/no_user.jpg" alt="Img" />
                            ${data[i].sHoTen}
                        </td>
                        <td>${data[i].sGioiTinh}</td>
                        <td>${data[i].dNgaySinh}</td>
                        <td>${data[i].sDiaChi}</td>
                        <td>${data[i].sEmail}</td>
                        <td>
                            <div class="btn-tools">
                                <a class="btn-tool btn-tool-more" href="#"><i class="uil uil-eye"></i></a>
                                <a class="btn-tool btn-tool-edit" href="Admin.aspx?modul=bangDiem&modulPhu=giangVien&thaoTac=chinhSua&id=${data[i].PK_iGiangVienID}"><i class="uil uil-edit"></i></a>
                                <a class="btn-tool btn-tool-del" href="javascript:xoaGiangVien(${data[i].PK_iGiangVienID})"><i class="uil uil-trash"></i></a>
                            </div>
                        </td>
                    </tr>`;
                }
                document.getElementById("display").innerHTML = html;
            } else {
                alert(`Error: ${xhr.status}`);
            }
        }
        xhr.send(formData);
    }
</script>
