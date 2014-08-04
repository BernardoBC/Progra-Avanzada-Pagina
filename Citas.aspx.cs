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
        fillTable();
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
    private void fillTable() {        
        /*SqlConnection sqlconnect = new SqlConnection("Data Source=(LocalDB)\v11.0;AttachDbFilename=|DataDirectory|\\Database.mdf;Integrated Security=True");
        string stmt = "select * from Citas";
        SqlCommand sqlCommand = new SqlCommand(stmt, sqlconnect);
        sqlconnect.Open();

        SqlDataReader reader = sqlCommand.ExecuteReader();
        if (reader.HasRows)
        {
            while (reader.Read())
            {
                Console.WriteLine("{0}\t{1}", reader.GetInt32(0),
                    reader.GetString(1));
            }
        }
        else
        {
            Console.WriteLine("No rows found.");
        }

        sqlconnect.Close(); */      
    }
}