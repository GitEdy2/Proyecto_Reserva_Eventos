using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using CapaNegocio;


namespace CapaDatos
{
    class clsConexionBD
    {
        public SqlConnection conBD = new SqlConnection("Data Source=(local);Initial Catalog=Proyecto_ReservaEntradas_Eventos;Integrated Security=True");

        public bool AbrirConexion()
        {
            try
            {
                if (conBD.State == ConnectionState.Closed)
                    conBD.Open();

                return true;
            }
            catch (SqlException ex)
            {
                throw ex;
            }
        }

        public bool CerrarConexion()
        {
            try
            {
                if (conBD.State == ConnectionState.Open)
                    conBD.Close();

                return true;
            }
            catch (SqlException ex)
            {
                throw ex;
            }
        }
    }
}
