using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class SiteMap : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void A1_Click(object sender, EventArgs e)
    {
        Response.Redirect("Model.aspx?id=1&ime=A1&ime1=A1&ime2=A1");
    }
    protected void A3_Click(object sender, EventArgs e)
    {
        Response.Redirect("Model.aspx?id=2&ime=A3&ime1=S3&ime2=RS3");
    }
    protected void A4_Click(object sender, EventArgs e)
    {
        Response.Redirect("Model.aspx?id=3&ime=A4&ime1=S4&ime2=S4");
    }
    protected void A5_Click(object sender, EventArgs e)
    {
        Response.Redirect("Model.aspx?id=4&ime=A5&ime1=S5&ime2=RS5");
    }
    protected void A6_Click(object sender, EventArgs e)
    {
        Response.Redirect("Model.aspx?id=5&ime=A6&ime1=S6&ime2=RS6");
    }
    protected void A7_Click(object sender, EventArgs e)
    {
        Response.Redirect("Model.aspx?id=6&ime=A7&ime1=S7&ime2=S7");
    }
    protected void A8_Click(object sender, EventArgs e)
    {
        Response.Redirect("Model.aspx?id=7&ime=A8&ime1=S8&ime2=S8");
    }
    protected void Q3_Click(object sender, EventArgs e)
    {
        Response.Redirect("Model.aspx?id=8&ime=Q3&ime1=Q3&ime2=Q3");
    }
    protected void Q5_Click(object sender, EventArgs e)
    {
        Response.Redirect("Model.aspx?id=9&ime=Q5&ime1=Q5&ime2=Q5");
    }
    protected void Q7_Click(object sender, EventArgs e)
    {
        Response.Redirect("Model.aspx?id=10&ime=Q7&ime1=Q7&ime2=Q7");
    }
    protected void TT_Click(object sender, EventArgs e)
    {
        Response.Redirect("Model.aspx?id=11&ime=TT&&ime1=TT&ime2=TT");
    }
    protected void R8_Click(object sender, EventArgs e)
    {
        Response.Redirect("Model.aspx?id=12&ime=R8&&ime1=R8&ime2=R8");
    }
}