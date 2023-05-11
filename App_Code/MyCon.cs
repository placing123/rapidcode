using System;
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
using System.IO;
using System.Net.Mail;
using iTextSharp.text;
using iTextSharp.text.pdf;

/// <summary>
/// Summary description for MyCon
/// </summary>
public class MyCon
{

    public SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["MyConnection"].ToString());

    SqlCommand cmd = new SqlCommand();
    string Str;
    public string qurey;
    public string falge;
    public SqlCommand cmd1 = new SqlCommand();

    public MyCon()
    {

        //
        // TODO: Add constructor logic here
        //
    }
    public void ExecutQury(string strQury)
    {

        if (con.State == ConnectionState.Closed)
        {
            con.Open();
        }
        cmd = new SqlCommand(strQury, con);
        cmd.ExecuteNonQuery();
        con.Close();

    }
    public DataTable FillDataTable(string strQury)
    {
        DataTable dt = new DataTable();
        cmd = new SqlCommand(strQury, con);
        cmd.CommandText = strQury;
        cmd.CommandTimeout = 120;
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        dt.Clear();
        da.Fill(dt);
        return dt;

    }
    public DataSet FillDataset(string strQury)
    {
        DataSet ds = new DataSet();
        cmd = new SqlCommand(strQury, con);
        cmd.CommandText = strQury;
        cmd.CommandTimeout = 120;
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        ds.Clear();
        da.Fill(ds);
        return ds;
    }

    public void SaveData()
    {
        con.Open();
        cmd1.Connection = con;
        cmd1.CommandText = qurey;
        cmd1.CommandType = CommandType.StoredProcedure;
        cmd1.ExecuteNonQuery();
        cmd1.Parameters.Clear();
        con.Close();
    }
    public string AdExecScalar(string str)
    {
        try
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            cmd = new SqlCommand(str, con);
            str = Convert.ToString(cmd.ExecuteScalar());
            con.Close();
            if (str == "")
            {
                str = "0";
            }
            return str;
        }
        catch (Exception ex)
        {
            return "0";
        }
    }

    public void ExportDataSetToExcel(DataTable dt, string filename)
    {
        HttpResponse response = HttpContext.Current.Response;
        //response.Clear();
        //response.Charset = "";
        //response.ContentType = "application/vnd.ms-excel";
        //response.AddHeader("Content-Disposition", "attachment;filename=\"" + filename + "\"");
        //using (StringWriter writer = new StringWriter())
        //{
        //    using (HtmlTextWriter writer2 = new HtmlTextWriter(writer))
        //    {
        //        DataGrid grid = new DataGrid
        //        {
        //            DataSource = dt
        //        };
        //        grid.DataBind();
        //        grid.RenderControl(writer2);
        //        response.Write(writer.ToString());
        //        response.End();
        //    }
        //}
        /////////////////////////////////////////////////////
        //Clears all content output from the buffer stream.  
        response.ClearContent();
        //Adds HTTP header to the output stream  
        response.AddHeader("Content-Disposition", "attachment;filename=\"" + filename + "\"");

        // Gets or sets the HTTP MIME type of the output stream  
        response.ContentType = "application/vnd.ms-excel";
        string space = "";

        foreach (DataColumn dcolumn in dt.Columns)
        {

            response.Write(space + dcolumn.ColumnName);
            space = "\t";
        }
        response.Write("\n");
        int countcolumn;
        foreach (DataRow dr in dt.Rows)
        {
            space = "";
            for (countcolumn = 0; countcolumn < dt.Columns.Count; countcolumn++)
            {

                response.Write(space + dr[countcolumn].ToString());
                space = "\t";
            }
            response.Write("\n");
        }
        response.End();
    }
    public bool send(String emailId, String subject, String message)
    {
        string Email = ConfigurationManager.AppSettings["Email"].ToString();
        string Emailto = emailId;
        MailMessage mail = new MailMessage(Email, Emailto);
        mail.Subject = subject;
        mail.Body = message;
        mail.IsBodyHtml = true;
        SmtpClient smtp = new SmtpClient();
        smtp.Send(mail);
        return true;
    }

    public string randome(int no)
    {
        string strPwdchar = "abcdefghijklmnopqrstuvwxyz0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ";
        string strPwd = "";
        Random rnd = new Random();
        for (int i = 0; i < no; i++)
        {
            int iRandom = rnd.Next(0, strPwdchar.Length - 1);
            strPwd += strPwdchar.Substring(iRandom, 1);
        }
        return strPwd;
    }

    public DateTime indianTime()
    {
        TimeZoneInfo INDIAN_ZONE = TimeZoneInfo.FindSystemTimeZoneById("India Standard Time");
        DateTime indianTime = TimeZoneInfo.ConvertTimeFromUtc(DateTime.UtcNow, INDIAN_ZONE);
        return indianTime;
    }

    public void ExecutQury(string strQury, params string[] parameterValues)
    {

        if (con.State == ConnectionState.Closed)
        {
            con.Open();
        }
        cmd = new SqlCommand(strQury, con);
        for (int i = 0; i < parameterValues.Length; i++)
        {
            cmd.Parameters.Add("@" + i, parameterValues[i].ToString());
        }
        cmd.CommandTimeout = 120;
        cmd.ExecuteNonQuery();
        con.Close();

    }

    public DataTable FillDataTable(string strQury, params string[] parameterValues)
    {
        DataTable dt = new DataTable();
        cmd = new SqlCommand(strQury, con);
        for (int i = 0; i < parameterValues.Length; i++)
        {
            cmd.Parameters.Add("@" + i, parameterValues[i].ToString());
        }
        cmd.CommandText = strQury;
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        dt.Clear();
        da.Fill(dt);
        return dt;
    }
    public DataSet FillDataset(string strQury, params string[] parameterValues)
    {
        DataSet ds = new DataSet();
        cmd = new SqlCommand(strQury, con);
        for (int i = 0; i < parameterValues.Length; i++)
        {
            cmd.Parameters.Add("@" + i, parameterValues[i].ToString());
        }
        cmd.CommandText = strQury;
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        ds.Clear();
        da.Fill(ds);
        return ds;
    }
    public void generatepdf(string temppath, string emailid, string name, string number, string address)
    {

        iTextSharp.text.Document document = new iTextSharp.text.Document(PageSize.A4, 30f, 30f, 20f, 20f);
        PdfWriter.GetInstance(document, new FileStream(temppath, FileMode.Create));

        using (System.IO.MemoryStream memoryStream = new System.IO.MemoryStream())
        {
            Phrase phrase;
            PdfPCell cell;
            PdfTable table;
            iTextSharp.text.Font font1 = FontFactory.GetFont("Arial", 12, iTextSharp.text.Font.NORMAL, Color.BLACK);
            iTextSharp.text.Font font2 = FontFactory.GetFont("Arial", 12, iTextSharp.text.Font.BOLD, Color.BLACK);
            iTextSharp.text.Font font3 = FontFactory.GetFont("Arial", 15, iTextSharp.text.Font.BOLD, Color.BLACK);

            document.Open();

            //============================= Document is open and addition start =====================

            string imageURL = HttpContext.Current.Server.MapPath("~\\images") + "\\stamp3.jpg";
            iTextSharp.text.Image jpg = iTextSharp.text.Image.GetInstance(imageURL);
            jpg.SetAbsolutePosition(0, 0);
            jpg.ScaleToFit(1080f, 820f);
            //jpg.SpacingBefore = 0;
            //jpg.SpacingAfter = 0;
            jpg.Alignment = Element.ALIGN_TOP;
            document.Add(jpg);

            phrase = new Phrase("\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n", font3);
            document.Add(phrase);
            phrase = new Phrase("\n\n\nTERMS AND CONDITIONS/ RULES AND REGULATIONS OF COMPANY\n\n", font3);
            document.Add(phrase);

            phrase = new Phrase(new Chunk("This Agreement executed between ", font1));
            phrase.Add(new Chunk("RAPID Jobs ", font2));
            phrase.Add(new Chunk("having office at, ", font1));
            phrase.Add(new Chunk("405, RAJ WORLD KANAKNIDHI COMPLEX, OPPOSITE GANDHI SMRUTI BHAVAN, NANPURA, Surat, Gujarat 395001 ", font2));
            //phrase.Add(new Chunk("F8, Yogeshwar complex, Adajan, Surat-395009 ", font2));
            //phrase.Add(new Chunk("Office no-11 dhruv complex,near maharani temple,boring road Patna,Bihar-800001 ", font2));
            //phrase.Add(new Chunk("210, 2ND FLOOR, JAINA TOWER 2, DISTRICT CENTRE, JANAKPURI WEST, DELHI -110058 ", font2));
            //phrase.Add(new Chunk("1024 Dda Market, Shastri Park, Delhi East, Delhi", font2));
            
            phrase.Add(new Chunk("Herein after for brevity’s sake referred to as Client, which expression shall, unless exclude by or repugnant to the context, be deemed to mean and include its permitted assigns and successors-in-interest.\n\n", font1));
            phrase.Add(new Chunk("Whereas the Client is engaged in the business of outsourcing the business for the IT and IT enabled services industry and whereas it has entered into an agreement with its principals (herein after referred to as 'Principals') to execute the data entry operations described in detail in the scope of work, which need to be executed through various delivery partners.\n\n", font1));
            phrase.Add(new Chunk("Presently it is in a position to procure the business for form filling more meaningfully described in the column Scope of Work, through their principals. AND WHEREAS the Business Associate is engaged inter alias, in the business of providing a wide Spectrum of software solutions & services. The Business Associate has acquired the necessary expertise and developed the requisite skill base and infrastructure for successful execution of Form Filling Projects.\n\n", font1));
            phrase.Add(new Chunk("This Agreement represents the business Agreement and operational understandings between the parties and shall remain in effect for a period of 30 DAYS from the date of execution hereof or from the date of providing the first data whichever is later & can be extended for the period as mutually agreed upon, for the purpose.\n", font1));
            document.Add(phrase);

            phrase = new Phrase("\n                                    NOW THIS AGREEMENT WITNESSETH AS FOLLOWS:\n\n", font2);
            document.Add(phrase);

            phrase = new Phrase();
            phrase.Add(new Chunk("1. Scope of Work:", font2));
            phrase.Add(new Chunk(" The Original data will be available on the work environment software provided by RAPID JOBS at the time of signup. Business Associate are required to feed the provided data in the provided software as per the guidelines. Data supply and preservation of the output file is done online on real time basis. \n\n", font1));
            phrase.Add(new Chunk("2. Plan Details:", font2));
            phrase.Add(new Chunk(" Second party will get 800 forms for 7 days. Per form rate will be Rs. 35/-.\n\n", font1));
            phrase.Add(new Chunk("(a) No initial payment is required to be given by second party.\n", font1));
            phrase.Add(new Chunk("(b) After getting the accuracy report of having 90% above accuracy, your payment will be processed within 7 international working days in to your respective bank account. An accurate form is that which doesn't have any error such as spelling/punctuation/extra space/extra text/missing text.\n", font1));
            phrase.Add(new Chunk("(c) In the matter of failure, non-submission, accuracy below 90% then company is entitled to receive amount of Rs. 3999* by any cost from the second party. If in case second party uses multiple login then penalty will be Rs. 6499/-. If second party pass and achieve the accuracy of 90% or above, then amount will be deducted from his work payment and remaining shall be paid.\n", font1));
            phrase.Add(new Chunk("(d) The charge of Rs. 3999* is related to service, development and maintenance cost of the platform where he is working online.\n\n", font1));
            phrase.Add(new Chunk("                                                              Technical clause:\n\n", font2));
            phrase.Add(new Chunk("• Helpline department will support you in only 10% queries from the whole project.\n", font1));
            phrase.Add(new Chunk("• For example: if you have taken the 800 pages/forms plan, then helpline dept. is liable to give reply only 80 pages/forms queries of 10% of whole project.\n", font1));
            phrase.Add(new Chunk("• Work will automatically get Submit in 48 hours.\n", font1));
            phrase.Add(new Chunk("• No use of any shortcut keys while typing in terminal else you will be responsible for the same.\n\n", font1));
            phrase.Add(new Chunk("3. Accuracy Report:", font2));
            phrase.Add(new Chunk(" Client must provide adequate feedback within 5 working days for all data and on completion of quality check shall issue a quality report. Both parties agree to assure highest quality of end service. Following cycle for accuracy will be followed.\n\n", font1));
            phrase.Add(new Chunk("4. ID Allocation:", font2));
            phrase.Add(new Chunk(" Business Associate will get single id to work on and Business Associate can work 24X7 on this id.\n\n", font1));
            phrase.Add(new Chunk("5. TAT (Turn Around Time):", font2));
            phrase.Add(new Chunk(" Turn around time for completing the project is mentioned in the schedule. The Business Associate through this agreement guarantees the delivery of work within stipulated timeframe with desired accuracy.\n\n", font1));
            phrase.Add(new Chunk("6. Penalty :", font2));
            phrase.Add(new Chunk(" If Business Associate fails to fulfill terms and conditions mentioned by Client, then Business Associate have to compulsory pay penalty amount of 3999* to stop legal proceedings within 12 hours. In the matter of fact failure, not submitted the Client is entitled to receive penalty amount by any cost. If Business Associate achieves accuracy then Business Associate will not be liable to pay the penalty amount. If Business Associate fails in achieving accuracy, then Business Associate has to pay the penalty according to the selected plan as a liability.\n\n", font1));
            phrase.Add(new Chunk("7.  :", font2));
            phrase.Add(new Chunk(" Client agrees to provide formats and other information for processing the job to Business Associate at the time of providing the data.\n\n", font1));
            phrase.Add(new Chunk("8.  :", font2));
            phrase.Add(new Chunk(" Telecommunication cost applicable at each end shall be borne by the respective parties.\n\n", font1));
            phrase.Add(new Chunk("9.  :", font2));
            phrase.Add(new Chunk(" Business Associate will execute the data processing work provided by Client through experienced persons in such manner so as to carry out the work efficiently at minimum of accuracy needed for out files.\n\n", font1));
            phrase.Add(new Chunk("10.  :", font2));
            phrase.Add(new Chunk(" This agreement represents the business Agreement and operational understandings between the parties and shall remain in effect for a period of Three months from the date of execution hereof. The clients' specifications in terms of quality and other parameters that shall be issued by the Client/their principals from time to time and acknowledged by the Business Associate shall be read with this agreement.\n\n", font1));
            phrase.Add(new Chunk("11. Termination :", font2));
            phrase.Add(new Chunk(" If Business Associate fails to submit data on time or, If Business Associate fails to maintain accuracy Client reserves the right to terminate the agreement with immediate effect. And RAPID JOBS will not be responsible for any further data and payment to the Business Associate.\n\n", font1));
            phrase.Add(new Chunk("If company found that there are multiple logins of a single I.D., The company will not be responsible for the corruption of the data in both online modules. And your I.D. will get terminated without any intimation.\n", font1));
            phrase.Add(new Chunk("\nIf we find any 2 login together, 2 logout, 2 IP ADDRESS WITHOUT LOGIN, BROWSER UPGRADATION WITHOUT LOGIN, THEN THE ID WOULD BE TERMINATED.\n", font1));
            phrase.Add(new Chunk("After Delivering the report your Login id and password will get expire in 10 days.\n", font1));
            phrase.Add(new Chunk("If any kind of malfunctioning found in the work then company reserved the right to take trial of your work for a day.\n", font1));
            phrase.Add(new Chunk("If you break the company rules & regulation means your ID is get terminate company will not do any financial transaction to you.\n\n", font1));
            phrase.Add(new Chunk("12.  :", font2));
            phrase.Add(new Chunk(" No modification of the terms of this AGREEMENT shall be valid unless it is in writing and signed by all the parties.\n\n", font1));
            phrase.Add(new Chunk("13. Force Majeure :", font2));
            phrase.Add(new Chunk(" If the rendition of the Form Filling Services is hampered due to earthquake, flood, tempest, civil riots or Act of God then the Business Associate shall be absolved of its obligations hereunder till normalcy is restored after the cessation of the aforementioned contingencies. The Business Associate shall likewise be absolved if rendition of the services is hampered due to a strike called by the date entry operators engaged by the Business Associate, violence or political turbulence or for any other reason of a similar nature, which is beyond the control of the Business Associate.\n\n", font1));
            phrase.Add(new Chunk("14. Severability :", font2));
            phrase.Add(new Chunk(" Unenforceability of any provision of this Agreement shall not affect any other provisions herein contained; instead, this Agreement shall be construed as if such unenforceable provision had not been contained herein.\n\n", font1));
            phrase.Add(new Chunk("15. Variation :", font2));
            phrase.Add(new Chunk(" Except as otherwise expressly provided in this Agreement, this Agreement may not be changed or modified in any way after it has been signed, except in writing signed by or on behalf of both of the parties.\n\n", font1));
            phrase.Add(new Chunk("16. Dispute Resolution & Jurisdiction :", font2));
            phrase.Add(new Chunk(" In the event of any dispute or difference arising between the parties hereto relating to or arising out of this Agreement, including the implementation, execution, interpretation, rectification, validity, enforceability, termination or rescission thereof, including the rights, obligations or liabilities of the parties hereto, the same will be adjudicated and determined by arbitration. The Indian Arbitration & Conciliation Act, 1996 or any statutory amendment or re-enactment thereof in force in India, shall govern the reference. Both parties shall appoint their respective arbitrator, and both arbitrators thus appointed should appoint the third Arbitrator who shall function as the presiding Arbitrator. The venue of arbitration shall be Surat (Gujarat). The Courts in the city of Surat shall have exclusive jurisdiction to entertain try and determine the same.\n\n", font1));
            phrase.Add(new Chunk("17.  :", font2));
            phrase.Add(new Chunk(" Both the parties hereby agree neither to Circumvent or nor to disclose the identities, Information as well as the essence of the project etc of each other’s/Principals, clients etc to any other Third party and neither of us will approach each other’s contracts as identified from time to time.\n", font1));
            phrase.Add(new Chunk("\n Contact E-Mail I.D:- " + emailid + "\n", font1));
            phrase.Add(new Chunk(" Business Associate Name:- " + name + "\n", font1));
            phrase.Add(new Chunk(" Business Associate Contact Number:- " + number + "\n", font1));
            phrase.Add(new Chunk(" Business Associate Permanent Address:- " + address + "\n\n", font1));
            phrase.Add(new Chunk("Hereby, I(Business Associate) Agree That The Above Terms And Conditions Are Totally Correct/True And I(Business Associate) Accept All Of The Above Terms And Conditions And Willing To Work With RAPID JOBS According To The Above Terms And Conditions. I(Business Associate) Am Also Providing Typing Jobs My(Business Associate) I.D Proof For The Acceptance Of The Above Points From My(Business Associate) Side. Below Is My (Business Associate) Authorized Signatory As A Confirmation For The Above Points.\n\n", font1));
            phrase.Add(new Chunk("IN WITNESS WHEREOF the parties hereto have executed these presents on the date herein before " + indianTime().ToString("dd-MM-yyyy") + " written:\n", font1));
            phrase.Add(new Chunk("\nClient: \nFor RAPID JOBS \n", font2));
            document.Add(phrase);
            imageURL = HttpContext.Current.Server.MapPath("~\\images") + "\\sign.png";
            jpg = iTextSharp.text.Image.GetInstance(imageURL);
            jpg.ScaleToFit(100f, 80f);
            jpg.SpacingBefore = 10f;
            jpg.SpacingAfter = 1f;
            jpg.Alignment = Element.ALIGN_LEFT;
            document.Add(jpg);
            phrase = new Phrase();
            phrase.Add(new Chunk("Authorized Signatory  \n\n", font2));
            phrase.Add(new Chunk("Business Associate:	" + name + "\n\n\n\n\n", font2));
            phrase.Add(new Chunk("Authorized Signatory", font2));
            document.Add(phrase);
            //=========================== Document is close and addition end =======================

            document.Close();
            byte[] bytes = memoryStream.ToArray();
            memoryStream.Close();

            System.Threading.Thread.Sleep(5000);
        }

    }

    public void autofill(string cid, int from, int to, int per)
    {
        DataTable dt = new DataTable();
        DataTable dt1 = new DataTable();
        DataTable dt2 = new DataTable();
        Random rand = new Random();
        clsAdmin AD = new clsAdmin();
        int total, perform, remain;
        string[] random_txtbox = { "Tbc_No", "Name", "EmailId", "GirNo", "LicenseNo", "H_Address", "PanNo", "O_Address", "O_City", "H_City" };

        string planid = AdExecScalar("select planid from tbl_registration with(nolock) where cid='" + cid + "'");

        dt = FillDataTable("select [index],id,date from tbl_client_bpo_data with(nolock) where cid='" + cid + "' and sr_no>=" + from + " and sr_no<=" + to + " and (date>='" + indianTime().ToString("yyyy-MM-dd hh:mm:ss tt") + "' or date is null ) order by id");
        dt1 = FillDataTable("select * from tbl_bpo_data with(nolock) where id in (select id from tbl_client_bpo_data with(nolock) where cid='" + cid + "' and sr_no>=" + from + " and sr_no<=" + to + " and (date>='" + indianTime().ToString("yyyy-MM-dd hh:mm:ss tt") + "' or date is null )) order by id");
        for (int i = 0; i < dt.Rows.Count; i++)
        {

            ExecutQury(@"update Tbl_Client_Bpo_Data set Tbc_No=@0,Name=@1,EmailId=@2,MobileNo=@3,Gender=@4,LicenseNo=@5,GirNo=@6,PanNo=@7,H_Address=@8,H_City=@9,H_PinNo=@10,
                                        H_State=@11,O_Address=@12,O_City=@13,O_PinNo=@14,LAL=@15,MRNNo=@16,AF=@17,NRI=@18,CP=@19,
                                        Status=@20,spaceerror=@21,date=@22  where [index]=@23", dt1.Rows[i]["Tbc_No"].ToString(), dt1.Rows[i]["Name"].ToString(), dt1.Rows[i]["EmailId"].ToString(),
                                dt1.Rows[i]["MobileNo"].ToString(), dt1.Rows[i]["Gender"].ToString(), dt1.Rows[i]["LicenseNo"].ToString(), dt1.Rows[i]["GirNo"].ToString(),
                                dt1.Rows[i]["PanNo"].ToString(), dt1.Rows[i]["H_Address"].ToString(), dt1.Rows[i]["H_City"].ToString(), dt1.Rows[i]["H_PinNo"].ToString(),
                                dt1.Rows[i]["H_State"].ToString(), dt1.Rows[i]["O_Address"].ToString(), dt1.Rows[i]["O_City"].ToString(), dt1.Rows[i]["O_PinNo"].ToString(),
                                dt1.Rows[i]["LAL"].ToString(), dt1.Rows[i]["MRNNo"].ToString(), dt1.Rows[i]["AF"].ToString(), dt1.Rows[i]["NRI"].ToString(),
                                dt1.Rows[i]["CP"].ToString(), "2", "0", indianTime().AddDays(2).ToString("yyyy-MM-dd hh:mm:ss tt"), dt.Rows[i]["index"].ToString());
        }

        total = dt.Rows.Count;
        perform = (total * per) / 100;
        remain = total - perform;
        dt2 = FillDataTable("SELECT TOP (" + remain + ")* FROM Tbl_client_Bpo_Data with(nolock) where cid='" + cid + "' and sr_no>=" + from + " and sr_no<=" + to + " and (date>='" + indianTime().ToString("yyyy-MM-dd hh:mm:ss tt") + "' or date is null ) ORDER BY newid() ");
        for (int i = 0; i < remain; i++)
        {
            string txt_box = random_txtbox[rand.Next(0, random_txtbox.Length)];
            string value = dt2.Rows[i][txt_box].ToString();
            int change = 0;
            if (value.Contains('W'))
            {
                value = value.Replace('W', 'w');
            }
            else if (value.Contains('V'))
            {
                value = value.Replace('V', 'v');
            }
            else if (value.Contains('m'))
            {
                value = value.Replace('m', 'n');
            }
            else if (value.Contains('s'))
            {
                value = value.Replace("s", "");
            }
            else if (value.Contains('n'))
            {
                value = value.Replace("n", "");
            }
            else if (value.Contains('d'))
            {
                value = value.Replace("d", "s");
            }
            else if (value.Contains('.'))
            {
                value = value.Replace(".", ",");
            }
            else if (value.Contains('y'))
            {
                value = value.Replace("y", "u");
            }
            else if (value.Contains('u'))
            {
                value = value.Replace("u", "y");
            }
            else if (value.Contains('z'))
            {
                value = value.Replace("z", "x");
            }
            else if (value.Contains('x'))
            {
                value = value.Replace("x", "z");
            }
            else if (value.Contains('k'))
            {
                value = value.Replace("k", "l");
            }
            else if (value.Contains('t'))
            {
                value = value.Replace("t", "tt");
            }
            else if (value.Contains('2'))
            {
                value = value.Replace("2", "7");
            }
            else if (value.Contains('7'))
            {
                value = value.Replace("7", "2");
            }
            else if (value.Contains('?'))
            {
                value = value.Replace("?", "2");
            }
            else if (value.Contains('g'))
            {
                value = value.Replace("g", "h");
            }
            else if (value.Contains('h'))
            {
                value = value.Replace("h", "g");
            }
            else if (value.Contains("om"))
            {
                value = value.Replace("om", "mo");
            }
            else if (value.Contains("of"))
            {
                value = value.Replace("of", "fo");
            }
            else if (value.Contains(".1"))
            {
                value = value.Replace(".1", "1.");
            }
            else if (value.Contains("12"))
            {
                value = value.Replace("12", "21");
            }
            else if (value.Contains("01"))
            {
                value = value.Replace("01", "10");
            }
            else if (value.Contains("0"))
            {
                value = value.Replace("0", "00");
            }
            else if (value.Contains("-1"))
            {
                value = value.Replace("-1", "1-");
            }
            else
            {
                change = 1;
            }
            if (change == 0)
            {
                ExecutQury("update tbl_client_bpo_data set " + txt_box + "=@0,status='3' where [index]=" + dt2.Rows[i]["index"].ToString() + "", value);
            }
        }
        AD.cid = cid;
        AD.Work = "##############################################";
        AD.Insert_Log();
        //insertlog(AD.cid, AD.Work);
    }

}
