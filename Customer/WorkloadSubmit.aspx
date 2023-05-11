﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Customer/Customer.master" AutoEventWireup="true"
    CodeFile="WorkloadSubmit.aspx.cs" Inherits="Customer_WorkloadSubmit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <h3><i class="fa fa-angle-right"></i>&nbsp Work Submission</h3>
    <div class="row mt">
        <div class="col-lg-12">
            <div class="form-panel">
                <h4><i class="fa fa-angle-right"></i>Submit Work</h4>
                <center>
        <asp:Label ID="lbl_status" runat="server" ForeColor="#009933"></asp:Label>
    </center>
                <br />
                <table style="width: 100%">
                    <tr>
                        <td style="width: 355px">Are you sure you want to complete you Workload ?
                        </td>
                        <td>&nbsp;
                <asp:Button ID="Button1" runat="server" class="btn btn-danger" OnClick="Button1_Click"
                    Text="Submit" />

                        </td>
                    </tr>
                    <tr>
                        <td style="width: 355px">
                            <asp:Label ID="lblcompl" runat="server" Visible="False"></asp:Label>
                            <asp:Label ID="lbltotal" runat="server" Visible="False"></asp:Label>
                        </td>
                        <td>&nbsp;
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 355px">&nbsp;
                        </td>
                        <td>&nbsp;
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 355px">&nbsp;
                        </td>
                        <td>&nbsp;
                        </td>
                    </tr>
                    <tr style="width: 355px; visibility: hidden;" id="div_download" runat="server">
                        <td style="width: 355px;">
                            <asp:Label ID="lbl_download" runat="server" Text="Download The Work"></asp:Label>
                        </td>
                        <td>
                            <asp:Button ID="btn_download" CssClass="btn btn-default" runat="server" OnClick="btn_download_Click" Text="Download" />
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 355px">&nbsp;
                        </td>
                        <td>&nbsp;
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 355px">&nbsp;
                        </td>
                        <td>&nbsp;
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 355px">&nbsp;
                        </td>
                        <td>&nbsp;
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 355px">&nbsp;
                        </td>
                        <td>&nbsp;
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 355px">&nbsp;
                        </td>
                        <td>&nbsp;
                        </td>
                    </tr>
                </table>
            </div>
        </div>
    </div>
</asp:Content>
