﻿<%@ Page Language="C#" MasterPageFile="~/Control/AdminMaster.master" AutoEventWireup="true"
    CodeFile="Change.aspx.cs" Inherits="Admin_Log" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <td>
        <table width="100%" border="0" cellspacing="0" cellpadding="0">
            <tr>
                <td align="left" valign="top" class="pro_tit">
                    Change
                </td>
            </tr>
        </table>
        <table style="width: 100%">
            <tr>
                <td style="width: 85px">
                    &nbsp;
                </td>
                <td>
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td style="width: 85px">
                    &nbsp;
                </td>
                <td>
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td style="width: 85px">
                    Client ID
                </td>
                <td>
                    <asp:TextBox ID="txt_cid" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 85px">
                    &nbsp;
                </td>
                <td>
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td style="width: 85px">
                    &nbsp;
                </td>
                <td>
                    <asp:Button ID="btn_show" runat="server" Text="Show" OnClick="btn_show_Click" />
                </td>
            </tr>
            <tr>
                <td style="width: 85px">
                    &nbsp;
                </td>
                <td>
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td style="width: 85px">
                    &nbsp;
                </td>
                <td>
                    <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" 
                        GridLines="None" AutoGenerateColumns="False" Width="100%">
                        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" HorizontalAlign="Center" />
                        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                        <HeaderStyle BackColor="#DE7037" Font-Bold="True" ForeColor="White" HorizontalAlign="Center" />
                        <Columns>
                            <asp:BoundField DataField="srno" HeaderText="srno" SortExpression="srno" />
                            <asp:BoundField DataField="field" HeaderText="field" SortExpression="field" />
                            <asp:BoundField DataField="error" HeaderText="error" SortExpression="error" />
                            <asp:BoundField DataField="correct" HeaderText="correct" SortExpression="correct" />
                        </Columns>
                        <EditRowStyle BackColor="#999999" />
                        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    </asp:GridView>
                </td>
            </tr>
        </table>
    </td>
</asp:Content>
