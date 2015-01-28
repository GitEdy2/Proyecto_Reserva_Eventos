<%@ Page Title="" Language="C#" MasterPageFile="~/PaginaMaestra.Master" AutoEventWireup="true" CodeBehind="Pagina_FichaCliente.aspx.cs" Inherits="Proyecto_ReservaEntradas_Evento.Pagina_FichaCliente" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width: 100%;">
    <tr>
        <td colspan="3" style="text-align: center; font-size: xx-large; height: 41px">
            Ficha Cliente</td>
    </tr>
    <tr>
        <td>
            <br />
&nbsp;CI_Cliente:
            <asp:TextBox ID="txtIdCliente" runat="server" BackColor="#CCCCCC"></asp:TextBox>
            <br />
            <br />
&nbsp;&nbsp;&nbsp; Nombre:
            <asp:TextBox ID="txtNombre" runat="server" BackColor="#CCCCCC"></asp:TextBox>
            <br />
            <br />
&nbsp;&nbsp;&nbsp; Apellido:
            <asp:TextBox ID="txtApellido" runat="server" BackColor="#CCCCCC"></asp:TextBox>
            <br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnInformacion" runat="server" onclick="btnInformacion_Click" 
                Text="Ingresar Informacion" Width="206px" />
            <br />
            <br />
        </td>
        <td>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="lblCliente" runat="server"></asp:Label>
            <br />
        </td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
</table>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <asp:LinkButton ID="LinkAtras" runat="server" 
    PostBackUrl="~/PaginaCliente.aspx">&lt;&lt;Atras</asp:LinkButton>
</asp:Content>
