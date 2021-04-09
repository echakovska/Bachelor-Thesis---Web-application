using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.Security;
using System.Data;
using System.Drawing;
using System.Text;
using System.Security.Cryptography;

public partial class Registracija : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Ispolni();
        }
    }
    //izlistuvanje na site korisnici vo baza
    protected void Ispolni()
    {
        lstKorisnici.Items.Clear();
        SqlConnection konekcija = new SqlConnection();
        konekcija.ConnectionString = ConfigurationManager.ConnectionStrings["mojaKonekcija"].ConnectionString;
        SqlCommand komanda = new SqlCommand();
        komanda.Connection = konekcija;
        komanda.CommandText = "SELECT * FROM korisnici ORDER BY id";

        try
        {
            konekcija.Open();
            SqlDataReader citac = komanda.ExecuteReader();
            while (citac.Read())
            {
                ListItem element = new ListItem();
                element.Text = citac["username"].ToString() + " " + citac["email"].ToString() + " " + citac["telefon"].ToString();
                element.Value = citac["id"].ToString();
                lstKorisnici.Items.Add(element);
            }
            citac.Close();
        }
        catch (Exception err)
        {
            lblDodadi.ForeColor = Color.FromName("Red");
            lblDodadi.Text = err.Message;
        }
        finally
        {
            konekcija.Close();
        }
    }
    //Dodavanje na nov korisnik
    protected void btnKreiraj_Click(object sender, EventArgs e)
    {
        SqlConnection konekcija = new SqlConnection();
        konekcija.ConnectionString = ConfigurationManager.ConnectionStrings["mojakonekcija"].ConnectionString;
        SqlCommand komanda = new SqlCommand();
        komanda.Connection = konekcija;
        komanda.CommandText = "INSERT INTO korisnici (id, username, password, email, telefon) VALUES(@id, @username, @password, @email, @telefon)";
        komanda.Parameters.AddWithValue("@id", txtIme.Text);
        komanda.Parameters.AddWithValue("@username", txtIme.Text);
        komanda.Parameters.AddWithValue("@password", txtPassword.Text);
        komanda.Parameters.AddWithValue("@email", txtEmail.Text);
        komanda.Parameters.AddWithValue("@telefon", txtTel.Text);
        try
        {
            konekcija.Open();
            komanda.ExecuteNonQuery();
            lblDodadi.ForeColor = Color.FromName("Green");
            lblDodadi.Text = "Додаден нов корисник!!!";
            Ispolni();
        }
        catch (Exception)
        {
            lblDodadi.ForeColor = Color.FromName("Red");
            lblDodadi.Text = "Постоечко корисничко име";
        }
        finally
        {
            konekcija.Close();
        }
        txtIme.Text = "";
        txtPassword.Text = "";
        txtConfirm.Text = "";
        txtEmail.Text = "";
        txtTel.Text = "";
    }
}