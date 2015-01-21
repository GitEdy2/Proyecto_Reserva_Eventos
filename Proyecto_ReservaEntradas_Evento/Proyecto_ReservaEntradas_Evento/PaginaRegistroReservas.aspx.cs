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
    public partial class PaginaRegistroReservas : System.Web.UI.Page
    {
        clsCliente cliente = new clsCliente();
        clsDatosCliente dtsCliente = new clsDatosCliente();

        clsReserva reserva = new clsReserva();
        clsDatosReserva dtsReserva = new clsDatosReserva();

        public DataRow fila; 

        private string strCliente;

        protected void Page_Load(object sender, EventArgs e)
        {
            strCliente = (string)(Session["idCliente"]);
            txtIdCliente.Text = strCliente;

            fila = dtsCliente.buscaCliente(txtIdCliente.Text);
            txtNombre.Text = fila["Nombre"].ToString();
            txtApellido.Text = fila["Apellido"].ToString();
        }
    }
}