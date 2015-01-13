using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CapaNegocio;
using CapaDatos;


namespace Proyecto_ReservaEntradas_Evento
{
    public partial class PaginaCrearEvento : System.Web.UI.Page
    {

        clsEvento evento = new clsEvento();
        clsDatosEvento dtsEvento = new clsDatosEvento();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnCrearEvento_Click(object sender, EventArgs e)
        {
            evento.IdEvento = txtIdEvento.Text;
            evento.TituloEvento = txtTituloEvento.Text;
            evento.DescripcionEvento = txtDescripcion.Text;
            evento.LugarEvento = txtLugarEvento.Text;
            evento.InvitadoEvento = txtInvitado.Text;
            evento.FechaEvento = txtFechaEvento.Text;
            evento.CupoEvento = Convert.ToInt32(txtCupoEvento.Text);

            bool exito = dtsEvento.ingresarEventoOBJ(evento);

            if (exito == true)
            {
                lblEvento.Text = "Evento Ingresado Correctamente";
            }
            else
            {
                lblEvento.Text = "Error, Evento no Ingresado";
            }
        }
    }
}