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

public partial class Admin_Edit_Item : System.Web.UI.Page
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
            bnd();
        }
    }
    
    protected void bnd()
    {
        str = "select * from product";
        da = new OleDbDataAdapter(str, con);
        da.Fill(ds);

        GridView1.DataSource = ds;
        GridView1.DataBind();
        
    }
    
    
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        bnd();
    }
    protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
            Label i = GridView1.Rows[e.RowIndex].FindControl("lblfid") as Label;
            TextBox n = GridView1.Rows[e.RowIndex].FindControl("txtfname") as TextBox;
            
            TextBox p = GridView1.Rows[e.RowIndex].FindControl("txtfprice") as TextBox;
            Image i1 = GridView1.Rows[e.RowIndex].FindControl("Image3") as Image;
            FileUpload f = GridView1.Rows[e.RowIndex].FindControl("FileUpload1") as FileUpload;

            if (f.HasFile)
            {

                f.PostedFile.SaveAs(Server.MapPath("~/img1/" + f.FileName));
                i1.ImageUrl = "~/img1/" + f.FileName;


                str = "update product set p_name='"+n.Text+"',price=" + p.Text + ",img='"+i1.ImageUrl+"' where p_id="+int.Parse(i.Text)+" ";
                cmd = new OleDbCommand(str, con);
                if (cmd.ExecuteNonQuery() == 1)
                {
                    Response.Write(" Update Record successfully");
                }
                else
                {
                    Response.Write(" Updated unsuccess.."); 
                }
                GridView1.EditIndex = -1;

            }
            else
            {
                str = "update product set p_name='" + n.Text + "',price=" + p.Text + ",img='" + i1.ImageUrl + "' where p_id=" + int.Parse(i.Text) + " ";
                cmd = new OleDbCommand(str, con);
                if (cmd.ExecuteNonQuery() == 1)
                {
                    Response.Write(" Update Record successlly");
                }
                else
                {
                    Response.Write("Updated unsuccess..");
                }
                GridView1.EditIndex = -1;
            }
        
    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        try
        {
            Label i = GridView1.Rows[e.RowIndex].FindControl("lblfid") as Label;
            TextBox n = GridView1.Rows[e.RowIndex].FindControl(" txtfname") as TextBox;

            TextBox p = GridView1.Rows[e.RowIndex].FindControl("txtfprice") as TextBox;
            Image i1 = GridView1.Rows[e.RowIndex].FindControl("Image3") as Image;
            FileUpload f = GridView1.Rows[e.RowIndex].FindControl("FileUpload1") as FileUpload;




            str = "delete * from product where p_id=" + int.Parse(i.Text) + "";
            cmd = new OleDbCommand(str, con);
            if (cmd.ExecuteNonQuery() == 1)
            {
                Response.Write(" Delete Record successfully");
            }
            else
            {
                Response.Write("Deleted unsuccess..");
            }
            GridView1.EditIndex = -1;
            bnd();
        }
        catch (Exception ex)
        {
           
            Response.Write(ex.ToString());
        }
    }
    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {
        GridView1.EditIndex = e.NewEditIndex;
        bnd();
    }
    protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        GridView1.EditIndex = -1;
        bnd();
    }
}
