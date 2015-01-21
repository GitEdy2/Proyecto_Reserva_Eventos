using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CapaNegocio;
using CapaDatos;
using System.Data;

namespace Proyecto_ReservaEntradas_Evento
{
    public partial class Pagina_Reserva_Entradas : System.Web.UI.Page
    {
        clsReserva reserva = new clsReserva();
        clsDatosReserva dtsReserva = new clsDatosReserva();

        clsCliente cliente = new clsCliente();
        clsDatosCliente dtsCliente = new clsDatosCliente();

        private string strEvento;
        private string strCliente;

        protected void Page_Load(object sender, EventArgs e)
        {
            strEvento = (string)(Session["evento"]);
            txtIdEvento.Text = strEvento;
            strCliente = (string)(Session["idCliente"]);
            txtIdCliente.Text = strCliente;
        }

        protected void btnReservar_Click(object sender, EventArgs e)
        { 
            reserva.IdReserva = txtIdReserva.Text;
            reserva.IdEvento = txtIdEvento.Text;
            reserva.IdCliente = txtIdCliente.Text;
            reserva.NumeroEntradas = Convert.ToInt32(txtEntradas.Text);

            bool exito = dtsReserva.ingresarReservaOBJ(reserva);

            if (exito == true)
            {
                Server.Transfer("MensajeReservaCreada.aspx");
            }
            else
            {
                lblReserva.Text = "Error, reserva no realizada";
            }
        }
    }
}