<%@ Page Title="" Language="C#" MasterPageFile="~/PaginaMaestra.Master" AutoEventWireup="true" CodeBehind="Pagina_Reserva_Entradas.aspx.cs" Inherits="Proyecto_ReservaEntradas_Evento.Pagina_Reserva_Entradas" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width:100%;">
        <tr>
            <td colspan="2" style="text-align: center; font-size: xx-large; height: 41px">
                Reserva de Entradas a Evento</td>
        </tr>
        <tr>
            <td style="width: 390px">
                &nbsp;<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ID_Evento:
                <asp:TextBox ID="txtIdEvento" runat="server" BackColor="White" Width="122px" 
                    ReadOnly="True"></asp:TextBox>
                <br />
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ID_Cliente:
                <asp:TextBox ID="txtIdCliente" runat="server" BackColor="White" Width="119px" 
                    ReadOnly="True"></asp:TextBox>
                <br />
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ID_Reserva:
                <asp:TextBox ID="txtIdReserva" runat="server" BackColor="#CCCCCC" Width="119px"></asp:TextBox>
                <br />
                <br />
&nbsp;&nbsp; Num. Entradas:
                <asp:TextBox ID="txtEntradas" runat="server" BackColor="#CCCCCC" Width="61px" 
                    TextMode="Number"></asp:TextBox>
                <br />
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnReservar" runat="server" onclick="btnReservar_Click" 
                    Text="Reservar" Width="135px" />
&nbsp;&nbsp;
                <br />
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="lblReserva" runat="server"></asp:Label>
                <br />
                <br />
            </td>
            <td>
                <asp:Image ID="ImagenEvento" runat="server" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <asp:LinkButton ID="LinkAtrás" runat="server" 
        PostBackUrl="~/PaginaFichaEvento.aspx">&lt;&lt;Atrás</asp:LinkButton>
</asp:Content>
