﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services.Description;

namespace TPC_Juarez.Dominio
{
    public class Producto
    {
        public int CodProducto { get; set; }
        public int Stock { get; set; }
        public float PrecioCompra { get; set; }
        public double PrecioVenta { get; set; }
        public string Descripcion { get; set; }
        public string Nombre { get; set; }
        public bool Estado { get; set; }
        public string ImagenURL { get; set; }
        
        public Proveedor IdProveedor { get; set; }
        public Marca IdMarca { get; set; }
    }
}