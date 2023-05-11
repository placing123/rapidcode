<%@ Page Title="" Language="C#" MasterPageFile="~/Customer/Customer.master" AutoEventWireup="true"
    CodeFile="AutoHelpLine.aspx.cs" Inherits="Customer_AutoHelpLine" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <h3><i class="fa fa-angle-right"></i>&nbsp Auto Help Line</h3>
    <div class="row mt">
        <div class="col-lg-12">
            <div class="form-panel">
                <table border="1" frame="border" width="100%" style="color: #4b4b4b" cellspacing="8px">
                    

                    <tr>
                        <td style="border-style: dashed; border-width: thin; padding: 5px; margin: 4px">Form No:
                        </td>
                        <td style="border-style: dashed; border-width: thin; padding: 5px; margin: 4px">
                            <asp:DropDownList ID="ddl_form" runat="server">
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td style="border-style: dashed; border-width: thin; padding: 5px; margin: 4px">Field :
                        </td>
                        <td style="border-style: dashed; border-width: thin; padding: 5px; margin: 4px">
                            <asp:DropDownList ID="ddl_field" runat="server">
                                <asp:ListItem Value="Tbc_No">L. A. No.</asp:ListItem>
                                <asp:ListItem Value="Name">Name</asp:ListItem>
                                <asp:ListItem Value="EmailId">Email ID</asp:ListItem>
                                <asp:ListItem Value="MobileNo">Mobile No</asp:ListItem>
                                <asp:ListItem Value="Gender">Gender</asp:ListItem>
                                <asp:ListItem Value="LicenseNo">Center Code</asp:ListItem>
                                <asp:ListItem Value="GirNo">Registration No</asp:ListItem>
                                <asp:ListItem Value="PanNo">Secure No</asp:ListItem>
                                <asp:ListItem Value="H_Address">Home Address</asp:ListItem>
                                <asp:ListItem Value="H_City">Home City</asp:ListItem>
                                <asp:ListItem Value="H_PinNo">Home ZipCode No</asp:ListItem>
                                <asp:ListItem Value="H_State">Home State</asp:ListItem>
                                <asp:ListItem Value="O_Address">Office Address</asp:ListItem>
                                <asp:ListItem Value="O_City">Office City</asp:ListItem>
                                <asp:ListItem Value="O_PinNo">Office ZipCode No</asp:ListItem>
                                <asp:ListItem Value="LAL">Loan Amount</asp:ListItem>
                                <asp:ListItem Value="MRNNo">CCN No</asp:ListItem>
                                <asp:ListItem Value="AF">SRN</asp:ListItem>
                                <asp:ListItem Value="NRI">NCV</asp:ListItem>
                                <asp:ListItem Value="CP">CN</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td style="border-style: dashed; border-width: thin; padding: 5px; margin: 4px"></td>
                        <td style="border-style: dashed; border-width: thin; padding: 5px; margin: 4px">
                            <asp:Button ID="btn_submit" runat="server" Text="Submit" OnClick="btn_submit_Click" />
                        </td>
                    </tr>
                </table>
            </div>
        </div>
    </div>

    <div class="row mt">
        <div class="col-lg-12">
            <div class="form-panel">
                <h4><i class="fa fa-angle-right"></i>Pending Request</h4>
                <asp:GridView ID="grd_pending" runat="server" AutoGenerateColumns="False" CellPadding="4"
                    ForeColor="#333333" GridLines="None" Width="100%">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                        <asp:BoundField DataField="Form" HeaderText="Form" SortExpression="Form" />
                        <asp:BoundField DataField="Field_Name" HeaderText="Field" SortExpression="Field_Name" />
                    </Columns>
                    <EditRowStyle BackColor="#999999" />
                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#16C0A7" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" HorizontalAlign="Center" />
                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#E9E7E2" />
                    <SortedAscendingHeaderStyle BackColor="#506C8C" />
                    <SortedDescendingCellStyle BackColor="#FFFDF8" />
                    <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                </asp:GridView>
            </div>
        </div>
    </div>

    <div class="row mt">
        <div class="col-lg-12">
            <div class="form-panel">
                <h4><i class="fa fa-angle-right"></i>Form Detail</h4>
                <asp:GridView ID="grd_form_detail" runat="server" AutoGenerateColumns="False" CellPadding="4"
                    ForeColor="#333333" GridLines="None" Width="100%">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                        <asp:BoundField DataField="Form" HeaderText="Form" SortExpression="Form" />
                        <asp:BoundField DataField="Field_Name" HeaderText="Field" SortExpression="Field_Name" />
                        <asp:BoundField DataField="Data" HeaderText="Data" SortExpression="Data" />
                    </Columns>
                    <EditRowStyle BackColor="#999999" />
                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#16C0A7" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" HorizontalAlign="Center" />
                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#E9E7E2" />
                    <SortedAscendingHeaderStyle BackColor="#506C8C" />
                    <SortedDescendingCellStyle BackColor="#FFFDF8" />
                    <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                </asp:GridView>
            </div>
        </div>
    </div>
    <div class="row mt">
        <div class="col-lg-12">
            <div class="form-panel">
                <h4><i class="fa fa-angle-right"></i>Note :-</h4>
                <table>
                    <tr>
                        <td><b>
                            <br />
                            For any more queries email us or call us on:
                           
                            <br />
                            Email: parttimejobs.cc@outlook.com 
                           
                            <br />
                            Mobile: +91 98217-79155,+91 95605-20242,+91 97738-77074 ( 10:30 AM - 06:30 PM )
                        </b>
                        </td>
                    </tr>
                </table>
            </div>
        </div>
    </div>
    <div class="row mt">
        <div class="col-lg-12">
            <div class="form-panel">
                <h4><i class="fa fa-angle-right"></i>Sample Image and Video</h4>
                <table>
                    <tr>
                        <td>
                            <a href="../images/sample.jpeg" target="_blank">
                                <img src="../images/sample.jpeg" width="600" />
                            </a>
                        </td>
                        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                        <td>
                            <a href="../images/sample.mp4" target="_blank">
                                <video src="../images/sample.mp4" controls="controls" width="600" />
                            </a>
                        </td>
                    </tr>
                </table>
            </div>
        </div>
    </div>
</asp:Content>
