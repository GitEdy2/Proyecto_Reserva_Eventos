<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MensajeReservaCreada.aspx.cs" Inherits="Proyecto_ReservaEntradas_Evento.MensajeReservaCreada" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        Reserva realizada correctamente!<br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnAceptar" runat="server" PostBackUrl="~/Home.aspx" 
            Text="Aceptar" />
    
    </div>
    </form>
</body>
</html>
