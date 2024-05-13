<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Test.aspx.cs" Inherits="CTMS_Clone.Test" %>
<%@ Register Assembly="CKEditor.NET" Namespace="CKEditor.NET"  TagPrefix="CKEditor" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <CKEditor:CKEditorControl  ID="CKEditorControl1" runat="server" ></CKEditor:CKEditorControl>
        </div>
    </form>
</body>
</html>
