﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography.X509Certificates;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TPC_Juarez.Dominio;
using TPC_Juarez.Negocio;

namespace TPC_Juarez
{
    public partial class Inicio : System.Web.UI.Page
    {
        public List<Producto> productos { get; set; }
        public Carrito car = new Carrito();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ProductoNegocio prod = new ProductoNegocio();
                productos = prod.listarProductos();
                productosRepeater.DataSource = productos;
                productosRepeater.DataBind();
            }
        }
    }
}

