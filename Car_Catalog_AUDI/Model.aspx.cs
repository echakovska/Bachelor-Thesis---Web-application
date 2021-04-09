using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class Modeli : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            //Provekra na queryString
            lblPoraka.Text = Request.QueryString["ime"];
            lblPoraka1.Text = Request.QueryString["ime1"];
            lblPoraka2.Text = Request.QueryString["ime2"];
            lblPoraka3.Text = Request.QueryString["ime3"];
            lblPoraka4.Text = Request.QueryString["ime4"];
            lblPoraka5.Text = Request.QueryString["ime5"];

            if (Request.QueryString["ime"] == lblPoraka.Text || Request.QueryString["ime1"] == lblPoraka1.Text || Request.QueryString["ime2"] == lblPoraka2.Text)
                ispolni();
            else if (Request.QueryString["ime3"] == lblPoraka3.Text || Request.QueryString["ime4"] == lblPoraka4.Text || Request.QueryString["ime5"] == lblPoraka5.Text)
                ispolni1();
        }
    }
    //Ispolnuvanje na stranata model so prethodno odbraniot model, vospostavuvanje konekcija so baza i citanje parametri
    protected void ispolni()
    {
        string ime = lblPoraka.Text;
        string ime1 = lblPoraka1.Text;
        string ime2 = lblPoraka2.Text;
        lblPoraka1.Visible = false;
        lblPoraka2.Visible = false;
        int categorija = Convert.ToInt32(Request.QueryString["id"]);
        SqlConnection konekcija = new SqlConnection();
        konekcija.ConnectionString = ConfigurationManager.ConnectionStrings["mojaKonekcija"].ConnectionString;

        SqlCommand komanda = new SqlCommand();
        komanda.Connection = konekcija;
        komanda.CommandText = "SELECT serija, motor_ime FROM avtomobil WHERE serija LIKE'" + ime + "%' OR serija LIKE'" + ime1 + "%' OR serija LIKE'" + ime2 + "%'";

        try
        {
            konekcija.Open();
            SqlDataReader citac = komanda.ExecuteReader();
            ddlModel.Items.Add("Одбери модел");
            string ser;
            while (citac.Read())
            {
                int countCategory = 1;
                while (countCategory < 13)
                {
                    if (categorija == countCategory++)
                    {
                        ser = citac["serija"].ToString() + " " + citac["motor_ime"].ToString();
                        ddlModel.Items.Add(ser);
                    }
                }
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
    //Ispolnuvanje na stranata model so prethodno odbraniot model, vospostavuvanje konekcija so baza i citanje parametri
    protected void ispolni1()
    {
        string ime = lblPoraka3.Text;
        string ime1 = lblPoraka4.Text;
        string ime2 = lblPoraka5.Text;
        lblPoraka4.Visible = false;
        lblPoraka5.Visible = false;
        int categorija = Convert.ToInt32(Request.QueryString["id"]);
        SqlConnection konekcija = new SqlConnection();
        konekcija.ConnectionString = ConfigurationManager.ConnectionStrings["mojaKonekcija"].ConnectionString;

        SqlCommand komanda = new SqlCommand();
        komanda.Connection = konekcija;
        komanda.CommandText = "SELECT serija, motor_ime FROM avtomobil WHERE serija LIKE'" + ime + "%' OR serija LIKE'" + ime1 + "%' OR serija LIKE'" + ime2 + "%'";

        try
        {
            konekcija.Open();
            SqlDataReader citac = komanda.ExecuteReader();
            ddlModel.Items.Add("Одбери модел");
            string ser;
            while (citac.Read())
            {
                int countCategory = 1;
                while (countCategory < 13)
                {
                    if (categorija == countCategory++)
                    {
                        ser = citac["serija"].ToString() + " " + citac["motor_ime"].ToString();
                        ddlModel.Items.Add(ser);
                    }
                }
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
    //Ispolnuvanje na tabelata so soodvetno selektiraniot model od pagjackata listata
    protected void ddlModel_SelectedIndexChanged(object sender, EventArgs e)
    {
        //ddlModel.Items[0].Enabled = false;
        SqlConnection konekcija = new SqlConnection();
        konekcija.ConnectionString = ConfigurationManager.ConnectionStrings["mojaKonekcija"].ConnectionString;
        string sqlstring = "SELECT * FROM avtomobil WHERE id_model='" + ddlModel.SelectedValue + "'";
        SqlCommand komanda = new SqlCommand(sqlstring, konekcija);
        try
        {
            konekcija.Open();
            SqlDataReader citac = komanda.ExecuteReader();
            if (citac.Read())
            {
                string test = citac["pogled"].ToString();
                tb1.Visible = true;
                if (citac["slika"].ToString() != "")
                {
                    img1.Visible = true;
                    img1.ImageUrl = "~/images/modeli/" + citac["slika"].ToString();
                }
                lblZafatnina.Text = citac["motor_zafatnina"].ToString();
                lblMoknost.Text = citac["motor_moknost"].ToString();
                lblVrtezMom.Text = citac["motor_vrtezen_moment"].ToString();
                lblGorivo.Text = citac["motor_gorivo"].ToString();
                lblPogon.Text = citac["pogon_na_trkala"].ToString();
                lblPrenos.Text = citac["menuvac"].ToString();
                lblBandazi.Text = citac["oprema_bandazi"].ToString();
                lblGumi.Text = citac["oprema_gumi"].ToString();
                lblSopiranje.Text = citac["oprema_sopiranje"].ToString();
                lblTezina.Text = citac["tezina_bez_tovar"].ToString();
                lblMaxNosivost.Text = citac["tezina_max"].ToString();
                lblBagaznik.Text = citac["zafatnina_bagaznik"].ToString();
                lblRezervoar.Text = citac["rezervoar"].ToString();
                lblZabrzuvanje.Text = citac["zabrzuvanje"].ToString();
                lblMaxBrzina.Text = citac["max_brzina"].ToString();
                lblPotrosuvacka.Text = citac["potrosuvacka"].ToString();
                lblDimenzii.Text = citac["dimenzii_d_s_v"].ToString();
                lblOsnovaTrkala.Text = citac["osnova_trkala"].ToString();
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
    //Prenasocuvanje na Sporedi.aspx kade se vrsi sporedba na prethodno selektiraniot model so novo izbraniot
    protected void btnSporedi_Click(object sender, EventArgs e)
    {
        Session["select"] = ddlModel.SelectedValue;
        Response.Redirect("Sporedi.aspx");
    }
}