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

public partial class Admin_orderdata : System.Web.UI.Page
{
    OleDbConnection con = new OleDbConnection();
    OleDbDataAdapter da = new OleDbDataAdapter();
    string str;
    OleDbCommand cmd;
    DataSet ds = new DataSet();

    protected void Page_Load(object sender, EventArgs e)
    {
        con.ConnectionString = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=D:\\jayesh\\fjayesh.mdb";
        con.Open();

        if (!IsPostBack)
        {
            orderbnd();
        }
    }

    protected void orderbnd()
    {
        str = "select * from orders";
        da = new OleDbDataAdapter(str, con);
        da.Fill(ds);


        GridView2.DataSource = ds;
        GridView2.DataBind();
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        
    }
    protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void GridView2_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView2.PageIndex = e.NewPageIndex;
        GridView2.DataBind();
        orderbnd();
  
    }
    protected void GridView2_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {

        Label oi = GridView2.Rows[e.RowIndex].FindControl("lblfid") as Label;
        TextBox pi = GridView2.Rows[e.RowIndex].FindControl("lblpid") as TextBox;
        TextBox nm = GridView2.Rows[e.RowIndex].FindControl("lblname") as TextBox;
        TextBox am = GridView2.Rows[e.RowIndex].FindControl("lblamt") as TextBox;
        TextBox qt = GridView2.Rows[e.RowIndex].FindControl("lblqty") as TextBox;
        TextBox de = GridView2.Rows[e.RowIndex].FindControl("lbl_order_date") as TextBox;

        try
        {

            str = "delete from orders where o_id="+int.Parse(oi.Text)+"";
            cmd = new OleDbCommand(str, con);
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Write("<script>alert('Deleted successfully')</script>");
            

        }
        catch (Exception ex)
        {
            Response.Write("<script>alert('REcord not deleted')</script>");
            Response.Write(ex.ToString());
        }
    }
    
}
