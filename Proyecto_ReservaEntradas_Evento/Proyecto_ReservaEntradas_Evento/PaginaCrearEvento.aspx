<%@ Page Title="" Language="C#" MasterPageFile="~/PaginaMaestra.Master" AutoEventWireup="true" CodeBehind="PaginaCrearEvento.aspx.cs" Inherits="Proyecto_ReservaEntradas_Evento.PaginaCrearEvento" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width:100%;">
        <tr>
            <td colspan="3" style="text-align: center; height: 42px">
                <strong><em>PLANTILLA DE NUEVO EVENTO</em></strong>&nbsp;</td>
        </tr>
        <tr>
            <td colspan="2">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 415px">
                &nbsp;<br />
&nbsp;<span style="font-size: medium">&nbsp;&nbsp;&nbsp;&nbsp; ID_Evento: </span>
                <asp:TextBox ID="txtIdEvento" runat="server" BackColor="#CCCCCC" Height="21px" 
                    Width="142px"></asp:TextBox>
                <br />
                <br />
&nbsp;<span style="font-size: medium"> Titulo_Evento:
                <asp:TextBox ID="txtTituloEvento" runat="server" BackColor="#CCCCCC" 
                    Height="21px" Width="274px"></asp:TextBox>
                </span>&nbsp;<br />
                <br />
&nbsp;<span style="font-size: medium">&nbsp;&nbsp;&nbsp; Descripcion:
                <asp:TextBox ID="txtDescripcion" runat="server" BackColor="#CCCCCC" 
                    Height="62px" Width="274px" TextMode="MultiLine"></asp:TextBox>
                </span>
                <br />
                <br />
&nbsp;<span style="font-size: medium"> Lugar_Evento:
                <asp:TextBox ID="txtLugarEvento" runat="server" BackColor="#CCCCCC" 
                    Height="21px" Width="272px"></asp:TextBox>
                </span>
                <br />
                <br />
&nbsp;<span style="font-size: medium">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Invitado:
                <asp:TextBox ID="txtInvitado" runat="server" BackColor="#CCCCCC" Height="21px" 
                    Width="270px"></asp:TextBox>
                </span>
                <br />
                <br />
&nbsp;<span style="font-size: medium">&nbsp; Fecha_Evento:
                <asp:TextBox ID="txtFechaEvento" runat="server" BackColor="#CCCCCC" 
                    Height="21px" Width="128px" TextMode="Date"></asp:TextBox>
                </span>
                <br />
                <br />
&nbsp;<span style="font-size: medium">&nbsp;&nbsp; Cupo_Evento:
                <asp:TextBox ID="txtCupoEvento" runat="server" BackColor="#CCCCCC" 
                    Height="21px" TextMode="Number" Width="77px"></asp:TextBox>
                </span>
                <br />
                <br />
&nbsp;Imagen_Evento: <span style="font-size: medium">
                <asp:TextBox ID="txtImagen" runat="server" BackColor="#CCCCCC" 
                    Height="21px" Width="77px"></asp:TextBox>
                </span>
                <br />
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnCrearEvento" runat="server" onclick="btnCrearEvento_Click" 
                    Text="Crear Evento" Width="198px" />
                <br />
                <br />
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="lblEvento" runat="server"></asp:Label>
                <br />
                <br />
                &nbsp;</td>
            <td colspan="2">
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <asp:LinkButton ID="LinkAtras" runat="server" 
        PostBackUrl="~/PaginaEventos.aspx">&lt;&lt;Atrás</asp:LinkButton>
</asp:Content>
