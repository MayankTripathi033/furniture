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

public partial class Admin_adminchangepass : System.Web.UI.Page
{
    OleDbConnection con = new OleDbConnection();
    OleDbCommand cmd;
    string str;
    OleDbDataAdapter da = new OleDbDataAdapter();
    DataTable dt = new DataTable();


    protected void Page_Load(object sender, EventArgs e)
    {
        con.ConnectionString = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=D:\\jayesh\\fjayesh.mdb";
        con.Open();

    }
    protected void btnchangepass_admin_Click(object sender, EventArgs e)
    {
        str = "select mobile,email  from admin where mobile=" + txt_admincp_mobile.Text + " and email='" + txt_admincp_email.Text + "'";
        da = new OleDbDataAdapter(str, con);
        da.Fill(dt);

        if (dt.Rows.Count > 0)
        {
            try
            {
                str = "update admin set passadmin='" + txt_admincp_changepass.Text + "' where mobile=" + txt_admincp_mobile.Text + " and passadmin='" + txt_admincp_oldpass.Text + "'";
                cmd = new OleDbCommand(str, con);
                cmd.ExecuteNonQuery();

                Response.Write("<script>alert('Change Password Succesfully')</script>");

            }
            catch (Exception ex)
            {
                Response.Write(ex.ToString());
            }
        }
        else
        {
            Response.Write("<script>alert('Email or mobile not exist')</script>");
        }
    
    }
}
