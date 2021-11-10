<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Practica_9___Experiencia_1.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <br />
&nbsp;&nbsp;&nbsp;
            <asp:Button ID="cmdCreateXml" runat="server" Text="Crear XML" OnClick="cmdCreateXml_Click" />
&nbsp;&nbsp;&nbsp;
            <asp:Button ID="cmdReadXml" runat="server" Text="Leer XML(como texto)" OnClick="cmdReadXml_Click" />
&nbsp;&nbsp;&nbsp;
            <asp:Button ID="cmdReadXmlAsObjects" runat="server" Text="Leer XML(como objeto)" OnClick="cmdReadXmlAsObjects_Click" />
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;
            <asp:Label ID="lblXml" runat="server" Text="Label"></asp:Label>
            &nbsp;<br />
&nbsp;&nbsp;<asp:GridView ID="gridResults" runat="server">
            </asp:GridView>
            <br />
            <br />
            <br />
        </div>
    </form>
</body>
</html>
