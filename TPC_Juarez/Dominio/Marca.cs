using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TPC_Juarez.Dominio
{
    public class Marca
    {
        public int CodMarca { get; set; }
        public string Nombre { get; set; }
        public string Descripcion { get; set; }
        public bool Estado { get; set; }
    }
}