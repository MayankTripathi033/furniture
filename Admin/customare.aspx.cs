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

public partial class customare : System.Web.UI.Page
{
    OleDbConnection con = new OleDbConnection();
    string str;
    OleDbCommand cmd;
    OleDbDataAdapter da = new OleDbDataAdapter();
    DataTable dt = new DataTable();
    DataSet ds = new DataSet();

    protected void Page_Load(object sender, EventArgs e)
    {
        con.ConnectionString = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=D:\\jayesh\\fjayesh.mdb";
        con.Open();

        if (!IsPostBack)
        {

            bnd1();
        }
    }

    protected void bnd1()
    {
        str = "select * from user_data";
        da = new OleDbDataAdapter(str, con);
        da.Fill(ds);

        GridView01.DataSource = ds;
        GridView01.DataBind();

    }
    protected void GridView01_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView01.PageIndex = e.NewPageIndex;
        bnd1();

    }

    protected void GridView01_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void GridView01_RowEditing(object sender, GridViewEditEventArgs e)
    {
        GridView01.EditIndex = e.NewEditIndex;
        bnd1();
    }
    protected void GridView01_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        
        
            Label i1 = GridView01.Rows[e.RowIndex].FindControl("lblid") as Label;
            TextBox n = GridView01.Rows[e.RowIndex].FindControl("lblname") as TextBox;
            TextBox un = GridView01.Rows[e.RowIndex].FindControl("lblusername1") as TextBox;
            TextBox g = GridView01.Rows[e.RowIndex].FindControl("lblgender") as TextBox;
            TextBox m = GridView01.Rows[e.RowIndex].FindControl("lblmobile") as TextBox;
            TextBox em = GridView01.Rows[e.RowIndex].FindControl("lblemail") as TextBox;
            TextBox p1 = GridView01.Rows[e.RowIndex].FindControl("lblpass") as TextBox;
            TextBox a = GridView01.Rows[e.RowIndex].FindControl("lbladdress") as TextBox;
        try
        {
            str = "delete from user_data where o_id="+int.Parse(i1.Text)+"";
            cmd = new OleDbCommand(str, con);
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Write("<script>alert('Delete Record Successfully')</script>");

            //GridView01.EditIndex = -1;
            //bnd1();
        }
        catch (Exception ex)
        {
            Response.Write("<script>alert('Record not Deleted')</script>");
            Response.Write(ex.ToString());
        }
    }
}
