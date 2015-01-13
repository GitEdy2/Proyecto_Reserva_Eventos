using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CapaDatos;
using CapaNegocio;
using System.Data;

namespace Proyecto_ReservaEntradas_Evento
{
    public partial class PaginaEventos : System.Web.UI.Page
    {
        private string selectEvento;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnNuevoEvento_Click(object sender, EventArgs e)
        {
            Server.Transfer("PaginaCrearEvento.aspx");
        }

        protected void BtnFichaEvento_Click(object sender, EventArgs e)
        {
            selectEvento = DDLElegirEvento.SelectedValue.ToString();
            Session.Add("idEvento", selectEvento);
            Server.Transfer("PaginaFichaEvento.aspx");
        }
    }
}