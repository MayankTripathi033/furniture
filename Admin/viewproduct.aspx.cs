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
using System.Data.OleDb;
using System.IO;

public partial class Admin_viewproduct : System.Web.UI.Page
{
    OleDbConnection con = new OleDbConnection();
    OleDbDataAdapter da = new OleDbDataAdapter();
    OleDbCommand cmd;
    string str;
    DataSet ds = new DataSet();
    DataTable dt = new DataTable();

    protected void Page_Load(object sender, EventArgs e)
    {
        con.ConnectionString = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=D:\\jayesh\\fjayesh.mdb";
        con.Open();


        if (!IsPostBack)
        {
            bind();
        }
    }

    protected void bind()
    {
        str = "select * from product";
        da = new OleDbDataAdapter(str, con);
        da.Fill(ds);

        GridView5.DataSource = ds;
        GridView5.DataBind();

    }
    protected void GridView5_SelectedIndexChanged(object sender, EventArgs e)
    {
        GridView5.EditIndex = -1;
        bind();
    }
    protected void GridView5_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView5.PageIndex = e.NewPageIndex;
        GridView5.DataBind();
        bind();
    }
}
