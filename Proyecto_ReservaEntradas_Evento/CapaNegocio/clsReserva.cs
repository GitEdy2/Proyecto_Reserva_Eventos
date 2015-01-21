using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace CapaNegocio
{
    public class clsReserva
    {
        private string idReserva;

        public string IdReserva
        {
            get { return idReserva; }
            set { idReserva = value; }
        }

        private string idEvento;

        public string IdEvento
        {
            get { return idEvento; }
            set { idEvento = value; }
        }

        private string idCliente;

        public string IdCliente
        {
            get { return idCliente; }
            set { idCliente = value; }
        }

        private int numeroEntradas;

        public int NumeroEntradas
        {
            get { return numeroEntradas; }
            set { numeroEntradas = value; }
        }
    }
}
