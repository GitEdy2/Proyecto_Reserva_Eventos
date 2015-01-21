<%@ Page Title="" Language="C#" MasterPageFile="~/PaginaMaestra.Master" AutoEventWireup="true" CodeBehind="PaginaFichaEvento.aspx.cs" Inherits="Proyecto_ReservaEntradas_Evento.PaginaFichaEvento" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width:100%;">
        <tr>
            <td colspan="2" style="text-align: center; height: 29px">
                <strong><em class="style2">Ficha de Evento</em></strong></td>
        </tr>
        <tr>
            <td style="width: 405px; height: 505px">
                <asp:Image ID="Image1" runat="server" />
            </td>
            <td style="height: 505px">
&nbsp; ID_Evento:
                <asp:TextBox ID="txtIdEvento" runat="server" BackColor="#FAFAFA" Width="137px" 
                    ReadOnly="True"></asp:TextBox>
                <br />
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Titulo:
                <asp:TextBox ID="txtTituloEvento" runat="server" BackColor="#FAFAFA" 
                    Width="358px" ReadOnly="True"></asp:TextBox>
                <br />
                <br />
&nbsp;Descripción:
                <asp:TextBox ID="txtDescripcionEvento" runat="server" BackColor="#FAFAFA" 
                    Width="358px" Height="79px" TextMode="MultiLine" ReadOnly="True"></asp:TextBox>
                <br />
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Lugar:
                <asp:TextBox ID="txtLugarEvento" runat="server" BackColor="#FAFAFA" 
                    Width="358px" ReadOnly="True"></asp:TextBox>
                <br />
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Invitado:
                <asp:TextBox ID="txtInvitadoEvento" runat="server" BackColor="#FAFAFA" 
                    Width="358px" ReadOnly="True"></asp:TextBox>
                <br />
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Fecha:
                <asp:TextBox ID="txtFechaEvento" runat="server" BackColor="#FAFAFA" 
                    TextMode="Date" Width="144px" ReadOnly="True"></asp:TextBox>
                <br />
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Cupo:
                <asp:TextBox ID="txtCupoEvento" runat="server" BackColor="#FAFAFA" 
                    TextMode="Number" Width="92px" ReadOnly="True"></asp:TextBox>
                <br />
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Imagen:
                <asp:TextBox ID="txtImagen" runat="server" BackColor="#FAFAFA" Width="92px" 
                    ReadOnly="True"></asp:TextBox>
                <br />
                <br />
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnReservar" runat="server" Text="Reservar" Width="101px" 
                    onclick="btnReservar_Click" />
            </td>
        </tr>
    </table>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <asp:LinkButton ID="LinkAtras" runat="server" 
        PostBackUrl="~/PaginaEventos.aspx">&lt;&lt;Atrás</asp:LinkButton>
</asp:Content>
