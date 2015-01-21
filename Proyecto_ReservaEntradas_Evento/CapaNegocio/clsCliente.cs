using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace CapaNegocio
{
    public class clsCliente
    {
        private string idCliente;

        public string IdCliente
        {
            get { return idCliente; }
            set { idCliente = value; }
        }

        private string nombreCliente;

        public string NombreCliente
        {
            get { return nombreCliente; }
            set { nombreCliente = value; }
        }

        private string apellidoCliente;

        public string ApellidoCliente
        {
            get { return apellidoCliente; }
            set { apellidoCliente = value; }
        }
    }
}
