using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    //Logiranje na korisnik
    protected void btnLogin_Click(object sender, EventArgs e)
    {
        string u = txtIme.Text;
        string p = txtPassword.Text;
        SqlConnection konekcija = new SqlConnection();
        konekcija.ConnectionString = ConfigurationManager.ConnectionStrings["mojaKonekcija"].ConnectionString;
        SqlCommand komanda = new SqlCommand();
        komanda.Connection = konekcija;
        komanda.CommandText = "SELECT * FROM korisnici WHERE username='" + u + "' AND password='" + p + "'";
        try
        {
            konekcija.Open();
            SqlDataReader citac = komanda.ExecuteReader();
            bool g = false;
            if (citac.Read())
            {
                g = true;
                string pass = citac["password"].ToString();
                string user = citac["username"].ToString();
                //proverka na korisnicko ime i lozinka
                if (txtPassword.Text == pass && txtIme.Text == user)
                {
                    FormsAuthentication.RedirectFromLoginPage(txtIme.Text, false);
                    Session["pass"] = txtPassword.Text;
                    Response.Redirect("~/Promena.aspx");
                }
            }
            if (g == false) lbl.Text = "Невалидно корисничко име или лозинка." + "<br />" + "Обидете се повторно!";
            citac.Close();
        }

        catch (Exception err)
        {
            Response.Write(err.Message);
        }
        finally { konekcija.Close(); }
    }
}