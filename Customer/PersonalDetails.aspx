<%@ Page Title="" Language="C#" MasterPageFile="~/Customer/Customer.master" AutoEventWireup="true"
    CodeFile="PersonalDetails.aspx.cs" Inherits="Franchisee_PersonalDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <h3><i class="fa fa-angle-right"></i>&nbsp Profile Details</h3>
    <div class="row mt">
        <div class="col-lg-12">
            <div class="form-panel">
                <table border="1" frame="border" width="100%" style="color: #4b4b4b" cellspacing="8px"
                    width="100%">
                    <tr>
                        <td style="border-style: dashed; border-width: thin; padding: 5px; margin: 4px" colspan="2">
                            <div class="mid_lef">
                                <div class="mid_lef_tit">
                                    <span style="color: #16C0A7;">Personal & Banking Details</span>
                                </div>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td style="border-style: dashed; border-width: thin; padding: 5px; margin: 4px">Customer Id
                        </td>
                        <td style="border-style: dashed; border-width: thin; padding: 5px; margin: 4px">
                            <asp:Label ID="lbl_cid" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td style="border-style: dashed; border-width: thin; padding: 5px; margin: 4px">Customer Name
                        </td>
                        <td style="border-style: dashed; border-width: thin; padding: 5px; margin: 4px">
                            <asp:Label ID="lbl_cname" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td style="border-style: dashed; border-width: thin; padding: 5px; margin: 4px">Address</td>
                        <td style="border-style: dashed; border-width: thin; padding: 5px; margin: 4px">
                            <asp:Label ID="lbl_address" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td style="border-style: dashed; border-width: thin; padding: 5px; margin: 4px">Mobile No.</td>
                        <td style="border-style: dashed; border-width: thin; padding: 5px; margin: 4px">
                            <asp:Label ID="lbl_mob" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td style="border-style: dashed; border-width: thin; padding: 5px; margin: 4px">Email</td>
                        <td style="border-style: dashed; border-width: thin; padding: 5px; margin: 4px">
                            <asp:Label ID="lbl_email" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td style="border-style: dashed; border-width: thin; padding: 5px; margin: 4px">A/C Holder Name</td>
                        <td style="border-style: dashed; border-width: thin; padding: 5px; margin: 4px">
                            <asp:TextBox ID="txt_acname" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="border-style: dashed; border-width: thin; padding: 5px; margin: 4px">A/C Number</td>
                        <td style="border-style: dashed; border-width: thin; padding: 5px; margin: 4px">
                            <asp:TextBox ID="txt_acnumber" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="border-style: dashed; border-width: thin; padding: 5px; margin: 4px">Bank IFSC Code</td>
                        <td style="border-style: dashed; border-width: thin; padding: 5px; margin: 4px">
                            <asp:TextBox ID="txt_ifsccode" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="border-style: dashed; border-width: thin; padding: 5px; margin: 4px"></td>
                        <td style="border-style: dashed; border-width: thin; padding: 5px; margin: 4px">
                            <asp:Button ID="btn_update" runat="server" Text="Update" OnClick="btn_update_Click" />
                        </td>
                    </tr>
                </table>
            </div>
        </div>
    </div>

</asp:Content>
