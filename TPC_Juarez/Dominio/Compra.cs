using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TPC_Juarez.Dominio
{
    public class Compra
    {
        public int CodCompra { get; set; }
        public DateTime FechaCompra { get; set; }
        public DateTime FechaEntrega { get; set; }
        public float TotalPagar { get; set; }
        public string FormaPago { get; set; }
        public Proveedor proveedor { get; set; }
        public Producto producto { get; set; }
    }
}