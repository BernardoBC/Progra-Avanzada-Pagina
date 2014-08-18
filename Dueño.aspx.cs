using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using System.IO;
using System.Data.SqlClient;
using System.Data;

public partial class Dueño : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        string path = Request.QueryString["dueñoId"];
        if (path != null) {
            String[] selects = new String[5];
            selects[0] = "SELECT Nombre FROM Dueños WHERE idDueño=" + path;
            selects[1] = "SELECT Apellido FROM Dueños WHERE idDueño=" + path;
            selects[2] = "SELECT Direccion FROM Dueños WHERE idDueño=" + path;
            selects[3] = "SELECT Telefono FROM Dueños WHERE idDueño=" + path;
            selects[4] = "SELECT idDueño FROM Dueños WHERE idDueño=" + path;

            String conString = WebConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            SqlConnection sqlconnect = new SqlConnection(conString);
            sqlconnect.Open();

            //Consigue el ID mas grande y lo incrementa para el IDfactura
            SqlCommand cmdNombre = new SqlCommand(selects[0], sqlconnect);
            SqlCommand cmdApellido = new SqlCommand(selects[1], sqlconnect);
            SqlCommand cmdDireccion = new SqlCommand(selects[2], sqlconnect);
            SqlCommand cmdTelefono = new SqlCommand(selects[3], sqlconnect);            

            nombre.InnerText = cmdNombre.ExecuteScalar().ToString();
            nombre.InnerText = nombre.InnerText + " " + cmdApellido.ExecuteScalar().ToString();
            telefono.InnerText = cmdTelefono.ExecuteScalar().ToString();
            direccion.InnerText = cmdDireccion.ExecuteScalar().ToString();

            sqlconnect.Close();
        }
            
        
    }
}