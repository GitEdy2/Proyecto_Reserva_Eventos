<%@ Page Title="" Language="C#" MasterPageFile="~/PaginaMaestra.Master" AutoEventWireup="true" CodeBehind="PaginaElegirCliente.aspx.cs" Inherits="Proyecto_ReservaEntradas_Evento.PaginaElegirCliente" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width:100%;">
        <tr>
            <td style="text-align: center; font-size: xx-large; height: 49px">
                Registro de Reservas</td>
        </tr>
        <tr>
            <td>
                <br />
&nbsp;&nbsp;&nbsp; ID_Cliente:
                <asp:DropDownList ID="DDLCliente" runat="server" BackColor="#CCCCCC" 
                    DataSourceID="SqlDataSource1" DataTextField="idCliente" 
                    DataValueField="idCliente" Height="19px" Width="165px">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:cadenaConexion %>" 
                    SelectCommand="SELECT [idCliente] FROM [tbl_Cliente]"></asp:SqlDataSource>
                <br />
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnRegistroCompras" runat="server" 
                    onclick="btnRegistroCompras_Click" Text="Consultar Registro" Width="222px" />
                <br />
                <br />
            </td>
        </tr>
    </table>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <asp:LinkButton ID="LinkAtras" runat="server" PostBackUrl="~/Home.aspx">&lt;&lt;Atrás</asp:LinkButton>
</asp:Content>
