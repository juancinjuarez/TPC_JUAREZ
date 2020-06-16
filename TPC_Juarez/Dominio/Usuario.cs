using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Permissions;
using System.Threading;
using System.Web;
using TPC_Juarez.Dominio;

namespace TPC_Juarez
{
    public class Usuario
    {
        public string Nombre { get; set; }
        public string Apellido { get; set; }
        public int DNI { get; set; }
        public DateTime FechaNac { get; set; }
        public TipoUser CodTipo { get; set; }
        public int Telefono { get; set; }
        public string Mail { get; set; }
        public Compra compra { get; set; }
        public Venta venta { get; set; }
        public Direccion direccion { get; set; }
    }
}