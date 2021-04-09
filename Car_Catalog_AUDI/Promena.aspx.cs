using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using System.Drawing;
using System.IO;

public partial class promena_gridview : System.Web.UI.Page
{
    DataTable dt = new DataTable();
    DataSet Gds = new DataSet();
    protected void Page_Load(object sender, EventArgs e)
    {
        lblPoraka.Text = "";
        if (!IsPostBack)
        {
            ddlSerija1.Items.Add("Одбери серија");
            ispolni();
        }
    }
    //prikacuvanje na sliki za modelite
    protected void btnUpload2_Click(object sender, EventArgs e)
    {

        if (FileUpload2.HasFile)
        {
            try
            {
                string filename = Path.GetFileName(FileUpload2.FileName);
                FileUpload2.SaveAs(Server.MapPath("~/images/modeli/") + filename);
                lblPoraka.ForeColor = Color.FromName("Green");
                lblPoraka.Text = "Фајлот е прикачен!";
            }
            catch (Exception)
            {
                lblPoraka.ForeColor = Color.FromName("Red");
                lblPoraka.Text = "Фајлот не може да се прикачи.";
            }
        }
        else
        {
            lblPoraka.ForeColor = Color.FromName("Red");
            lblPoraka.Text = "Немате избрано фајл!";
        }
    }
    //odbiranje na serija na avtomobil
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
    //odbiranje na model na avtomobil
    protected void Ispolni2()
    {
        SqlConnection konekcija = new SqlConnection();
        konekcija.ConnectionString = ConfigurationManager.ConnectionStrings["mojaKonekcija"].ConnectionString;
        string sqlString = "SELECT * FROM avtomobil WHERE id_model = @id_model";
        SqlCommand komanda = new SqlCommand(sqlString, konekcija);
        komanda.Parameters.AddWithValue("@id_model", grid1.DataKeys[grid1.SelectedIndex].Value);
        SqlDataAdapter adapter = new SqlDataAdapter(komanda);
        DataSet ds = new DataSet();
        try
        {
            konekcija.Open();
            adapter.Fill(ds, "Nesto1");
            dtl1.Visible = true;
            dtl1.DataSource = ds;
            dtl1.DataBind();
            SqlDataReader citac = komanda.ExecuteReader();
            while (citac.Read())
            {
                string model = citac["id_model"].ToString();
                Session["model"] = citac["id_model"].ToString();
                if (citac["slika"].ToString() != "")
                {
                    img111.Visible = true;
                    img111.ImageUrl = "~/images/modeli/" + citac["slika"].ToString();
                }
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
    protected void ddlSerija1_SelectedIndexChanged(object sender, EventArgs e)
    {
        ddlSerija1.Items[0].Enabled = false;
        dtl1.Visible = false;
        img111.Visible = false;
        SqlConnection konekcija = new SqlConnection();
        konekcija.ConnectionString = ConfigurationManager.ConnectionStrings["mojaKonekcija"].ConnectionString;
        string sqlstring = "SELECT * FROM avtomobil WHERE serija='" + ddlSerija1.SelectedValue + "'";
        SqlCommand komanda = new SqlCommand(sqlstring, konekcija);
        SqlDataAdapter adapter = new SqlDataAdapter(komanda);
        DataSet ds = new DataSet();
        try
        {
            konekcija.Open();
            adapter.Fill(ds, "avtomobil");
            grid1.DataSource = ds;
            grid1.DataBind();
            ViewState["dataset"] = ds;
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
    //stranicenje na gridview
    protected void grid1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        grid1.PageIndex = e.NewPageIndex;
        grid1.SelectedIndex = -1;
        DataSet ds = (DataSet)ViewState["dataset"];
        grid1.DataSource = ds;
        grid1.DataBind();
    }
    protected void grid1_SelectedIndexChanged(object sender, EventArgs e)
    {
        Ispolni2();
    }
    //vnesuvanje na podatoci vo baza
    protected void btnVnesi_Click(object sender, EventArgs e)
    {
        Response.Redirect("Vnesi.aspx?id=1&ime=test");
    }
}