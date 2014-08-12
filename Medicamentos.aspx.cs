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

        

    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        String IDProducto = entradaIDProducto.Value;
        String Nombre = entradaNombre.Value;
        String cantidad = entraCantidad.Value;
        String Descripcion = entradaDescripcion.Value;
        String Precio = entradaPrecio.Value;

        String conString = WebConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        SqlConnection sqlconnect = new SqlConnection(conString);
        sqlconnect.Open();

        string stmt = "INSERT INTO Producto(idProducto, Nombre, Descripcion, Precio, Cantidad) VALUES(" + IDProducto + ",'" + Nombre + "','" + Descripcion + "' ,'" + Precio + "' ,'" + cantidad + "')";
        SqlCommand insert = new SqlCommand(stmt, sqlconnect);
        insert.ExecuteNonQuery();

        sqlconnect.Close();

        Response.Redirect(Request.RawUrl);

    }
}