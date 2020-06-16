using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TPC_Juarez.Dominio
{
    public class Direccion
    {
        public string NombreCalle { get; set; }
        public int NumeroCalle { get; set; }
        public int Piso { get; set; }
        public string Departamento { get; set; }
        public int CodPostal { get; set; }
    }
}