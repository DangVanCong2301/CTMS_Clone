<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="GiangVien_ChinhSua.ascx.cs" Inherits="CTMS_Clone.Server.cms.BangDiem.QuanLyGiangVien.GiangVien_ChinhSua" %>
<%@ Register Assembly="CKEditor.NET" Namespace="CKEditor.NET"  TagPrefix="CKEditor" %>

<div class="insert">
    <section class="insert__header">
        <h1>Chỉnh sửa giảng viên</h1>
    </section>
    <section class="insert__body">
        <div class="insert__content">
            <div class="insert__form">
                <div class="">
                    <div class="insert__inputs">
                        <div>
                            <label class="insert__label">Họ tên</label>
                            <input type="text" placeholder="Nhập họ tên" class="insert__input" name="name" value="" id="txtName" runat="server" />
                        </div>
                        <div>
                            <label class="insert__label">Giới tính</label>
                            <div class="input__box">
                                <asp:RadioButton ID="rbMale" GroupName="gender" CssClass="" runat="server" />
                                <label class="input__box-label" for="rbMale">Nam</label>
                                <asp:RadioButton ID="rbFemale" GroupName="gender" CssClass="" runat="server" />
                                <label class="input__box-label" for="rbFemale">Nữ</label>
                            </div>
                        </div>
                        <div>
                            <label class="insert__label">Ngày sinh</label>
                            <input type="text" placeholder="Nhập ngày sinh" class="insert__input" name="birth" value="" id="txtBirth" runat="server" />
                        </div>
                        <div>
                            <label class="insert__label">Địa chỉ</label>
                            <input type="text" placeholder="Nhập địa" class="insert__input insert__input-address" name="address" value="" id="txtAddress" runat="server" />
                        </div>
                        <div>
                            <label class="insert__label">Email</label>
                            <input type="text" placeholder="Nhập email" class="insert__input insert__input-email" name="email" value="" id="txtEmail" runat="server" />
                        </div>
                        <div>
                            <label class="insert__label">Ghi chú</label>
                            <CKEditor:CKEditorControl CssClass="insert__input"  ID="txt" runat="server" ></CKEditor:CKEditorControl>
                        </div>
                    </div>
                </div>
                <div>
                    <div class="insert__buttons">
                        <asp:Button ID="btnUpdate" CssClass="insert__button insert__button-insert" runat="server" Text="Cập nhật" OnClick="btnUpdate_Click" />
                    </div>
                </div>
            </div>
        </div>
    </section>
</div>
<script type="text/javascript">
    
</script>
