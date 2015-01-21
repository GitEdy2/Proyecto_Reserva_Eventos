using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;
using System.Web;
using System.Configuration;
using CapaNegocio;

namespace CapaDatos
{
    public class clsDatosReserva
    {
        private string cadenaConexion;

        public clsDatosReserva()
        {
            cadenaConexion = ConfigurationManager.ConnectionStrings["cadenaConexion"].ConnectionString;
        }

        public List<clsReserva> listarReserva()
        {
            SqlConnection con = new SqlConnection(cadenaConexion);
            SqlCommand cmd = new SqlCommand("select * from tbl_Reserva", con);

            List<clsReserva> listaReserva = new List<clsReserva>();

            con.Open();
            SqlDataReader lector = cmd.ExecuteReader();

            while (lector.Read())
            {
                clsReserva reserva = new clsReserva();
                reserva.IdReserva = lector.GetString(0);
                reserva.IdEvento = lector.GetString(1);
                reserva.IdCliente = lector.GetString(2);
                reserva.NumeroEntradas = lector.GetInt32(3);

                listaReserva.Add(reserva);
            }

            con.Close();
            return listaReserva;
        }

        public bool ingresarReservaOBJ(clsReserva Reserva)
        {
            SqlConnection con = new SqlConnection(cadenaConexion);
            SqlCommand cmd = new SqlCommand("insert into tbl_Reserva(idReserva,idEvento,idCliente,numeroEntradas)" +
                                            "values(@reserva,@evento,@cliente,@cupo)", con);

            cmd.Parameters.Add("@reserva", SqlDbType.VarChar).Value = Reserva.IdReserva;
            cmd.Parameters.Add("@evento", SqlDbType.VarChar).Value = Reserva.IdEvento;
            cmd.Parameters.Add("@cliente", SqlDbType.VarChar).Value = Reserva.IdCliente;
            cmd.Parameters.Add("@cupo", SqlDbType.Int).Value = Reserva.NumeroEntradas;

            con.Open();

            int exito = cmd.ExecuteNonQuery();

            if (exito == 1)
            {
                return true;
            }
            else
            {
                return false;
            }
        }

        public DataRow buscaReserva(string idReserva)
        {
            SqlConnection con = new SqlConnection(cadenaConexion);

            SqlDataAdapter da;

            DataSet ds = new DataSet();

            try
            {
                string sql = "select idReserva as Reserva,idEvento as Evento,idCliente as Cliente,numeroEntradas as Entradas from tbl_Reserva";

                da = new SqlDataAdapter(sql, con);

                da.Fill(ds, "tbl_Reserva");
                da.FillSchema(ds.Tables[0], SchemaType.Mapped);

                DataRow fila = ds.Tables[0].Rows.Find(idReserva);

                return fila;
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                con.Close();
            }
        }
    }
}
