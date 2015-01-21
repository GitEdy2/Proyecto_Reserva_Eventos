using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Proyecto_ReservaEntradas_Evento
{
    public partial class PaginaElegirCliente : System.Web.UI.Page
    {
        private string strCliente;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRegistroCompras_Click(object sender, EventArgs e)
        {
            strCliente = DDLCliente.SelectedValue.ToString();
            Session.Add("idCliente", strCliente);
            Server.Transfer("PaginaRegistroReservas.aspx");
        }
    }
}