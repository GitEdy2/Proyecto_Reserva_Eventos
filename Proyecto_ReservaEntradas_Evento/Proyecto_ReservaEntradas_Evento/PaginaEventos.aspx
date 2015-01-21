<%@ Page Title="" Language="C#" MasterPageFile="~/PaginaMaestra.Master" AutoEventWireup="true" CodeBehind="PaginaEventos.aspx.cs" Inherits="Proyecto_ReservaEntradas_Evento.PaginaEventos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width:100%;">
        <tr>
            <td style="text-align: center; height: 44px">
                <em><strong>LISTADO DE EVENTOS</strong></em></td>
        </tr>
        <tr>
            <td>
                <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" 
                    GridLines="None" Width="896px" AutoGenerateColumns="False" 
                    DataKeyNames="idEvento" DataSourceID="SqlDataSource1">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                        <asp:BoundField DataField="idEvento" HeaderText="idEvento" ReadOnly="True" 
                            SortExpression="idEvento" />
                        <asp:BoundField DataField="tituloEvento" HeaderText="tituloEvento" 
                            SortExpression="tituloEvento" />
                        <asp:BoundField DataField="lugarEvento" HeaderText="lugarEvento" 
                            SortExpression="lugarEvento" />
                        <asp:BoundField DataField="fechaEvento" HeaderText="fechaEvento" 
                            SortExpression="fechaEvento" />
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
                    SelectCommand="SELECT [idEvento], [tituloEvento], [lugarEvento], [fechaEvento] FROM [tbl_Evento]">
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td>
                <br />
&nbsp;&nbsp;
                <br />
&nbsp;<span style="font-size: medium">Elegir Evento:<asp:DropDownList ID="DDLElegirEvento" 
                    runat="server" BackColor="#CCCCCC" DataSourceID="SqlDataSource2" 
                    DataTextField="idEvento" DataValueField="idEvento" Height="16px" Width="176px">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:cadenaConexion %>" 
                    SelectCommand="SELECT [idEvento] FROM [tbl_Evento]"></asp:SqlDataSource>
&nbsp; </span>&nbsp;<br />
                <br />
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="BtnFichaEvento" runat="server" Height="29px" 
                    Text="Ver Ficha de Evento" Width="164px" onclick="BtnFichaEvento_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
&nbsp;&nbsp; <span style="font-size: xx-small">*Si desea crear un nuevo evento, haga clic en el 
                siguiente botón:<br />
                </span>
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnNuevoEvento" runat="server" Text="Crear evento" 
                    Height="23px" onclick="btnNuevoEvento_Click" Width="135px" />
                <br />
                <br />
            </td>
        </tr>
    </table>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <asp:LinkButton ID="LinkAtras" runat="server">&lt;&lt;Atrás</asp:LinkButton>
</asp:Content>
