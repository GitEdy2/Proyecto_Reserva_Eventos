using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Proyecto_ReservaEntradas_Evento
{
    public partial class PaginaCliente : System.Web.UI.Page
    {
        private string strCliente;
        private string strEvento;

        protected void Page_Load(object sender, EventArgs e)
        {
            strEvento = (string)(Session["evento"]);
        }

        protected void btnInformación_Click(object sender, EventArgs e)
        {
            Server.Transfer("Pagina_FichaCliente.aspx");
        }

        protected void btnReserva_Click(object sender, EventArgs e)
        {
            strCliente = DDLCliente.SelectedValue.ToString();
            Session.Add("idCliente", strCliente);
            Session.Add("evento", strEvento);
            Server.Transfer("Pagina_Reserva_Entradas.aspx");
        }
    }
}