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
    public partial class Pagina_FichaCliente : System.Web.UI.Page
    {
        clsCliente cliente = new clsCliente();
        clsDatosCliente dtsCliente = new clsDatosCliente();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnInformacion_Click(object sender, EventArgs e)
        {
            cliente.IdCliente = txtIdCliente.Text;
            cliente.NombreCliente = txtNombre.Text;
            cliente.ApellidoCliente = txtApellido.Text;

            bool exito = dtsCliente.ingresarClienteOBJ(cliente);

            if (exito == true)
            {
                Server.Transfer("MensajeClienteCreado.aspx");
            }
            else
            {
                lblCliente.Text = "Error, informacion no ingresada";
            }
        }
    }
}