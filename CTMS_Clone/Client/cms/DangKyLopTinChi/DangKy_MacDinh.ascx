<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="DangKy_MacDinh.ascx.cs" Inherits="CTMS_Clone.Client.cms.DangKyLopTinChi.DangKy_MacDinh" %>
<div class="schedule">
    <section class="schedule__title">
        Đăng ký lớp tín chỉ
    </section>
    <section class="loading">
        <div class="loading__text">
            Quá trình tải dữ liệu sẽ chạy sau <span id="countdown"></span>s
        </div>
        <div class="loading__dots">
            <span class="loading__dot"></span>
            <span class="loading__dot"></span>
            <span class="loading__dot"></span>
            <span class="loading__dot">
                <span class="loading__dot-down"></span>
            </span>
        </div>
    </section>
</div>
<script type="text/javascript">
    const countdown = document.getElementById("countdown");

    let countdownValue = 1;
    countdown.textContent = countdownValue;
    const url = "Default.aspx?modul=dangKy&modulPhu=load";

    setInterval(function () {
        countdownValue--;
        countdown.textContent = countdownValue;
    }, 1000);

    setTimeout(function () {
        window.location.assign(url);
    }, 1 * 1000);

    const dots = document.querySelector('.loading__dots');
    const addAnimation = () => {
        dots.classList.add('animate');
        setTimeout(() => {
            dots.classList.remove('animate');
            setTimeout(() => {
                addAnimation();
            }, 100);
        }, 2600);
    }
    addAnimation();
</script>