<%@ Page Title="" Language="C#" MasterPageFile="~/PaginaMaestra.Master" AutoEventWireup="true" CodeBehind="PaginaRegistroReservas.aspx.cs" Inherits="Proyecto_ReservaEntradas_Evento.PaginaRegistroReservas" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width:100%;">
        <tr>
            <td style="text-align: center; font-size: xx-large; height: 40px">
                Registro de Reservas</td>
        </tr>
        <tr>
            <td>
                <br />
&nbsp;ID_Cliente:
                <asp:TextBox ID="txtIdCliente" runat="server" Width="212px" ReadOnly="True"></asp:TextBox>
                <br />
                <br />
&nbsp;&nbsp; Nombres:
                <asp:TextBox ID="txtNombre" runat="server" Width="212px" ReadOnly="True"></asp:TextBox>
                <br />
                <br />
&nbsp;&nbsp; Apellidos:
                <asp:TextBox ID="txtApellido" runat="server" Width="212px" ReadOnly="True"></asp:TextBox>
                <br />
                <br />
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    CellPadding="4" DataKeyNames="idReserva" DataSourceID="SqlDataSource1" 
                    ForeColor="#333333" GridLines="None" Width="894px">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                        <asp:BoundField DataField="idReserva" HeaderText="idReserva" ReadOnly="True" 
                            SortExpression="idReserva" />
                        <asp:BoundField DataField="idEvento" HeaderText="idEvento" 
                            SortExpression="idEvento" />
                        <asp:BoundField DataField="idCliente" HeaderText="idCliente" 
                            SortExpression="idCliente" />
                        <asp:BoundField DataField="numeroEntradas" HeaderText="numeroEntradas" 
                            SortExpression="numeroEntradas" />
                    </Columns>
                    <EditRowStyle BackColor="#999999" />
                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#E9E7E2" />
                    <SortedAscendingHeaderStyle BackColor="#506C8C" />
                    <SortedDescendingCellStyle BackColor="#FFFDF8" />
                    <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:cadenaConexion %>" 
                    
                    SelectCommand="SELECT [idReserva], [idEvento], [idCliente], [numeroEntradas] FROM [tbl_Reserva] WHERE ([idCliente] = @idCliente)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="txtIdCliente" Name="idCliente" 
                            PropertyName="Text" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <br />
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <asp:LinkButton ID="LinkAtras" runat="server" 
        PostBackUrl="~/PaginaElegirCliente.aspx">&lt;&lt;Atras</asp:LinkButton>
</asp:Content>
