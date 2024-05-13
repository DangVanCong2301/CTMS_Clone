<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="HocPhi_HienThi.ascx.cs" Inherits="CTMS_Clone.Client.cms.HocPhi.HocPhi_HienThi" %>
<div class="schedule">
    <section class="schedule__title">
        Danh sách hoá đơn học phí
    </section>
    <section class="bill__btn">
        <input type="button" name="name" class="schedule__calendar-btn" value="Xem danh sách" /></section>
    <section class="bill__time">
        Từ
        <input type="date" name="name" class="schedule__calendar-datetime" value="" />
        đến
        <input type="date" class="schedule__calendar-datetime" name="name" value="" />
    </section>
    <!--<div class="loading">Quá trình tải dữ liệu sẽ chạy sau <span id="countdown">22</span> giây!</div>-->
    <section class="transcript__table bill__table" style="font-size: 10px">
        <div class="transcript__table-content">
            <table>
                <thead>
                    <tr>
                        <th>Mã SV</th>
                        <th>Sinh viên</th>
                        <th>Ngày sinh</th>
                        <th>Lớp hành chính</th>
                        <th>Mã HD</th>
                        <th>Người lập</th>
                        <th>Ngày lập</th>
                        <th>Tổng tín chỉ</th>
                        <th>Tổng tiền</th>
                        <th>Giảm trừ</th>
                        <th>Đã thanh toán</th>
                        <th>Còn nợ</th>
                        <th>Chi tiết</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td style="text-align: left;">20A10010377</td>
                        <td>Đặng Văn Công</td>
                        <td>23/01/2002</td>
                        <td>2010A02</td>
                        <td>46480</td>
                        <td>Đinh Thị Việt Nga</td>
                        <td>10:00 22/9/2022</td>
                        <td>10</td>
                        <td>4.050.000,0</td>
                        <td>0,0</td>
                        <td>4.050.000,0</td>
                        <td>0,0</td>
                        <td><a href="#"><i class="uil uil-clipboard-alt bill__icon-detail"></i></a></td>
                    </tr>
                </tbody>
            </table>
        </div>
    </section>
</div>
<script type="text/javascript">
    function getDay() {
        var day = new Date();
        var yyyy = day.getFullYear();
        var MM = day.getMonth() + 1;
        if (MM < 10) {
            MM = '0' + MM
        }
        var dd = day.getDate();
        if (dd < 10) {
            dd = '0' + dd;
        }
        var currDay = yyyy + '-' + MM + '-' + dd;
        console.log(currDay);
        const calendar = document.querySelectorAll(".schedule__calendar-datetime");
        for (let i = 0; i < calendar.length; i++) {
            calendar[i].value = currDay;
        }
    }
    getDay();
</script>
