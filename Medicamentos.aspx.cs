using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.Configuration;
using System.IO;
using System.Configuration;

public partial class Medicamentos : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        String Nombre = entradaNombre.Value;
        String cantidad = entraCantidad.Value;
        String Precio = Precio.Value;
        String Descripcion = entradaDescripcion.Value;

    }
}