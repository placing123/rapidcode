﻿using System;
using System.Data;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;
using DLL;


public partial class Franchisee_PersonalDetails : System.Web.UI.Page
{
    clsFranchisee CF = new clsFranchisee();
    DataSet ds = new DataSet();
    MyCon mycon = new MyCon();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Cus_Username"] == null)
        {
            Response.Redirect("../Default.aspx");
        }
        if (!IsPostBack)
        {
            Personaldetails();
        }
    }

    public void Personaldetails()
    {
        try
        {
            CF.username = Session["Cus_Username"].ToString();
            ds = CF.ViewPersonaldetails_Customer();

            lbl_cid.Text = ds.Tables[0].Rows[0]["CId"].ToString();
            lbl_cname.Text = ds.Tables[0].Rows[0]["Name"].ToString();
            lbl_address.Text = ds.Tables[0].Rows[0]["Address"].ToString();
            lbl_mob.Text = ds.Tables[0].Rows[0]["MobileNo"].ToString();
            lbl_email.Text = ds.Tables[0].Rows[0]["EmailId"].ToString();
            txt_acname.Text = ds.Tables[0].Rows[0]["acname"].ToString();
            txt_acnumber.Text = ds.Tables[0].Rows[0]["acnumber"].ToString();
            txt_ifsccode.Text = ds.Tables[0].Rows[0]["ifsccode"].ToString();

        }
        catch { }
    }

    protected void btn_update_Click(object sender, EventArgs e)
    {
        mycon.ExecutQury("update tbl_registration set acname='" + txt_acname.Text + "',acnumber='" + txt_acnumber.Text + "',ifsccode='" + txt_ifsccode.Text + "' where cid='" + lbl_cid.Text + "'");
        ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('Detail Updated');", true);
    }
}