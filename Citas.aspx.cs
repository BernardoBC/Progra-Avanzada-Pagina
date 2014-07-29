using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

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
        int id;

        SqlConnection sqlconnect = new SqlConnection("Data Source=(LocalDB)\v11.0;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True");
        


    }
}