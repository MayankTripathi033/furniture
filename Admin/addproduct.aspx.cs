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

public partial class Admin_addproduct : System.Web.UI.Page
{
    OleDbConnection con = new OleDbConnection();
    OleDbCommand cmd;
    string str;
    int id2=0;
    OleDbDataAdapter da = new OleDbDataAdapter();
    DataSet ds = new DataSet();
    DataTable dt = new DataTable();

    protected void Page_Load(object sender, EventArgs e)
    {
        con.ConnectionString = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=D:\\jayesh\\fjayesh.mdb";
        con.Open();

        try
        {
            str = "select max(p_id) as p_id from product";
            da = new OleDbDataAdapter(str, con);
            da.Fill(ds);


            id2 = 1;

            
                id2 = int.Parse(ds.Tables[0].Rows[0]["p_id"].ToString());
            if(id2>0)
            {
                id2++;
            }
            else
            {
                id2 = 1;
            }
            txt_addproduct_pid.Text = id2.ToString();
        }
        catch (Exception es)
        {
            Response.Write(es.ToString());
        }

    }
   
    protected void btnfadd_Click1(object sender, EventArgs e)
    {
        try
        {
            str = "insert into product values(" + txt_addproduct_pid.Text + ",'" + txt_addproduct_pname.Text + "'," + txt_addproduct_price.Text + ",'" + Image3.ImageUrl + "')";
            cmd = new OleDbCommand(str, con);
            cmd.ExecuteNonQuery();
            con.Close();

            Response.Write("<script>alert('Add Item Successfully')</script>");

        }
        catch (Exception ex)
        {
            Response.Write("<script>alert('Add Item Unsucess')</script>");
            Response.Write(ex.ToString());
        }
    }
    protected void btnupload_Click(object sender, EventArgs e)
    {
        if (FileUpload1.HasFile)
            try
            {
                string file_name = FileUpload1.FileName;
                FileUpload1.SaveAs(Server.MapPath("~img1" + file_name));
                Image3.ImageUrl = "~img1" + file_name;
            }
            catch (Exception ex)
            {
                Response.Write(ex.ToString());
            }
    }
}
