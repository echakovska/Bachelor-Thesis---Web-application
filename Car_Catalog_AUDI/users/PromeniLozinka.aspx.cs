using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Drawing;

public partial class ChangePassword : System.Web.UI.Page
{
    //proverka na korisnicko ime
    protected void Page_Load(object sender, EventArgs e)
    {
        if (User.Identity.IsAuthenticated)
            txtIme.Text = User.Identity.Name;
    }
    protected void btnPromeni_Click(object sender, EventArgs e)
    {
        lblPromena.Text = "";
        string u = txtIme.Text;
        string p = (string)Session["pass"];
        SqlConnection konekcija = new SqlConnection();
        konekcija.ConnectionString = ConfigurationManager.ConnectionStrings["mojaKonekcija"].ConnectionString;
        SqlCommand komanda = new SqlCommand();
        komanda.Connection = konekcija;
        komanda.CommandText = "UPDATE korisnici SET password = @password WHERE username='" + u + "' AND password='" + p + "'";
        komanda.Parameters.AddWithValue("@password", txtPasswordNova.Text);
        if (txtStrara.Text == p)
        {
            //promena na nova lozinka
            try
            {
                konekcija.Open();
                komanda.ExecuteNonQuery();
                lblPromena.ForeColor = Color.FromName("Green");
                lblPromena.Text = "Успешна промена!";
            }
            catch (Exception err)
            {
                lblPromena.ForeColor = Color.FromName("Red");
                lblPromena.Text = err.Message;
            }
            finally
            {
                konekcija.Close();
            }
        }
        else
        {
            lblPromena.ForeColor = Color.FromName("Red");
            lblPromena.Text = "Невалидна стара лозинка!";
        }
    }
}