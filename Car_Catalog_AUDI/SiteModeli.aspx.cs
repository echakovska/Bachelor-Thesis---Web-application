using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class SiteModeli : System.Web.UI.Page
{
    string promenliva;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    //So izbor na nekoj model se vrsi prenasocuvanje na Model.aspx so soodvetnata serija
    protected void lbA1_Click(object sender, EventArgs e)
    {
        Response.Redirect("Model.aspx?id=1&ime3=A1&ime4=A1&ime5=A1");
    }
    protected void lbA3sportback_Click(object sender, EventArgs e)
    {
        Response.Redirect("Model.aspx?id=2&ime3=A3 Sportback&ime4=A3 Sportback&ime5=A3 Sportback");
    }
    protected void lbA3kompakt_Click(object sender, EventArgs e)
    {
        Response.Redirect("Model.aspx?id=2&ime3=A3 Compact&ime4=A3 Compact&ime5=A3 Compact");
    }
    protected void lbA3cabrio_Click(object sender, EventArgs e)
    {
        Response.Redirect("Model.aspx?id=2&ime3=A3 Cabriolet&ime4=A3 Cabriolet&ime5=A3 Cabriolet");
    }
    protected void lbA4limuzina_Click(object sender, EventArgs e)
    {
        Response.Redirect("Model.aspx?id=2&ime3=A4 Limuzina&ime4=A4 Limuzina&ime5=A4 Limuzina");
    }
    protected void lbA4avant_Click(object sender, EventArgs e)
    {
        Response.Redirect("Model.aspx?id=2&ime3=A4 Avant&ime4=A4 Avant&ime5=A4 Avant");
    }
    protected void lbA5coupe_Click(object sender, EventArgs e)
    {
        Response.Redirect("Model.aspx?id=2&ime3=A5 Coupe&ime4=A5 Coupe&ime5=A5 Coupe");
    }
    protected void lbA5sportback_Click(object sender, EventArgs e)
    {
        Response.Redirect("Model.aspx?id=2&ime3=A5 Sportback&ime4=A5 Sportback&ime5=A5 Sportback");
    }
    protected void lbS5coupe_Click(object sender, EventArgs e)
    {
        Response.Redirect("Model.aspx?id=2&ime3=S5&ime4=S5&ime5=S5");
    }
    protected void lbA6limuzina_Click(object sender, EventArgs e)
    {
        Response.Redirect("Model.aspx?id=2&ime3=A6 Limuzina&ime4=A6 Limuzina&ime5=A6 Limuzina");
    }
    protected void lbA6avant_Click(object sender, EventArgs e)
    {
        Response.Redirect("Model.aspx?id=2&ime3=A6 Avant&ime4=A6 Avant&ime5=A6 Avant");
    }
    protected void lbA6allroad_Click(object sender, EventArgs e)
    {
        Response.Redirect("Model.aspx?id=2&ime3=A6 Allroad&ime4=A6 Allroad&ime5=A6 Allroad");
    }
    protected void lbA7sportback_Click(object sender, EventArgs e)
    {
        Response.Redirect("Model.aspx?id=2&ime3=A7 Sportback&ime4=A7 Sportback&ime5=A7 Sportback");
    }
    protected void lbA8_Click(object sender, EventArgs e)
    {
        Response.Redirect("Model.aspx?id=2&ime3=A8&ime4=A8&ime5=A8");
    }
    protected void lbQ3_Click(object sender, EventArgs e)
    {
        Response.Redirect("Model.aspx?id=2&ime3=Q3&ime4=Q3&ime5=Q3");
    }
    protected void lbQ5_Click(object sender, EventArgs e)
    {
        Response.Redirect("Model.aspx?id=2&ime3=Q5&ime4=Q5&ime5=Q5");
    }
    protected void lbQ7_Click(object sender, EventArgs e)
    {
        Response.Redirect("Model.aspx?id=2&ime3=Q7&ime4=Q7&ime5=Q7");
    }
    protected void lbTTcoupe_Click(object sender, EventArgs e)
    {
        Response.Redirect("Model.aspx?id=2&ime3=TT Coupe&ime4=TT Coupe&ime5=TT Coupe");
    }
    protected void lbTTroadster_Click(object sender, EventArgs e)
    {
        Response.Redirect("Model.aspx?id=2&ime3=TT Roadster&ime4=TT Roadster&ime5=TT Roadster");
    }
    protected void lbR8_Click(object sender, EventArgs e)
    {
        Response.Redirect("Model.aspx?id=2&ime3=R8&ime4=R8&ime5=R8");
    }


    protected void ispolni()
    {
        SqlConnection konekcija = new SqlConnection();
        konekcija.ConnectionString = ConfigurationManager.ConnectionStrings["mojaKonekcija"].ConnectionString;

        SqlCommand komanda = new SqlCommand();
        komanda.Connection = konekcija;
        komanda.CommandText = "SELECT serija FROM avtomobil";

        try
        {
            konekcija.Open();
            SqlDataReader citac = komanda.ExecuteReader();
            string ser;
            while (citac.Read())
            {

                ser = citac["serija"].ToString();
                promenliva = ser;

            }

            citac.Close();
        }
        catch (Exception)
        {
        }
        finally
        {
            konekcija.Close();
        }
    }
}