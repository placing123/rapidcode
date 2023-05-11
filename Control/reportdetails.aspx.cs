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

public partial class Admin_Plan : System.Web.UI.Page
{
    MyCon mycon = new MyCon();
    DataTable dt = new DataTable();
    DataSet ds = new DataSet();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            fillhodoc();
            fillfadmindoc();
            fillpatnadoc();
            fillraxitdoc();
            fillkunaldoc();
            fillamitdoc();
            fillhosign();
            fillfadminsign();
            fillpatnasign();
            fillraxitsign();
            fillkunalsign();
            fillamitsign();
        }
    }
    public void fillhodoc()
    {
        dt = mycon.FillDataTable("select callername,count(id) as count from Tbl_Registration where CAST(reg_date as date)= CAST(@0 as date) and fid='HO'  group by callername order by callername", mycon.indianTime().ToString("yyyy-MM-dd hh:mm:ss tt"));
        GridView1.DataSource = dt;
        GridView1.DataBind();

        dt = mycon.FillDataTable("select callername,count(id) as count from Tbl_Registration where month(reg_date)=month(@0) and year(reg_date)=year(@0) and fid='HO'  group by callername order by callername", mycon.indianTime().ToString("yyyy-MM-dd hh:mm:ss tt"));
        GridView3.DataSource = dt;
        GridView3.DataBind();

        ds = mycon.FillDataset(@"select count(id) from Tbl_Registration where CAST(reg_date as date)= CAST(@0 as date) and fid='HO';
        select count(id) from Tbl_Registration where month(reg_date)=month(@0) and year(reg_date)=year(@0) and fid='HO'", mycon.indianTime().ToString("yyyy-MM-dd hh:mm:ss tt"));
        lblhodoc_count.Text = ds.Tables[0].Rows[0][0].ToString();
        lblhodoc_countmonth.Text = ds.Tables[1].Rows[0][0].ToString();
    }
    public void fillfadmindoc()
    {
        dt = mycon.FillDataTable("select callername,count(id) as count from Tbl_Registration where CAST(reg_date as date)= CAST(@0 as date) and fid='fadmin'  group by callername order by callername", mycon.indianTime().ToString("yyyy-MM-dd hh:mm:ss tt"));
        GridView2.DataSource = dt;
        GridView2.DataBind();

        dt = mycon.FillDataTable("select callername,count(id) as count from Tbl_Registration where month(reg_date)=month(@0) and year(reg_date)=year(@0) and fid='fadmin'  group by callername order by callername", mycon.indianTime().ToString("yyyy-MM-dd hh:mm:ss tt"));
        GridView4.DataSource = dt;
        GridView4.DataBind();

        ds = mycon.FillDataset(@"select count(id) from Tbl_Registration where CAST(reg_date as date)= CAST(@0 as date) and fid='fadmin';
        select count(id) from Tbl_Registration where month(reg_date)=month(@0) and year(reg_date)=year(@0) and fid='fadmin'", mycon.indianTime().ToString("yyyy-MM-dd hh:mm:ss tt"));
        lblfadmindoc_count.Text = ds.Tables[0].Rows[0][0].ToString();
        lblfadmindoc_countmonth.Text = ds.Tables[1].Rows[0][0].ToString();
    }
    public void fillpatnadoc()
    {
        dt = mycon.FillDataTable("select callername,count(id) as count from Tbl_Registration where CAST(reg_date as date)= CAST(@0 as date) and fid='new'  group by callername order by callername", mycon.indianTime().ToString("yyyy-MM-dd hh:mm:ss tt"));
        GridView9.DataSource = dt;
        GridView9.DataBind();

        dt = mycon.FillDataTable("select callername,count(id) as count from Tbl_Registration where month(reg_date)=month(@0) and year(reg_date)=year(@0) and fid='new'  group by callername order by callername", mycon.indianTime().ToString("yyyy-MM-dd hh:mm:ss tt"));
        GridView10.DataSource = dt;
        GridView10.DataBind();

        ds = mycon.FillDataset(@"select count(id) from Tbl_Registration where CAST(reg_date as date)= CAST(@0 as date) and fid='new';
        select count(id) from Tbl_Registration where month(reg_date)=month(@0) and year(reg_date)=year(@0) and fid='new'", mycon.indianTime().ToString("yyyy-MM-dd hh:mm:ss tt"));
        lblpatnadoc_count.Text = ds.Tables[0].Rows[0][0].ToString();
        lblpatnadoc_countmonth.Text = ds.Tables[1].Rows[0][0].ToString();
    }
    public void fillraxitdoc()
    {
        dt = mycon.FillDataTable("select callername,count(id) as count from Tbl_Registration where CAST(reg_date as date)= CAST(@0 as date) and fid='RAXIT'  group by callername order by callername", mycon.indianTime().ToString("yyyy-MM-dd hh:mm:ss tt"));
        GridView13.DataSource = dt;
        GridView13.DataBind();

        dt = mycon.FillDataTable("select callername,count(id) as count from Tbl_Registration where month(reg_date)=month(@0) and year(reg_date)=year(@0) and fid='RAXIT'  group by callername order by callername", mycon.indianTime().ToString("yyyy-MM-dd hh:mm:ss tt"));
        GridView14.DataSource = dt;
        GridView14.DataBind();

        ds = mycon.FillDataset(@"select count(id) from Tbl_Registration where CAST(reg_date as date)= CAST(@0 as date) and fid='RAXIT';
        select count(id) from Tbl_Registration where month(reg_date)=month(@0) and year(reg_date)=year(@0) and fid='RAXIT'", mycon.indianTime().ToString("yyyy-MM-dd hh:mm:ss tt"));
        lblraxitdoc_count.Text = ds.Tables[0].Rows[0][0].ToString();
        lblraxitdoc_countmonth.Text = ds.Tables[1].Rows[0][0].ToString();
    }
    public void fillkunaldoc()
    {
        dt = mycon.FillDataTable("select callername,count(id) as count from Tbl_Registration where CAST(reg_date as date)= CAST(@0 as date) and fid='KUNAL'  group by callername order by callername", mycon.indianTime().ToString("yyyy-MM-dd hh:mm:ss tt"));
        GridView17.DataSource = dt;
        GridView17.DataBind();

        dt = mycon.FillDataTable("select callername,count(id) as count from Tbl_Registration where month(reg_date)=month(@0) and year(reg_date)=year(@0) and fid='KUNAL'  group by callername order by callername", mycon.indianTime().ToString("yyyy-MM-dd hh:mm:ss tt"));
        GridView18.DataSource = dt;
        GridView18.DataBind();

        ds = mycon.FillDataset(@"select count(id) from Tbl_Registration where CAST(reg_date as date)= CAST(@0 as date) and fid='KUNAL';
        select count(id) from Tbl_Registration where month(reg_date)=month(@0) and year(reg_date)=year(@0) and fid='KUNAL'", mycon.indianTime().ToString("yyyy-MM-dd hh:mm:ss tt"));
        lblkunaldoc_count.Text = ds.Tables[0].Rows[0][0].ToString();
        lblkunaldoc_countmonth.Text = ds.Tables[1].Rows[0][0].ToString();
    }
    public void fillamitdoc()
    {
        dt = mycon.FillDataTable("select callername,count(id) as count from Tbl_Registration where CAST(reg_date as date)= CAST(@0 as date) and fid='AMIT'  group by callername order by callername", mycon.indianTime().ToString("yyyy-MM-dd hh:mm:ss tt"));
        GridView21.DataSource = dt;
        GridView21.DataBind();

        dt = mycon.FillDataTable("select callername,count(id) as count from Tbl_Registration where month(reg_date)=month(@0) and year(reg_date)=year(@0) and fid='AMIT'  group by callername order by callername", mycon.indianTime().ToString("yyyy-MM-dd hh:mm:ss tt"));
        GridView22.DataSource = dt;
        GridView22.DataBind();

        ds = mycon.FillDataset(@"select count(id) from Tbl_Registration where CAST(reg_date as date)= CAST(@0 as date) and fid='AMIT';
        select count(id) from Tbl_Registration where month(reg_date)=month(@0) and year(reg_date)=year(@0) and fid='AMIT'", mycon.indianTime().ToString("yyyy-MM-dd hh:mm:ss tt"));
        lblamitdoc_count.Text = ds.Tables[0].Rows[0][0].ToString();
        lblamitdoc_countmonth.Text = ds.Tables[1].Rows[0][0].ToString();
    }
    public void fillhosign()
    {
        dt = mycon.FillDataTable("select callername,count(id) as count from Tbl_Registration where CAST(start_date as date)= CAST(@0 as date) and fid='HO'  group by callername order by callername", mycon.indianTime().ToString("yyyy-MM-dd hh:mm:ss tt"));
        GridView5.DataSource = dt;
        GridView5.DataBind();

        dt = mycon.FillDataTable("select callername,count(id) as count from Tbl_Registration where month(start_date)=month(@0) and year(start_date)=year(@0) and fid='HO'  group by callername order by callername", mycon.indianTime().ToString("yyyy-MM-dd hh:mm:ss tt"));
        GridView7.DataSource = dt;
        GridView7.DataBind();

        ds = mycon.FillDataset(@"select count(id) from Tbl_Registration where CAST(start_date as date)= CAST(@0 as date) and fid='HO';
        select count(id) from Tbl_Registration where month(start_date)=month(@0) and year(start_date)=year(@0) and fid='HO'", mycon.indianTime().ToString("yyyy-MM-dd hh:mm:ss tt"));
        lblhosign_count.Text = ds.Tables[0].Rows[0][0].ToString();
        lblhosign_countmonth.Text = ds.Tables[1].Rows[0][0].ToString();
    }
    public void fillfadminsign()
    {
        dt = mycon.FillDataTable("select callername,count(id) as count from Tbl_Registration where CAST(start_date as date)= CAST(@0 as date) and fid='fadmin'  group by callername order by callername", mycon.indianTime().ToString("yyyy-MM-dd hh:mm:ss tt"));
        GridView6.DataSource = dt;
        GridView6.DataBind();

        dt = mycon.FillDataTable("select callername,count(id) as count from Tbl_Registration where month(start_date)=month(@0) and year(start_date)=year(@0) and fid='fadmin'  group by callername order by callername", mycon.indianTime().ToString("yyyy-MM-dd hh:mm:ss tt"));
        GridView8.DataSource = dt;
        GridView8.DataBind();
        ds = mycon.FillDataset(@"select count(id) from Tbl_Registration where CAST(start_date as date)= CAST(@0 as date) and fid='fadmin';
        select count(id) from Tbl_Registration where month(start_date)=month(@0) and year(start_date)=year(@0) and fid='fadmin'", mycon.indianTime().ToString("yyyy-MM-dd hh:mm:ss tt"));
        lblfadminsign_count.Text = ds.Tables[0].Rows[0][0].ToString();
        lblfadminsign_countmonth.Text = ds.Tables[1].Rows[0][0].ToString();
    }
    public void fillpatnasign()
    {
        dt = mycon.FillDataTable("select callername,count(id) as count from Tbl_Registration where CAST(start_date as date)= CAST(@0 as date) and fid='new'  group by callername order by callername", mycon.indianTime().ToString("yyyy-MM-dd hh:mm:ss tt"));
        GridView11.DataSource = dt;
        GridView11.DataBind();

        dt = mycon.FillDataTable("select callername,count(id) as count from Tbl_Registration where month(start_date)=month(@0) and year(start_date)=year(@0) and fid='new'  group by callername order by callername", mycon.indianTime().ToString("yyyy-MM-dd hh:mm:ss tt"));
        GridView12.DataSource = dt;
        GridView12.DataBind();

        ds = mycon.FillDataset(@"select count(id) from Tbl_Registration where CAST(start_date as date)= CAST(@0 as date) and fid='new';
        select count(id) from Tbl_Registration where month(start_date)=month(@0) and year(start_date)=year(@0) and fid='new'", mycon.indianTime().ToString("yyyy-MM-dd hh:mm:ss tt"));
        lblpatnasign_count.Text = ds.Tables[0].Rows[0][0].ToString();
        lblpatnasign_countmonth.Text = ds.Tables[1].Rows[0][0].ToString();
    }
    public void fillraxitsign()
    {
        dt = mycon.FillDataTable("select callername,count(id) as count from Tbl_Registration where CAST(start_date as date)= CAST(@0 as date) and fid='RAXIT'  group by callername order by callername", mycon.indianTime().ToString("yyyy-MM-dd hh:mm:ss tt"));
        GridView15.DataSource = dt;
        GridView15.DataBind();

        dt = mycon.FillDataTable("select callername,count(id) as count from Tbl_Registration where month(start_date)=month(@0) and year(start_date)=year(@0) and fid='RAXIT'  group by callername order by callername", mycon.indianTime().ToString("yyyy-MM-dd hh:mm:ss tt"));
        GridView16.DataSource = dt;
        GridView16.DataBind();
        ds = mycon.FillDataset(@"select count(id) from Tbl_Registration where CAST(start_date as date)= CAST(@0 as date) and fid='RAXIT';
        select count(id) from Tbl_Registration where month(start_date)=month(@0) and year(start_date)=year(@0) and fid='RAXIT'", mycon.indianTime().ToString("yyyy-MM-dd hh:mm:ss tt"));
        lblraxitsign_count.Text = ds.Tables[0].Rows[0][0].ToString();
        lblraxitsign_countmonth.Text = ds.Tables[1].Rows[0][0].ToString();
    }
    public void fillkunalsign()
    {
        dt = mycon.FillDataTable("select callername,count(id) as count from Tbl_Registration where CAST(start_date as date)= CAST(@0 as date) and fid='KUNAL'  group by callername order by callername", mycon.indianTime().ToString("yyyy-MM-dd hh:mm:ss tt"));
        GridView19.DataSource = dt;
        GridView19.DataBind();

        dt = mycon.FillDataTable("select callername,count(id) as count from Tbl_Registration where month(start_date)=month(@0) and year(start_date)=year(@0) and fid='KUNAL'  group by callername order by callername", mycon.indianTime().ToString("yyyy-MM-dd hh:mm:ss tt"));
        GridView20.DataSource = dt;
        GridView20.DataBind();
        ds = mycon.FillDataset(@"select count(id) from Tbl_Registration where CAST(start_date as date)= CAST(@0 as date) and fid='KUNAL';
        select count(id) from Tbl_Registration where month(start_date)=month(@0) and year(start_date)=year(@0) and fid='KUNAL'", mycon.indianTime().ToString("yyyy-MM-dd hh:mm:ss tt"));
        lblkunalsign_count.Text = ds.Tables[0].Rows[0][0].ToString();
        lblkunalsign_countmonth.Text = ds.Tables[1].Rows[0][0].ToString();
    }
    public void fillamitsign()
    {
        dt = mycon.FillDataTable("select callername,count(id) as count from Tbl_Registration where CAST(start_date as date)= CAST(@0 as date) and fid='AMIT'  group by callername order by callername", mycon.indianTime().ToString("yyyy-MM-dd hh:mm:ss tt"));
        GridView23.DataSource = dt;
        GridView23.DataBind();

        dt = mycon.FillDataTable("select callername,count(id) as count from Tbl_Registration where month(start_date)=month(@0) and year(start_date)=year(@0) and fid='AMIT'  group by callername order by callername", mycon.indianTime().ToString("yyyy-MM-dd hh:mm:ss tt"));
        GridView24.DataSource = dt;
        GridView24.DataBind();
        ds = mycon.FillDataset(@"select count(id) from Tbl_Registration where CAST(start_date as date)= CAST(@0 as date) and fid='AMIT';
        select count(id) from Tbl_Registration where month(start_date)=month(@0) and year(start_date)=year(@0) and fid='AMIT'", mycon.indianTime().ToString("yyyy-MM-dd hh:mm:ss tt"));
        lblamitsign_count.Text = ds.Tables[0].Rows[0][0].ToString();
        lblamitsign_countmonth.Text = ds.Tables[1].Rows[0][0].ToString();
    }
}
