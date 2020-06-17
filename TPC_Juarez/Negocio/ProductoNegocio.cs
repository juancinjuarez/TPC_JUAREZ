using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using TPC_Juarez.Dominio;

namespace TPC_Juarez.Negocio
{
    public class ProductoNegocio
    {
        public List<Producto> listarProductos()
        {
            List<Producto> producto = new List<Producto>();
            Producto aux;
            AccesoDatos datos = new AccesoDatos();
            try
            {
                datos.setearQuery("SELECT * FROM Producto");
                datos.ejecutarLector();
                while (datos.lector.Read())
                {
                    aux = new Producto();
                    //aux.CodProducto = datos.lector.GetInt32(0);
                    aux.Stock = datos.lector.GetInt32(1);
                    //aux.PrecioCompra = datos.lector.GetInt32(2);
                    aux.PrecioVenta = (float)double.Parse(datos.lector["PrecioVenta"].ToString());
                    aux.Descripcion = datos.lector.GetString(4);
                    aux.Nombre = datos.lector.GetString(5);
                    aux.ImagenURL = datos.lector.GetString(7);

                    producto.Add(aux);
                }
                return producto;
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                datos.cerrarConexion();
            }
        }

    }
}