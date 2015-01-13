using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace CapaNegocio
{
    public class clsEvento
    {
        private string idEvento;

        public string IdEvento
        {
            get { return idEvento; }
            set { idEvento = value; }
        }

        private string tituloEvento;

        public string TituloEvento
        {
            get { return tituloEvento; }
            set { tituloEvento = value; }
        }

        private string descripcionEvento;

        public string DescripcionEvento
        {
            get { return descripcionEvento; }
            set { descripcionEvento = value; }
        }

        private string lugarEvento;

        public string LugarEvento
        {
            get { return lugarEvento; }
            set { lugarEvento = value; }
        }

        private string invitadoEvento;

        public string InvitadoEvento
        {
            get { return invitadoEvento; }
            set { invitadoEvento = value; }
        }

        private string fechaEvento;

        public string FechaEvento
        {
            get { return fechaEvento; }
            set { fechaEvento = value; }
        }

        private int cupoEvento;

        public int CupoEvento
        {
            get { return cupoEvento; }
            set { cupoEvento = value; }
        }

        private string imagenEvento;

        public string ImagenEvento
        {
            get { return imagenEvento; }
            set { imagenEvento = value; }
        }
    }
}
