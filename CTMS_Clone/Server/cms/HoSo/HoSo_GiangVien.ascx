<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="HoSo_GiangVien.ascx.cs" Inherits="CTMS_Clone.Server.cms.HoSo.HoSo_GiangVien" %>
<div class="container">
    <div class="detail__title" id="name" runat="server">Giảng viên Nguyễn Thị Kim Ngân</div>
    <div class="content detail">
        <div class="content__left detail__left">
            Giảng dạy
                <ul class="detail-left__list" id="lstSubject" runat="server">
                    <li class="detail-left__item">Tiếng Anh cơ bản 1 (MHN105)
                        <a class="detail-left__link" href="javascript:showModal()">10 lớp</a>
                    </li>
                    <li class="detail-left__item">Tiếng Anh cơ bản 2 (MHN102)
                        <a href="javascript:showModal()" class="detail-left__link">15 lớp</a>
                    </li>
                    <li class="detail-left__item">Tiếng Anh cơ bản 3 (AAW101)
                        <a href="javascript:showModal()" class="detail-left__link">12 lớp</a>
                    </li>
                </ul>
        </div>
        <div class="content__right detail__right">
            Đề tài hướng dẫn
                <div class="detail-right-items">
                    <div class="detail-right-items__title">
                        <span class="detail-right-items__name">Năm 2022</span>
                        <i class="uil uil-angle-down detail-right__icon" onclick="toggleTopic(event)"></i>
                    </div>
                    <ul class="detail-right-list">
                        <li class="detail-right-item">
                            <span>1</span> Kiểm thử hệ thống cung cấp dịch vụ quản lý nhân sự
                        </li>
                        <li class="detail-right-item">
                            <span>2</span> Kiểm thử hệ thống đặt lịch khám cho phòng khám đa khoa Tân An
                        </li>
                    </ul>
                </div>
            <div class="detail-right-items">
                <div class="detail-right-items__title">
                    <span class="detail-right-items__name">Năm 2022</span>
                    <i class="uil uil-angle-down detail-right__icon" onclick="toggleTopic(event)"></i>
                </div>
                <ul class="detail-right-list">
                    <li class="detail-right-item">
                        <span>1</span> Kiểm thử hệ thống cung cấp dịch vụ quản lý nhân sự
                    </li>
                    <li class="detail-right-item">
                        <span>2</span> Kiểm thử hệ thống đặt lịch khám cho phòng khám đa khoa Tân An
                    </li>
                </ul>
            </div>
            <div class="detail-right-items">
                <div class="detail-right-items__title">
                    <span class="detail-right-items__name">Năm 2022</span>
                    <i class="uil uil-angle-down detail-right__icon" onclick="toggleTopic(event)"></i>
                </div>
                <ul class="detail-right-list">
                    <li class="detail-right-item">
                        <span>1</span> Kiểm thử hệ thống cung cấp dịch vụ quản lý nhân sự
                    </li>
                    <li class="detail-right-item">
                        <span>2</span> Kiểm thử hệ thống đặt lịch khám cho phòng khám đa khoa Tân An
                    </li>
                </ul>
            </div>
        </div>
    </div>
</div>
<div class="detail__modal">
    
</div>
<script type="text/javascript">
        function toggleTopic(event) {
            const parentElement = event.target.parentNode.parentNode;
            const collapseMenu = parentElement.querySelector(".detail-right-list");
            collapseMenu.classList.toggle('show-collapse');
            parentElement.querySelector(".detail-right__icon").classList.toggle('rotate')
        }

        function showModal(id, nhomLopId, monHocId) {
            document.querySelector(".detail__modal").classList.add("active-modal");
            const formData = new FormData();
            formData.append('PK_iGiangVienID', id);
            formData.append('FK_iNhomID', nhomLopId);
            formData.append('thaoTac', 'hienThiLop');
            formData.append('PK_iMonHocID', monHocId);
            var xhr = new XMLHttpRequest();
            xhr.open('post', 'Server/cms/BangDiem/QuanLyGiangVien/Ajax/GiangVien.aspx', false);
            xhr.onreadystatechange = () => {
                if (xhr.readyState == 4 && xhr.status == 200) {
                    document.querySelector(".detail__modal").innerHTML = xhr.responseText;

                    const modalViews = document.querySelector(".detail__modal");
                    document.querySelector(".detail__modal-close").onclick = () => {
                        modalViews.classList.remove('active-modal');
                    }

                    window.onclick = (event) => {
                        if (event.target == modalViews) {
                            modalViews.classList.remove('active-modal');
                        }
                    }
                }
            }
            xhr.send(formData);
        }
        
</script>