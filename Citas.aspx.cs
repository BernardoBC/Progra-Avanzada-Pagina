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

public partial class Citas : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        String animalID = inputAnimalID.Value;
        String descrip = inputDescripcion.Value;
        String dia = inputDia.Value;
        String mes = inputMes.Value;
        String año = inputAño.Value;
        
        String fecha = dia+"/"+mes+"/"+año;
        String conString = WebConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        SqlConnection sqlconnect = new SqlConnection(conString);
        sqlconnect.Open();

        string stmt = "INSERT INTO Citas(Animal, Fecha, Descripcion) VALUES(" + animalID + ",'" + fecha + "','" + descrip + "')";
        SqlCommand insert = new SqlCommand(stmt, sqlconnect);
        insert.ExecuteNonQuery();
        
        sqlconnect.Close();
        
        Response.Redirect(Request.RawUrl);
         
    }
}