using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
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
using System.Net.Mail;

    public partial class Franchisee_PersonalDetails : System.Web.UI.Page
    {
        clsFranchisee CF = new clsFranchisee();
        DataSet ds = new DataSet();
        string CusID;
        clsAdmin AD = new clsAdmin();
        MyCon mycon = new MyCon();
        DataTable dt = new DataTable();

        protected void Page_Load(object sender, EventArgs e)
        {
            GetCid();
            if (!IsPostBack)
            {
                FillPlan();
                fillcaller();
            }
        }
        public void fillcaller()
        {
            dt = mycon.FillDataTable("select callername from tbl_callermaster with(nolock) where callername='ONLINE' ");
            ddl_callername1.DataSource = dt;
            ddl_callername1.DataTextField = "callername";
            ddl_callername1.DataValueField = "callername";
            ddl_callername1.DataBind();
        }
        public void FillPlan()
        {
            dt = mycon.FillDataTable("select pname,pid from tbl_plan with(nolock) where pname='FOC 800'");
            drp_plan1.DataSource = dt;
            drp_plan1.DataTextField = "PName";
            drp_plan1.DataValueField = "PId";
            drp_plan1.DataBind();
            drp_plan1.SelectedIndex = 2;
        }
        public void GetCid()
        {
            DataSet dsgetid = AD.Select_Customer_MaxId();
            DateTime dt = DateTime.Now;
            string date = dt.ToString("ddMMyyyy");

            if (dsgetid.Tables[0].Rows[0][0].ToString() == "")
            {
                CusID = "1" + "RPJ" + date;
            }
            else
            {
                int no = Convert.ToInt32(dsgetid.Tables[0].Rows[0][0].ToString()) + 1;
                CusID = no + "RPJ" + date;
            }
            lblid.Text = CusID.ToString();
        }
        public void cleartext()
        {
            txt_name.Text = "";
            txt_add.Text = "";
            //txt_compname.Text = "";
            //txt_city.Text = "";
            txt_mobno.Text = "";
            txt_email.Text = "";
            //drp_plan.SelectedIndex = 0;
        }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            string allowedChars = "";
            //allowedChars = "a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p,q,r,s,t,u,v,w,x,y,z,";
            //allowedChars += "A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X,Y,Z,";
            allowedChars += "1,2,3,4,5,6,7,8,9,0";
            char[] sep = { ',' };
            string[] arr = allowedChars.Split(sep);
            string pass = "";
            string temp = "";
            Random rand = new Random();
            for (int i = 0; i < 5; i++)
            {
                temp = arr[rand.Next(0, arr.Length)];
                pass += temp;
            }
            CF.CId = CusID.ToString();
            CF.password = pass.ToString();
            CF.FId = ddl_franchisee.Text;
            CF.Name = txt_name.Text.Trim();
            CF.Address = txt_add.Text.Trim();
            CF.City = "";// txt_city.Text.Trim();
            CF.MobileNo = txt_mobno.Text.Trim();
            CF.EmailId = txt_email.Text.Trim();
            CF.PlanId = drp_plan1.Text.Trim();
            CF.Reg_Date = mycon.indianTime().ToString("yyyy-MM-dd hh:mm:ss tt");
            CF.Status = "0";
            CF.Style = "0";
            CF.CompanyName = "";// txt_compname.Text;

            //CF.InsertCustomerReg();
            mycon.ExecutQury(@"insert into Tbl_Registration (CId,password,FId,Name,Address,City,MobileNo,EmailId,PlanId,Reg_Date,Status,Style,CompanyName,Change,callername) values 
                            (@0,@1,@2,@3,@4,'',@5,@6,@7,@8,'0','0','rapidjob','0',@9)", CusID.ToString(), pass.ToString(), ddl_franchisee.Text,
                            txt_name.Text.Trim(), txt_add.Text.Trim(), txt_mobno.Text.Trim(), txt_email.Text.Trim(), drp_plan1.Text.Trim(),
                            mycon.indianTime().ToString("yyyy-MM-dd hh:mm:ss tt"), ddl_callername1.Text);
            cleartext();
            GetCid();
            lblmsg.Visible = true;
            lblmsg.Text = "Registration Sucessfully Created , Reg. ID :: " + CF.CId;
            string temppath = Server.MapPath("~/control/Agreement/") + CF.CId + ".pdf";
            try
            {
                mycon.generatepdf(temppath, CF.EmailId, CF.Name, CF.MobileNo, CF.Address);

                string Email = ConfigurationManager.AppSettings["Email"].ToString();
                string Emailto = CF.EmailId;
                System.Net.Mail.MailMessage mail = new System.Net.Mail.MailMessage(Email, Emailto);
                mail.Subject = "Terms And Condition";
                mail.Body = @"Hello,<br/><br/>There is an attachment of the terms and conditions about the on-line form filling project. 
                                If you are satisfied by the terms kindly take a print out of it and sign on all the pages.<br/>
                                After signing send us the scanned copy of it on this email id.<br/>
                                After receipt of your signed scanned copy only you will be given the log in details to start the project.<br/><br/>
                                <b>or <b/><br/><br/>
                                you can login and accept our terms and condition by digital signature.<br/><br/>
                                User id : " + CF.CId + @"   <br/>
                                Password :" + CF.password + @"<br/>
                                http://rapidjobswork.com
                                <br/><br/>
                                Thanks.";
                mail.IsBodyHtml = true;
                mail.Attachments.Add(new Attachment(temppath));
                SmtpClient smtp = new SmtpClient();
                smtp.Send(mail);
                //Response.Redirect("CS.aspx");
            }
            catch (Exception ex)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('Mail sending Fail Register complete.');", true);
                //Response.Redirect("CS.aspx");
            }



        }
        catch (Exception ex)
        {
            ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + ex.Message.ToString() + "');", true);
            //Response.Redirect("CS.aspx");
        }

        string folderPath = Server.MapPath("~/Aadhar/") +CF.CId;

        //Check whether Directory (Folder) exists.
        if (!Directory.Exists(folderPath))
        {
            //If Directory (Folder) does not exists. Create it.
            Directory.CreateDirectory(folderPath);
        }

        //Save the File to the Directory (Folder).
        FileUpload1.SaveAs(folderPath + Path.GetFileName(FileUpload1.FileName));

        //Display the success message.
        lblMessage.Text = Path.GetFileName(FileUpload1.FileName) + " has been uploaded.";

        string folderPath2 = Server.MapPath("~/Aadhar/") + CF.CId;

        //Check whether Directory (Folder) exists.
        if (!Directory.Exists(folderPath2))
        {
            //If Directory (Folder) does not exists. Create it.
            Directory.CreateDirectory(folderPath2);
        }

        //Save the File to the Directory (Folder).
        FileUpload2.SaveAs(folderPath2 + Path.GetFileName(FileUpload2.FileName));

        //Display the success message.
        lblMessage.Text = Path.GetFileName(FileUpload2.FileName) + " has been uploaded.";

        string folderPath1 = Server.MapPath("~/Aadhar/") + CF.CId;

        //Check whether Directory (Folder) exists.
        if (!Directory.Exists(folderPath1))
        {
            //If Directory (Folder) does not exists. Create it.
            Directory.CreateDirectory(folderPath1);
        }

        //Save the File to the Directory (Folder).
        FileUpload3.SaveAs(folderPath1 + Path.GetFileName(FileUpload3.FileName));

        //Display the success message.
        lblMessage.Text = Path.GetFileName(FileUpload3.FileName) + " has been uploaded.";

    }
}