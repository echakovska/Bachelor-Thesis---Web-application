using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Drawing;
using System.Text;

public partial class promena : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            int categorija = Convert.ToInt32(Request.QueryString["id"]);
            if (categorija == 1)
            {
                btnVnesi.Enabled = true;
                txtSerija.Enabled = true;
                txtImeMotor.Enabled = true;
            }
            else
            {
                ispolni_p();
                btnPromeni.Enabled = true;
                txtSerija.Enabled = false;
                txtImeMotor.Enabled = false;
            }
        }
    }
    //Ispolnuvanje so informacii
    protected void ispolni_p()
    {
        string model = (string)Session["model"];
        SqlConnection konekcija = new SqlConnection();
        konekcija.ConnectionString = ConfigurationManager.ConnectionStrings["mojaKonekcija"].ConnectionString;
        string sqlstring = "SELECT * FROM avtomobil WHERE id_model='" + model + "'";
        SqlCommand komanda = new SqlCommand(sqlstring, konekcija);
        try
        {
            konekcija.Open();
            SqlDataReader citac = komanda.ExecuteReader();
            string model1;
            while (citac.Read())
            {
                model1 = citac["serija"].ToString() + " " + citac["motor_ime"].ToString();
                txtSerija.Text = citac["serija"].ToString();
                txtImeMotor.Text = citac["motor_ime"].ToString();
                txtZafatninaMotor.Text = citac["motor_zafatnina"].ToString();
                txtMoknost.Text = citac["motor_moknost"].ToString();
                txtVrtezMoment.Text = citac["motor_vrtezen_moment"].ToString();
                txtGorivo.Text = citac["motor_gorivo"].ToString();
                txtPogonTrkala.Text = citac["pogon_na_trkala"].ToString();
                txtMenuvac.Text = citac["menuvac"].ToString();
                txtBandazi.Text = citac["oprema_bandazi"].ToString();
                txtGumi.Text = citac["oprema_gumi"].ToString();
                txtSopiranje.Text = citac["oprema_sopiranje"].ToString();
                txtBezTovar.Text = citac["tezina_bez_tovar"].ToString();
                txtMaxTezina.Text = citac["tezina_max"].ToString();
                txtBagaznik.Text = citac["zafatnina_bagaznik"].ToString();
                txtRezervoar.Text = citac["rezervoar"].ToString();
                txtZabrzuvanje.Text = citac["zabrzuvanje"].ToString();
                txtMaxBrzina.Text = citac["max_brzina"].ToString();
                txtPotrosuvacka.Text = citac["potrosuvacka"].ToString();
                txtDimenzii.Text = citac["dimenzii_d_s_v"].ToString();
                txtOsnovaTrkala.Text = citac["osnova_trkala"].ToString();
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
    public static string unicode_iso8859(string src)
    {
        Encoding iso = Encoding.GetEncoding("iso8859-1");
        Encoding unicode = Encoding.UTF8;
        byte[] unicodeBytes = unicode.GetBytes(src);
        return iso.GetString(unicodeBytes);
    }
    protected void upload()
    {
        String savePath = "~/images/modeli/";
        if (FileUpload1.HasFile)
        {
            String fileName = FileUpload1.FileName;
            savePath += fileName;
        }
    }
    protected void upload1()
    {
        String savePath1 = "~/360/";
        if (FileUpload2.HasFile)
        {
            String fileName1 = FileUpload2.FileName;
            savePath1 += fileName1;
        }
    }
    //dodavanje na nov avtomobil
    protected void btnVnesi_Click(object sender, EventArgs e)
    {
        lblPoraka.Text = "";
        SqlConnection konekcija = new SqlConnection();
        konekcija.ConnectionString = ConfigurationManager.ConnectionStrings["mojaKonekcija"].ConnectionString;
        SqlCommand komanda = new SqlCommand();
        komanda.Connection = konekcija;
        komanda.CommandText = "INSERT INTO avtomobil (id_model, serija, motor_ime, motor_zafatnina, motor_moknost, motor_vrtezen_moment, " +
                                                     "motor_gorivo, pogon_na_trkala, menuvac, oprema_bandazi, oprema_gumi, " +
                                                     "oprema_sopiranje, tezina_bez_tovar, tezina_max, zafatnina_bagaznik, rezervoar, " +
                                                     "zabrzuvanje, max_brzina, potrosuvacka, dimenzii_d_s_v, osnova_trkala, slika, pogled)" +
                              "VALUES(@id_model, @serija, @motor_ime, @motor_zafatnina, @motor_moknost, @motor_vrtezen_moment, " +
                                                     "@motor_gorivo, @pogon_na_trkala, @menuvac, @oprema_bandazi, @oprema_gumi, " +
                                                     "@oprema_sopiranje, @tezina_bez_tovar, @tezina_max, @zafatnina_bagaznik, @rezervoar, " +
                                                     "@zabrzuvanje, @max_brzina, @potrosuvacka, @dimenzii_d_s_v, @osnova_trkala, @slika, @pogled)";

        komanda.Parameters.AddWithValue("@id_model", txtSerija.Text + " " + txtImeMotor.Text);
        komanda.Parameters.AddWithValue("@serija", txtSerija.Text);
        komanda.Parameters.AddWithValue("@motor_ime", txtImeMotor.Text);
        komanda.Parameters.AddWithValue("@motor_zafatnina", txtZafatninaMotor.Text);
        komanda.Parameters.AddWithValue("@motor_moknost", txtMoknost.Text);
        komanda.Parameters.AddWithValue("@motor_vrtezen_moment", txtVrtezMoment.Text);
        komanda.Parameters.AddWithValue("@motor_gorivo", txtGorivo.Text);
        komanda.Parameters.AddWithValue("@pogon_na_trkala", txtPogonTrkala.Text);
        komanda.Parameters.AddWithValue("@menuvac", txtMenuvac.Text);
        komanda.Parameters.AddWithValue("@oprema_bandazi", txtBandazi.Text);
        komanda.Parameters.AddWithValue("@oprema_gumi", txtGumi.Text);
        komanda.Parameters.AddWithValue("@oprema_sopiranje", txtSopiranje.Text);
        komanda.Parameters.AddWithValue("@tezina_bez_tovar", txtBezTovar.Text);
        komanda.Parameters.AddWithValue("@tezina_max", txtMaxTezina.Text);
        komanda.Parameters.AddWithValue("@zafatnina_bagaznik", txtBagaznik.Text);
        komanda.Parameters.AddWithValue("@rezervoar", txtRezervoar.Text);
        komanda.Parameters.AddWithValue("@zabrzuvanje", txtZabrzuvanje.Text);
        komanda.Parameters.AddWithValue("@max_brzina", txtMaxBrzina.Text);
        komanda.Parameters.AddWithValue("@potrosuvacka", txtPotrosuvacka.Text);
        komanda.Parameters.AddWithValue("@dimenzii_d_s_v", txtDimenzii.Text);
        komanda.Parameters.AddWithValue("@osnova_trkala", txtOsnovaTrkala.Text);
        komanda.Parameters.AddWithValue("@slika", FileUpload1.FileName.ToString());
        komanda.Parameters.AddWithValue("@pogled", FileUpload2.FileName.ToString());
        if (lblPorakaUpload.Text == "")
        {
            try
            {
                konekcija.Open();
                komanda.ExecuteNonQuery();
                lblPoraka.ForeColor = Color.FromName("Green");
                lblPoraka.Text = "Успешнo внесен нов автомобил!";
            }
            catch (Exception)
            {
                lblPoraka.ForeColor = Color.FromName("Red");
                lblPoraka.Text = "Постоечки автомобил";
            }
            finally
            {
                konekcija.Close();
            }
        }
    }
    //promena na informaciite
    protected void btnPromeni_Click(object sender, EventArgs e)
    {
        string model = (string)Session["model"];
        lblPoraka.Text = "";
        SqlConnection konekcija = new SqlConnection();
        konekcija.ConnectionString = ConfigurationManager.ConnectionStrings["mojaKonekcija"].ConnectionString;
        SqlCommand komanda = new SqlCommand();
        komanda.Connection = konekcija;
        komanda.CommandText = "UPDATE avtomobil SET motor_zafatnina='" + txtZafatninaMotor.Text +
                                                    "',motor_moknost='" + txtMoknost.Text +
                                                    "',motor_vrtezen_moment='" + txtVrtezMoment.Text +
                                                    "',motor_gorivo='" + txtGorivo.Text +
                                                    "',pogon_na_trkala='" + txtPogonTrkala.Text +
                                                    "',menuvac='" + txtMenuvac.Text +
                                                    "',oprema_bandazi='" + txtBandazi.Text +
                                                    "',oprema_gumi='" + txtGumi.Text +
                                                    "',oprema_sopiranje='" + txtSopiranje.Text +
                                                    "',tezina_bez_tovar='" + txtBezTovar.Text +
                                                    "',tezina_max='" + txtMaxTezina.Text +
                                                    "',zafatnina_bagaznik='" + txtBagaznik.Text +
                                                    "',rezervoar='" + txtRezervoar.Text +
                                                    "',zabrzuvanje='" + txtZabrzuvanje.Text +
                                                    "',max_brzina='" + txtMaxBrzina.Text +
                                                    "',potrosuvacka='" + txtPotrosuvacka.Text +
                                                    "',dimenzii_d_s_v='" + txtDimenzii.Text +
                                                    "',osnova_trkala='" + txtOsnovaTrkala.Text +
                                                    "',slika='" + FileUpload1.FileName.ToString() +
                                                    "' WHERE id_model='" + model + "'";
        if (lblPorakaUpload.Text == "")
        {
            try
            {
                konekcija.Open();
                komanda.ExecuteNonQuery();
                lblPoraka.ForeColor = Color.FromName("Green");
                lblPoraka.Text = "Успешна промена!";
            }
            catch (Exception err)
            {
                lblPoraka.ForeColor = Color.FromName("Red");
                lblPoraka.Text = err.Message;
            }
            finally
            {
                konekcija.Close();
            }
        }
    }
}