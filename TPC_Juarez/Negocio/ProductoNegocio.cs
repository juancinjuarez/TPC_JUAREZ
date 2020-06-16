using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using TPC_Juarez.Dominio;

namespace TPC_Juarez.Negocio
{
    public class ProductoNegocio
    {
        public void listarProductos()
        {
            AccesoDatos datos = new AccesoDatos();
            try
            {
                datos.setearQuery("");
                datos.ejecutarAccion();
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

    }
}