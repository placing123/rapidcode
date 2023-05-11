<%@ Page Title="" Language="C#" MasterPageFile="~/Customer/Customer.master" AutoEventWireup="true"
    ValidateRequest="false" CodeFile="Default.aspx.cs" Inherits="Customer_WorkloadSubmit"
    EnableViewStateMac="false" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <h3><i class="fa fa-angle-right"></i>&nbsp Work Forms</h3>
    <div class="row mt">
        <div class="col-lg-12">
            <div>
                <div align="center">
                    <asp:Label ID="lblcid" Visible="false" runat="server"></asp:Label>
                    <asp:Label ID="lblrno" runat="server" Visible="False"></asp:Label>

                    <asp:Label ID="lblmsg" runat="server" Visible="False" ForeColor="#009933"></asp:Label>
                </div>

            </div>
            <!-- /form-panel -->
        </div>
        <!-- /col-lg-12 -->
    </div>


    <div id="first" runat="server">
        <script type="text/javascript">
            document.onkeydown = ShowKeyCode;
            function ShowKeyCode(evt) {
                if (evt.keyCode == '123')
                    return false;
            }
        </script>
        <script type="text/javascript">
            var message = "";

            function clickIE() {
                if (document.all)
                { (message); return false; }
            }

            function clickNS(e) {
                if 
(document.layers || (document.getElementById && !document.all)) {
                    if (e.which == 2 || e.which == 3) { (message); return false; }
                }
            }
            if (document.layers)
            { document.captureEvents(Event.MOUSEDOWN); document.onmousedown = clickNS; }
            else
            { document.onmouseup = clickNS; document.oncontextmenu = clickIE; }

            document.oncontextmenu = new Function("return false")
        </script>
        <script language="JavaScript">

            var message = "Sorry, that function is disabled.\n\n";
            message += "All content is protected.";

            function click(e) {
                if (document.all) {
                    if (event.button == 2) {
                        alert(message);
                        return false;
                    }
                }
                if (document.layers) {
                    if (e.which == 3) {
                        alert(message);
                        return false;
                    }
                }
            }

            if (document.layers) {
                document.captureEvents(Event.MOUSEDOWN);
            }
            document.onmousedown = click;
        </script>
        <div class="row mt">
            <div class="col-lg-12">
                <div class="form-panel">
                    <table style="width: 100%">
                        <tr>
                            <td align="left" style="height: 30px; width: 415px">Page Completed :&nbsp;
                        <asp:Label ID="lblcompl" runat="server"></asp:Label>
                                &nbsp;/
                        <asp:Label ID="lbltotal" runat="server"></asp:Label>
                            </td>
                            <td align="center" style="height: 30px; width: 323px">Page Jump to :&nbsp;
                        <asp:DropDownList ID="drp_pagejump" runat="server" AutoPostBack="true" OnSelectedIndexChanged="drp_pagejump_SelectedIndexChanged"
                            Height="23px" Width="118px">
                        </asp:DropDownList>
                            </td>
                            <td align="right" style="height: 30px">
                                <a href="help.aspx" target="_blank" rel="clearbox[Gallery]" title="Help">Image Help</a>
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 415px">Current Page :&nbsp;
                        <asp:Label ID="lblcurrentpge" runat="server"></asp:Label>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="lblid"
                                    runat="server" Visible="False"></asp:Label>
                            </td>
                            <td style="width: 323px">&nbsp;
                            </td>
                            <td>&nbsp;
                            </td>
                        </tr>
                        <br />
                        <br />
                    </table>
                </div>
            </div>
        </div>
        <div>
            
       <div class="row mt"> 
            <div class="col-lg-12">

                <div class="col-lg-12 fra_mid_txt">
                    <div class=" ">
                        <img id="MainImg" runat="server" alt="" border="0" style="cursor: pointer; width: 100%;height:206px;" />
                    </div>
                </div>
            </div>
      </div>
           <br />
                        
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Always">
            <ContentTemplate>
                <script type="text/javascript">

                    function jqueryminjs() {
                        document.getElementById("ContentPlaceHolder1_txt_Oadd").focus();

                    }

                </script>
                <div class="col-lg-12 form-panel">
                    <div class="col-lg-12">
                        <div class="col-lg-12">
                            <div class="col-lg-3">
                                L. A. No. :<br />
                                <asp:TextBox ID="txt_tbc" runat="server" class="form-control" OnTextChanged="txt_tbc_TextChanged"
                                    oncopy="return false" oncut="return false" onpaste="return false"
                                    Font-Names="Arial" TabIndex="1"></asp:TextBox>
                            </div>
                            <div class="col-lg-3">
                                Name :<br />
                                <asp:TextBox ID="Name" runat="server" class="form-control" OnTextChanged="txt_name_TextChanged"
                                    oncopy="return false" oncut="return false" onpaste="return false"
                                    Font-Names="Arial" TabIndex="2"></asp:TextBox>
                            </div>
                            <div class="col-lg-3">
                                Email ID :<br />
                                <asp:TextBox ID="txt_email" runat="server" class="form-control" OnTextChanged="txt_email_TextChanged"
                                    oncopy="return false" oncut="return false" onpaste="return false"
                                    Font-Names="Arial" TabIndex="3"></asp:TextBox>
                            </div>
                            <div class="col-lg-3">
                                Mobile No. :<br />
                                <asp:TextBox ID="txt_mobno" runat="server" class="form-control" OnTextChanged="txt_mobno_TextChanged"
                                    oncopy="return false" oncut="return false" onpaste="return false"
                                    Font-Names="Arial" TabIndex="4"></asp:TextBox>
                            </div>
                        </div>
                        <div class="col-lg-12">
                            <div class="col-lg-3">
                                Gender :<br />
                                <asp:TextBox ID="txt_gender" runat="server" class="form-control" OnTextChanged="txt_gender_TextChanged"
                                    oncopy="return false" oncut="return false" onpaste="return false"
                                    Font-Names="Arial" TabIndex="5"></asp:TextBox>
                            </div>
                            <div class="col-lg-3">
                                Center Code :<br />
                                <asp:TextBox ID="txt_licenceno" runat="server" class="form-control" OnTextChanged="txt_licenceno_TextChanged"
                                    oncopy="return false" oncut="return false" onpaste="return false"
                                    Font-Names="Arial" TabIndex="6"></asp:TextBox>
                            </div>
                            <div class="col-lg-3">
                                Registration No. :<br />
                                <asp:TextBox ID="txt_girno" runat="server" class="form-control" OnTextChanged="txt_girno_TextChanged"
                                    oncopy="return false" oncut="return false" onpaste="return false"
                                    Font-Names="Arial" TabIndex="7"></asp:TextBox>
                            </div>
                            <div class="col-lg-3">
                                Secure No. :<br />
                                <asp:TextBox ID="txt_panno" runat="server" class="form-control" OnTextChanged="txt_panno_TextChanged"
                                    oncopy="return false" oncut="return false" onpaste="return false"
                                    Font-Names="Arial" TabIndex="8"></asp:TextBox>
                            </div>
                        </div>
                        <div class="col-lg-12">
                            <div class="col-lg-2">
                                CCN No. :<br />
                                <asp:TextBox ID="txt_menno" runat="server" class="form-control" OnTextChanged="txt_menno_TextChanged"
                                    oncopy="return false" oncut="return false" onpaste="return false"
                                    Font-Names="Arial" TabIndex="9" Width="150px"></asp:TextBox>
                            </div>
                            <div class="col-lg-2">
                                SRN :<br />
                                <asp:TextBox ID="txt_af" runat="server" class="form-control" oncopy="return false" oncut="return false"
                                    onpaste="return false" Font-Names="Arial" TabIndex="10" Width="150px"></asp:TextBox>
                            </div>
                            <div class="col-lg-2">
                                NCV :<br />
                                <asp:TextBox ID="txt_nri" runat="server" class="form-control" OnTextChanged="txt_nri_TextChanged"
                                    oncopy="return false" oncut="return false" onpaste="return false"
                                    Font-Names="Arial" TabIndex="11" Width="150px"></asp:TextBox>
                            </div>
                            <div class="col-lg-2">
                                CN :<br />
                                <asp:TextBox ID="txt_cp" runat="server" class="form-control" OnTextChanged="txt_cp_TextChanged"
                                    oncopy="return false" oncut="return false" onpaste="return false"
                                    Font-Names="Arial" TabIndex="12" Width="150px"></asp:TextBox>
                            </div>
                            <div class="col-lg-4">
                                Loan Amount:<br />
                                <asp:TextBox ID="txt_loanapproval" runat="server" class="form-control" OnTextChanged="txt_loanapproval_TextChanged"
                                    oncopy="return false" oncut="return false" onpaste="return false"
                                    Font-Names="Arial" TabIndex="13"></asp:TextBox>
                            </div>
                        </div>
                        <div class="col-lg-12">
                            <div class="col-lg-3">
                                <b>Home </b>City :<br />
                                <asp:TextBox ID="txt_Hcity" runat="server" class="form-control" OnTextChanged="txt_Hcity_TextChanged"
                                    oncopy="return false" oncut="return false" onpaste="return false"
                                    Font-Names="Arial" TabIndex="14"></asp:TextBox>
                            </div>
                            <div class="col-lg-3">
                                Address :<br />
                                <asp:TextBox ID="txt_Hadd" runat="server" class="form-control" TextMode="MultiLine" Height="60px"
                                    OnTextChanged="txt_Hadd_TextChanged" oncopy="return false" oncut="return false"
                                    onpaste="return false" Font-Names="Arial" TabIndex="15"></asp:TextBox>
                            </div>
                            <div class="col-lg-3">
                                Zip Code :<br />
                                <asp:TextBox ID="txt_Hpin" runat="server" class="form-control" OnTextChanged="txt_Hpin_TextChanged"
                                    oncopy="return false" oncut="return false" onpaste="return false"
                                    Font-Names="Arial" TabIndex="16"></asp:TextBox>
                            </div>
                            <div class="col-lg-3">
                                State :<br />
                                <asp:TextBox ID="txt_HState" runat="server" class="form-control" OnTextChanged="txt_HState_TextChanged"
                                    oncopy="return false" oncut="return false" onpaste="return false"
                                    Font-Names="Arial" TabIndex="17"></asp:TextBox>
                            </div>
                        </div>
                        <div class="col-lg-12">
                            <div class="col-lg-4">
                                <b>Office </b>City :<br />
                                <asp:TextBox ID="txt_Ocity" runat="server" class="form-control" OnTextChanged="txt_Ocity_TextChanged"
                                    oncopy="return false" oncut="return false" onpaste="return false"
                                    Font-Names="Arial" TabIndex="18" AutoPostBack="false"></asp:TextBox>
                            </div>
                            <div class="col-lg-4">
                                Address :<br />
                                <asp:TextBox ID="txt_Oadd" runat="server" class="form-control" TextMode="MultiLine" Height="60px"
                                    OnTextChanged="txt_Oadd_TextChanged" oncopy="return false" oncut="return false"
                                    onpaste="return false" Font-Names="Arial" TabIndex="19"></asp:TextBox>
                            </div>
                            <div class="col-lg-4">
                                Zip Code :<br />
                                <asp:TextBox ID="txt_Opincode" runat="server" class="form-control"
                                    oncopy="return false" oncut="return false" onpaste="return false"
                                    Font-Names="Arial" onblur="textone();" TabIndex="20"></asp:TextBox>
                            </div>
                        </div>
                    </div>
                </div>
            </ContentTemplate>
            <Triggers>
            </Triggers>
        </asp:UpdatePanel>
              
            <br /><br />
                        <br /><br />
                        <br />
            <br />
                        
           
        <div class="row mt">
            <div class="col-lg-12 form-panel">
                <div class="col-lg-12">
                    <center>
                        <asp:Button ID="btnsubmit" class="btn btn-primary btn-lg" runat="server" Text="Submit" OnClick="btnsubmit_Click"/>
                                            &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                                            <asp:Button ID="btnreset" class="btn btn-default btn-lg" OnClick="btnreset_Click" runat="server" Text="Reset" />
                    </center>
                </div>
                
            </div>
        </div>
            </div>
        <div class="fra_top">
            <table width="10%" border="0" align="center" cellpadding="0" cellspacing="0">
                <tr>
                    <td align="center" valign="top">
                        <table width="100%" border="0" cellspacing="0" cellpadding="0">
                            <tr>
                                <%--  <td align="left" valign="top">
                                <a href="#">
                                    <img src="../images/previous.png" width="63" height="22" border="0" /></a>
                            </td>
                            <td align="left" valign="top" style="padding: 0px 5px;">
                                <a href="#" class="blu_14">1</a><a href="#" class="blu_14">2</a><a href="#" class="blu_14">3</a><a
                                    href="#" class="blu_14">4</a><a href="#" class="blu_14">5</a><a href="#" class="blu_14">6</a><a
                                        href="#" class="blu_14">7</a><a href="#" class="blu_14">8</a><a href="#" class="blu_14">9</a>.&nbsp;.&nbsp;.
                            </td>
                            <td align="right" valign="top">
                                <a href="#">
                                    <img src="../images/next.png" width="41" height="22" border="0" /></a>
                            </td>--%>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
        </div>
    </div>


</asp:Content>
