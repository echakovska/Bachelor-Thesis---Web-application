using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class Sporedi : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            ddlSerija1.Items.Add("Одбери серија");
            ddlSerija2.Items.Add("Одбери серија");
            ispolni_p();
            ispolni();

        }
    }
    //Ispolnuvanje na tabelata so informacii
    protected void ispolni_p()
    {
        //ddlSerija1.Items.Clear();
        string categorija = (string)Session["select"];
        SqlConnection konekcija = new SqlConnection();
        konekcija.ConnectionString = ConfigurationManager.ConnectionStrings["mojaKonekcija"].ConnectionString;
        string sqlstring = "SELECT * FROM avtomobil WHERE id_model='" + categorija + "'";
        SqlCommand komanda = new SqlCommand(sqlstring, konekcija);
        try
        {
            konekcija.Open();
            SqlDataReader citac = komanda.ExecuteReader();
            string model1;
            while (citac.Read())
            {
                img1.Visible = true;
                model1 = citac["serija"].ToString() + " " + citac["motor_ime"].ToString();
                ddlModel1.Items.Add(model1);
                img1.ImageUrl = "~/images/modeli/" + citac["slika"].ToString();
                lblZafatnina1.Text = citac["motor_zafatnina"].ToString();
                lblMoknost1.Text = citac["motor_moknost"].ToString();
                lblVrtezMom1.Text = citac["motor_vrtezen_moment"].ToString();
                lblGorivo1.Text = citac["motor_gorivo"].ToString();
                lblPogon1.Text = citac["pogon_na_trkala"].ToString();
                lblPrenos1.Text = citac["menuvac"].ToString();
                lblBandazi1.Text = citac["oprema_bandazi"].ToString();
                lblGumi1.Text = citac["oprema_gumi"].ToString();
                lblSopiranje1.Text = citac["oprema_sopiranje"].ToString();
                lblTezina1.Text = citac["tezina_bez_tovar"].ToString();
                lblMaxNosivost1.Text = citac["tezina_max"].ToString();
                lblBagaznik1.Text = citac["zafatnina_bagaznik"].ToString();
                lblRezervoar1.Text = citac["rezervoar"].ToString();
                lblZabrzuvanje1.Text = citac["zabrzuvanje"].ToString();
                lblMaxBrzina1.Text = citac["max_brzina"].ToString();
                lblPotrosuvacka1.Text = citac["potrosuvacka"].ToString();
                lblDimenzii1.Text = citac["dimenzii_d_s_v"].ToString();
                lblOsnovaTrkala1.Text = citac["osnova_trkala"].ToString();
            }
            citac.Close();
        }
        catch (Exception err)
        {
            lblPoraka.Text = err.Message;
        }
        finally
        {
            konekcija.Close();
        }
    }
    //Ispolnuvanje na pagjackata lista so serija na avtomobili
    protected void ispolni()
    {
        SqlConnection konekcija = new SqlConnection();
        konekcija.ConnectionString = ConfigurationManager.ConnectionStrings["mojaKonekcija"].ConnectionString;
        SqlCommand komanda = new SqlCommand();
        komanda.Connection = konekcija;
        komanda.CommandText = "SELECT DISTINCT serija FROM avtomobil";
        try
        {
            konekcija.Open();
            SqlDataReader citac = komanda.ExecuteReader();
            string j;
            while (citac.Read())
            {

                j = citac["serija"].ToString();
                ddlSerija1.Items.Add(j);
                ddlSerija2.Items.Add(j);
            }

            citac.Close();
        }
        catch (Exception err)
        {
            //lblPoraka.ForeColor = Color.FromName("Red");
            lblPoraka.Text = err.Message;
        }
        finally
        {
            konekcija.Close();
        }
    }
    //So selektiranje na odredena informacija se ovozmozuva pagjackata lista so modeli
    protected void ddlSerija1_SelectedIndexChanged(object sender, EventArgs e)
    {
        ddlModel1.Items.Clear();
        cisti();
        img1.Visible = false;
        SqlConnection konekcija = new SqlConnection();
        konekcija.ConnectionString = ConfigurationManager.ConnectionStrings["mojaKonekcija"].ConnectionString;
        string sqlstring = "SELECT serija, motor_ime FROM avtomobil WHERE serija='" + ddlSerija1.SelectedValue + "'";
        SqlCommand komanda = new SqlCommand(sqlstring, konekcija);
        try
        {
            konekcija.Open();
            SqlDataReader citac = komanda.ExecuteReader();
            string j;
            ddlSerija1.Items[0].Enabled = false;
            ddlModel1.Items.Add("Одбери модел");
            while (citac.Read())
            {
                j = citac["serija"].ToString() + " " + citac["motor_ime"].ToString();
                ddlModel1.Items.Add(j);
            }
            citac.Close();
        }
        catch (Exception err)
        {
            lblPoraka.Text = err.Message;
        }
        finally
        {
            konekcija.Close();
        }
    }
    //So selektiranje na odredena informacija se ovozmozuva pagjackata lista so modeli
    protected void ddlSerija2_SelectedIndexChanged(object sender, EventArgs e)
    {
        ddlModel2.Items.Clear();
        cisti1();
        ddlModel2.Visible = true;
        img2.Visible = false;
        SqlConnection konekcija = new SqlConnection();
        konekcija.ConnectionString = ConfigurationManager.ConnectionStrings["mojaKonekcija"].ConnectionString;
        string sqlstring = "SELECT serija, motor_ime FROM avtomobil WHERE serija='" + ddlSerija2.SelectedValue + "'";
        SqlCommand komanda = new SqlCommand(sqlstring, konekcija);
        try
        {
            konekcija.Open();
            SqlDataReader citac = komanda.ExecuteReader();
            string j;
            ddlSerija2.Items[0].Enabled = false;
            ddlModel2.Items.Add("Одбери модел");
            while (citac.Read())
            {
                j = citac["serija"].ToString() + " " + citac["motor_ime"].ToString();
                ddlModel2.Items.Add(j);
            }
            citac.Close();
        }
        catch (Exception err)
        {
            lblPoraka.Text = err.Message;
        }
        finally
        {
            konekcija.Close();
        }
    }
    //Ispolnuvanje na tabelata so informacii
    protected void ddlModel1_SelectedIndexChanged(object sender, EventArgs e)
    {
        img1.Visible = true;
        SqlConnection konekcija = new SqlConnection();
        konekcija.ConnectionString = ConfigurationManager.ConnectionStrings["mojaKonekcija"].ConnectionString;
        string sqlstring = "SELECT * FROM avtomobil WHERE id_model='" + ddlModel1.SelectedValue + "'";
        SqlCommand komanda = new SqlCommand(sqlstring, konekcija);
        try
        {
            konekcija.Open();
            SqlDataReader citac = komanda.ExecuteReader();
            ddlModel1.Items[0].Enabled = false;
            if (citac.Read())
            {
                img1.ImageUrl = "~/images/modeli/" + citac["slika"].ToString();
                lblZafatnina1.Text = citac["motor_zafatnina"].ToString();
                lblMoknost1.Text = citac["motor_moknost"].ToString();
                lblVrtezMom1.Text = citac["motor_vrtezen_moment"].ToString();
                lblGorivo1.Text = citac["motor_gorivo"].ToString();
                lblPogon1.Text = citac["pogon_na_trkala"].ToString();
                lblPrenos1.Text = citac["menuvac"].ToString();
                lblBandazi1.Text = citac["oprema_bandazi"].ToString();
                lblGumi1.Text = citac["oprema_gumi"].ToString();
                lblSopiranje1.Text = citac["oprema_sopiranje"].ToString();
                lblTezina1.Text = citac["tezina_bez_tovar"].ToString();
                lblMaxNosivost1.Text = citac["tezina_max"].ToString();
                lblBagaznik1.Text = citac["zafatnina_bagaznik"].ToString();
                lblRezervoar1.Text = citac["rezervoar"].ToString();
                lblZabrzuvanje1.Text = citac["zabrzuvanje"].ToString();
                lblMaxBrzina1.Text = citac["max_brzina"].ToString();
                lblPotrosuvacka1.Text = citac["potrosuvacka"].ToString();
                lblDimenzii1.Text = citac["dimenzii_d_s_v"].ToString();
                lblOsnovaTrkala1.Text = citac["osnova_trkala"].ToString();
            }
            citac.Close();
        }
        catch (Exception err)
        {
            lblPoraka.Text = err.Message;
        }
        finally
        {
            konekcija.Close();
        }
    }
    //Ispolnuvanje na tabelata so informacii
    protected void ddlModel2_SelectedIndexChanged(object sender, EventArgs e)
    {
        img2.Visible = true;
        SqlConnection konekcija = new SqlConnection();
        konekcija.ConnectionString = ConfigurationManager.ConnectionStrings["mojaKonekcija"].ConnectionString;
        string sqlstring = "SELECT * FROM avtomobil WHERE id_model='" + ddlModel2.SelectedValue + "'";
        SqlCommand komanda = new SqlCommand(sqlstring, konekcija);
        try
        {
            konekcija.Open();
            SqlDataReader citac = komanda.ExecuteReader();
            ddlModel2.Items[0].Enabled = false;
            if (citac.Read())
            {
                img2.ImageUrl = "~/images/modeli/" + citac["slika"].ToString();
                lblZafatnina2.Text = citac["motor_zafatnina"].ToString();
                lblMoknost2.Text = citac["motor_moknost"].ToString();
                lblVrtezMom2.Text = citac["motor_vrtezen_moment"].ToString();
                lblGorivo2.Text = citac["motor_gorivo"].ToString();
                lblPogon2.Text = citac["pogon_na_trkala"].ToString();
                lblPrenos2.Text = citac["menuvac"].ToString();
                lblBandazi2.Text = citac["oprema_bandazi"].ToString();
                lblGumi2.Text = citac["oprema_gumi"].ToString();
                lblSopiranje2.Text = citac["oprema_sopiranje"].ToString();
                lblTezina2.Text = citac["tezina_bez_tovar"].ToString();
                lblMaxNosivost2.Text = citac["tezina_max"].ToString();
                lblBagaznik2.Text = citac["zafatnina_bagaznik"].ToString();
                lblRezervoar2.Text = citac["rezervoar"].ToString();
                lblZabrzuvanje2.Text = citac["zabrzuvanje"].ToString();
                lblMaxBrzina2.Text = citac["max_brzina"].ToString();
                lblPotrosuvacka2.Text = citac["potrosuvacka"].ToString();
                lblDimenzii2.Text = citac["dimenzii_d_s_v"].ToString();
                lblOsnovaTrkala2.Text = citac["osnova_trkala"].ToString();
            }
            citac.Close();
        }
        catch (Exception err)
        {
            lblPoraka.Text = err.Message;
        }
        finally
        {
            konekcija.Close();
        }
    }
    //Cistenje na site redovi vo tabelata
    protected void cisti()
    {
        img1.ImageUrl = "";
        lblZafatnina1.Text = "";
        lblMoknost1.Text = "";
        lblVrtezMom1.Text = "";
        lblGorivo1.Text = "";
        lblPogon1.Text = "";
        lblPrenos1.Text = "";
        lblBandazi1.Text = "";
        lblGumi1.Text = "";
        lblSopiranje1.Text = "";
        lblTezina1.Text = "";
        lblMaxNosivost1.Text = "";
        lblBagaznik1.Text = "";
        lblRezervoar1.Text = "";
        lblZabrzuvanje1.Text = "";
        lblMaxBrzina1.Text = "";
        lblPotrosuvacka1.Text = "";
        lblDimenzii1.Text = "";
        lblOsnovaTrkala1.Text = "";
    }
    //Cistenje na site redovi vo tabelata
    protected void cisti1()
    {
        img2.ImageUrl = "";
        lblZafatnina2.Text = "";
        lblMoknost2.Text = "";
        lblVrtezMom2.Text = "";
        lblGorivo2.Text = "";
        lblPogon2.Text = "";
        lblPrenos2.Text = "";
        lblBandazi2.Text = "";
        lblGumi2.Text = "";
        lblSopiranje2.Text = "";
        lblTezina2.Text = "";
        lblMaxNosivost2.Text = "";
        lblBagaznik2.Text = "";
        lblRezervoar2.Text = "";
        lblZabrzuvanje2.Text = "";
        lblMaxBrzina2.Text = "";
        lblPotrosuvacka2.Text = "";
        lblDimenzii2.Text = "";
        lblOsnovaTrkala2.Text = "";
    }
}