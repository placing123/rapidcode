<%@ Page Language="C#" AutoEventWireup="true" CodeFile="~/Customer/changepassword.aspx.cs" Inherits="Admin_changepassword" MasterPageFile="~/Customer/Customer.master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <h3><i class="fa fa-angle-right"></i>&nbsp Authentication</h3>
    <div class="col-lg-6 col-md-6 col-sm-12">
        <div class="form-panel">
            <h4 class="mb"><i class="fa fa-angle-right"></i> Change Password </h4>
            <div class="form-horizontal style-form">
                <div class="form-group">
                    <label class="col-sm-4 col-sm-4 control-label">Old Password::</label>
                    <div class="col-sm-8">
                        <asp:TextBox ID="txt_Old" runat="server" CssClass="form-control"
                            TextMode="Password"></asp:TextBox>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-4 col-sm-4 control-label">New Password::</label>
                    <div class="col-sm-8">
                        <asp:TextBox ID="txt_New" runat="server" CssClass="form-control"
                            TextMode="Password"></asp:TextBox>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-4 col-sm-4 control-label">Confirm Password::</label>
                    <div class="col-sm-8">
                        <asp:TextBox ID="txt_Confirm" CssClass="form-control" runat="server"
                            TextMode="Password"></asp:TextBox>
                    </div>
                </div>
                <div class="form-group">

                    <div class="col-sm-10">
                        <asp:Button ID="but_submit" class="btn btn-success" runat="server" Text="Submit"
                            OnClick="but_submit_Click" />
                    </div>
                </div>
            </div>



        </div>
    </div>

</asp:Content>
