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
    public class clsDatosCliente
    {
        private string cadenaConexion;

        public clsDatosCliente()
        {
            cadenaConexion = ConfigurationManager.ConnectionStrings["cadenaConexion"].ConnectionString;
        }

        public List<clsCliente> listarCliente()
        {
            SqlConnection con = new SqlConnection(cadenaConexion);
            SqlCommand cmd = new SqlCommand("select * from tbl_Cliente", con);

            List<clsCliente> listaCliente = new List<clsCliente>();

            con.Open();
            SqlDataReader lector = cmd.ExecuteReader();

            while (lector.Read())
            {
                clsCliente cliente = new clsCliente();
                cliente.IdCliente = lector.GetString(0);
                cliente.NombreCliente = lector.GetString(1);
                cliente.ApellidoCliente = lector.GetString(2);

                listaCliente.Add(cliente);
            }

            con.Close();
            return listaCliente;
        }

        public bool ingresarClienteOBJ(clsCliente Cliente)
        {
            SqlConnection con = new SqlConnection(cadenaConexion);
            SqlCommand cmd = new SqlCommand("insert into tbl_Cliente(idCliente,nombreCliente,apellidoCliente)" +
                                            "values(@cliente,@nombre,@apellido)", con);

            cmd.Parameters.Add("@cliente", SqlDbType.VarChar).Value = Cliente.IdCliente;
            cmd.Parameters.Add("@nombre", SqlDbType.VarChar).Value = Cliente.NombreCliente;
            cmd.Parameters.Add("@apellido", SqlDbType.VarChar).Value = Cliente.ApellidoCliente;

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

        public DataRow buscaCliente(string idCliente)
        {
            SqlConnection con = new SqlConnection(cadenaConexion);

            SqlDataAdapter da;

            DataSet ds = new DataSet();

            try
            {
                string sql = "select idCliente as Cliente,nombreCliente as Nombre,apellidoCliente as Apellido from tbl_Cliente";
                da = new SqlDataAdapter(sql, con);

                da.Fill(ds, "tbl_Cliente");
                da.FillSchema(ds.Tables[0], SchemaType.Mapped);

                DataRow fila = ds.Tables[0].Rows.Find(idCliente);

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
