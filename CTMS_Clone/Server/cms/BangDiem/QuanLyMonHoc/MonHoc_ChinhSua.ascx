<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="MonHoc_ChinhSua.ascx.cs" Inherits="CTMS_Clone.Server.cms.BangDiem.QuanLyMonHoc.MonHoc_ChinhSua" %>
<style>
    .select-box {
        width: 100%;
        border: none;
        outline: none;
        /*appearance: none;*/
        padding: 1rem;
        border: 2px solid #ccc;
        color: var(--text-color);
        background-color: hsla(244, 16%, 92%, .6);
        font-size: var(--smaller-font-size);
        border-radius: 6px;
        transition: border .4s;
    }

    .insert__notice {
        display: flex;
        justify-content: center;
        margin-top: 1rem;
    }

    .insert__button-insert {
        margin-top: 1.85rem;
    }

</style>
<div class="insert">
    <section class="insert__header">
        <h1>Chỉnh sửa môn học</h1>
    </section>
    <section class="insert__body">
        <div class="insert__content">
            <div class="insert__form">
                <div class="">
                    <div class="insert__inputs">
                        <div>
                            <label class="insert__label">Khối kiến thức</label>
                            <asp:DropDownList ID="ddlKhoiKT" runat="server" CssClass="select-box"></asp:DropDownList>
                        </div>
                        <div>
                            <label class="insert__label">Tên môn</label>
                            <input type="text" placeholder="Nhập tên môn" class="insert__input" name="name" value="" id="txtName" runat="server" />
                        </div>
                        <div>
                            <label class="insert__label">Số tín chỉ</label>
                            <input type="text" placeholder="Nhập số tín chỉ" class="insert__input" name="name" value="" id="txtSoTC" runat="server" />
                        </div>
                    </div>
                </div>
                <div>
                    <div class="insert__buttons">
                        <asp:Button ID="btnInsert" CssClass="insert__button insert__button-insert" runat="server" Text="Chỉnh sửa" OnClick="btnInsert_Click" />
                    </div>
                </div>
            </div>
        </div>
    </section>
</div>