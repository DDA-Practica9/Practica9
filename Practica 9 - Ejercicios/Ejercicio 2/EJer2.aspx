﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EJer2.aspx.cs" Inherits="Practica_9___Ejercicios.Ejercicio_2.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    </head>
<body>
    <form id="form1" runat="server">
        <div style ="background-color :skyblue ">
             
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label1" runat="server" Font-Size="XX-Large" Text="FACTURACION"></asp:Label>
            <br />
            <br />
             
        </div>
        <br />
        <div>
            <asp:GridView ID="GridView1" runat="server">
            </asp:GridView>
         
            <br />
            <asp:GridView ID="GridView2" runat="server">
            </asp:GridView>
            <br />
         
        </div>
    </form>
</body>
</html>
