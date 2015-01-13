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
    public partial class PaginaFichaEvento : System.Web.UI.Page
    {
        clsEvento evento = new clsEvento();
        clsDatosEvento dtsEvento = new clsDatosEvento();
        public DataRow fila;

        private string strEvento;

        protected void Page_Load(object sender, EventArgs e)
        {
            strEvento = (string)(Session["idEvento"]);
            txtIdEvento.Text = strEvento;

            fila = dtsEvento.buscaEvento(txtIdEvento.Text);
            txtTituloEvento.Text = fila["Titulo"].ToString();
            txtDescripcionEvento.Text = fila["Descripcion"].ToString();
            txtLugarEvento.Text = fila["Lugar"].ToString();
            txtInvitadoEvento.Text = fila["Invitado"].ToString();
            txtFechaEvento.Text = fila["Fecha"].ToString();
            txtTituloEvento.Text = fila["Titulo"].ToString();
            txtCupoEvento.Text = fila["Cupo"].ToString();
            txtImagen.Text = fila["Imagen"].ToString();           
        }
    }
}