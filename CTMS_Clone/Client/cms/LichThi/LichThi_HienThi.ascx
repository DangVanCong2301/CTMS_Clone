<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="LichThi_HienThi.ascx.cs" Inherits="CTMS_Clone.Client.cms.LichThi.LichThi_HienThi" %>
<div class="schedule">
    <section class="schedule__title">
        Lịch thi của Đặng Văn Công
    </section>
    <section class="schedule__test">
        <div class="bill__check">
            <input type="radio" name="exam" value="">
            <label for="">Sắp thi</label>
        </div>
        <div class="bill__check">
            <input type="radio" name="exam" value="">
            <label for="">Đã thi</label>
        </div>
        <div class="bill__check">
            <input type="radio" name="exam" value="">
            <label for="">Tất cả</label>
        </div>
        <input type="button" name="name" class="schedule__calendar-btn" value="Xem danh sách" fdprocessedid="knpqco">
    </section>
    <section class="bill__time">
        (Lịch thi có thể bị thay đổi, bạn nên kiểm tra lại trước ngày thi)
    </section>
    <!--<div class="loading">Quá trình tải dữ liệu sẽ chạy sau <span id="countdown">22</span> giây!</div>-->
    <section class="transcript__table bill__table">
        <div class="transcript__table-content">
            <table>
                <thead>
                    <tr>
                        <th>STT</th>
                        <th>Thời gian</th>
                        <th>Phòng</th>
                        <th>Môn</th>
                        <th>Mã DS thi</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>1</td>
                        <td>09:10 31/10/2020</td>
                        <td>P31</td>
                        <td style="text-align: left;">Sinh hoạt công dân sinh viên đầu khoá</td>
                        <td>5704</td>
                    </tr>
                    <tr>
                        <td>2</td>
                        <td>09:10 31/11/2020</td>
                        <td>P31</td>
                        <td style="text-align: left;">Giải tích 1</td>
                        <td>5704</td>
                    </tr>
                </tbody>
            </table>
        </div>
    </section>
</div>
