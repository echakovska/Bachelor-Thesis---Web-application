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

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    //So klik na slikata se vrsi prenasocuvanje na druga strana
    protected void lb1_Click(object sender, EventArgs e)
    {
        Response.Redirect("Model.aspx?id=5&ime=A6&ime1=S6&ime2=RS6");
    }
    //So klik na slikata se vrsi prenasocuvanje na druga strana
    protected void lb2_Click(object sender, EventArgs e)
    {
        Response.Redirect("Model.aspx?id=6&ime=A7&ime1=S7&ime2=S7");
    }
}