using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;

namespace TPC_Juarez.Dominio
{
    public class Proveedor
    {
        public string Nombre { get; set; }
        public int CUIT { get; set; }
        public int Telefono { get; set; }
        public bool Estado { get; set; }
        public Direccion direccion { get; set; }
    }
}