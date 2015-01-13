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
    public class clsDatosEvento
    {
        private string cadenaConexion;

        public clsDatosEvento()
        {
            cadenaConexion = ConfigurationManager.ConnectionStrings["CadenaConexion"].ConnectionString;
        }

        public List<clsEvento> listarEvento()
        {
            SqlConnection con = new SqlConnection(cadenaConexion);
            SqlCommand cmd = new SqlCommand("select * from tbl_Evento", con);

            List<clsEvento> listaEvento = new List<clsEvento>();

            con.Open();
            SqlDataReader lector = cmd.ExecuteReader();

            while (lector.Read())
            {
                clsEvento evento = new clsEvento();
                evento.IdEvento = lector.GetString(0);
                evento.TituloEvento = lector.GetString(1);
                evento.DescripcionEvento = lector.GetString(2);
                evento.LugarEvento = lector.GetString(3);
                evento.InvitadoEvento = lector.GetString(4);
                evento.FechaEvento = lector.GetString(5);
                evento.CupoEvento = lector.GetInt32(6);
                evento.ImagenEvento = lector.GetString(7);

                listaEvento.Add(evento);
            }

            con.Close();

            return listaEvento;
        }

        public bool ingresarEventoOBJ(clsEvento Evento)
        {
            SqlConnection con = new SqlConnection(cadenaConexion);
            SqlCommand cmd = new SqlCommand("insert into tbl_Evento(idEvento,tituloEvento,descripcionEvento,lugarEvento," +
                                            "invitadoEvento,fechaEvento,cupoEvento,imagenEvento) values(@idEvent,@titulo," +
                                            "@descripcion,@lugar,@invitado,@fecha,@cupo,@imagen)", con);

            cmd.Parameters.Add("@idEvent", SqlDbType.VarChar).Value = Evento.IdEvento;
            cmd.Parameters.Add("@titulo", SqlDbType.VarChar).Value = Evento.TituloEvento;
            cmd.Parameters.Add("@descripcion", SqlDbType.VarChar).Value = Evento.DescripcionEvento;
            cmd.Parameters.Add("@lugar", SqlDbType.VarChar).Value = Evento.LugarEvento;
            cmd.Parameters.Add("@invitado", SqlDbType.VarChar).Value = Evento.InvitadoEvento;
            cmd.Parameters.Add("@fecha", SqlDbType.VarChar).Value = Evento.FechaEvento;
            cmd.Parameters.Add("@cupo", SqlDbType.Int).Value = Evento.CupoEvento;
            cmd.Parameters.Add("@imagen", SqlDbType.VarChar).Value = Evento.ImagenEvento;

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

        public DataRow buscaEvento(string idEvento)
        {
            SqlConnection con = new SqlConnection(cadenaConexion);

            SqlDataAdapter da;

            DataSet ds = new DataSet();

            try
            {
                string sql = "select idEvento as Id,tituloEvento as Titulo,descripcionEvento as Descripcion,lugarEvento as Lugar," +
                             "invitadoEvento as Invitado,fechaEvento as Fecha,cupoEvento as Cupo,imagenEvento as Imagen from tbl_Evento";

                da = new SqlDataAdapter(sql, con);

                da.Fill(ds, "tbl_Evento");
                da.FillSchema(ds.Tables[0], SchemaType.Mapped);

                DataRow fila = ds.Tables[0].Rows.Find(idEvento);

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
