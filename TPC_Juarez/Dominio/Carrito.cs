using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TPC_Juarez.Dominio
{
    public class Carrito
    {
        public List<Producto> listaCarrito { get; set; }

        public Carrito()
        {
            listaCarrito = new List<Producto>();
        }
    }
}