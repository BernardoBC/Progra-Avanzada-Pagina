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
using System.Data.SqlClient;
using System.Data;

public partial class Medicamentos : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       
        

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        String Nombre = entradaNombre.Value;
        String cantidad = entraCantidad.Value;
        String Descripcion = entradaDescripcion.Value;
        String Precio = entradaPrecio.Value;        

        String conString = WebConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        SqlConnection sqlconnect = new SqlConnection(conString);
        sqlconnect.Open();

        //Consigue el ID mas grande y lo incrementa para el IDProducto
        SqlCommand myCommand = new SqlCommand("SELECT MAX(idProducto) FROM Producto", sqlconnect);
        int maxId = Convert.ToInt32(myCommand.ExecuteScalar());
        maxId++;

        string stmt = "INSERT INTO Producto(idProducto, Nombre, Descripcion, Precio, Cantidad) VALUES(" + maxId + ",'" + Nombre + "','" + Descripcion + "' ,'" + Precio + "' ,'" + cantidad + "')";
        SqlCommand insert = new SqlCommand(stmt, sqlconnect);
        insert.ExecuteNonQuery();

        sqlconnect.Close();

        Response.Redirect(Request.RawUrl);

    }
    protected void Button_Cant(object sender, EventArgs e)
    {
        String Cantidad = inputCant.Value;
        String ID = selectMed.Value;

        String conString = WebConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        SqlConnection sqlconnect = new SqlConnection(conString);
        sqlconnect.Open();

        string stmt = "UPDATE  Producto SET Cantidad = "+Cantidad+"WHERE idProducto ="+ID;
        SqlCommand update = new SqlCommand(stmt, sqlconnect);
        update.ExecuteNonQuery();

        sqlconnect.Close();

        Response.Redirect(Request.RawUrl);

    }
}