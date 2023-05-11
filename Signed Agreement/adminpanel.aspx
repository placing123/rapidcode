<%@ Page Language="C#" MasterPageFile="~/Signed Agreement/AdminMaster.master" AutoEventWireup="true"
    CodeFile="adminpanel.aspx.cs" Inherits="Admin_adminpanel" Title="Admin Panel" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <td align="left" valign="top" class="das_min">
        <table width="100%" border="0" cellspacing="0" cellpadding="0">
            <tr>
                <td align="left" valign="top" class="pro_tit">Dashboard
                </td>
            </tr>
            <tr>
                <td align="left" valign="top" class="das_box">
                    <table width="100%" border="0" cellspacing="0" cellpadding="0">
                        <tr>
                            <td width="130" align="left" valign="top">
                                <table width="115" border="0" cellspacing="0" cellpadding="0">
                                    <tr>
                                        <td align="left" valign="top" class="das_box_min">
                                            <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                               
                                                <tr>
                                                    <td height="27" align="center" valign="middle">Surat Workload
                                                    </td>
                                                </tr>
                                            </table>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                            <td width="130" align="left" valign="top">
                                <table width="115" border="0" cellspacing="0" cellpadding="0">
                                    <tr>
                                        <td align="left" valign="top" class="das_box_min">
                                            
                                              <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                                <tr>
                                                    <td align="center" valign="top" style="padding: 10px 0 5px 0;">
                                                        <asp:Label ID="lbl_fadminworkload" runat="server" Font-Size="XX-Large"></asp:Label>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td height="27" align="center" valign="middle">Delhi Workload
                                                    </td>
                                                </tr>
                                            </table>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                             <td width="130" align="left" valign="top">
                                <table width="115" border="0" cellspacing="0" cellpadding="0">
                                    <tr>
                                        <td align="left" valign="top" class="das_box_min">
                                            
                                              <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                                <tr>
                                                    <td align="center" valign="top" style="padding: 10px 0 5px 0;">
                                                        <asp:Label ID="lbl_patnaworkload" runat="server" Font-Size="XX-Large"></asp:Label>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td height="27" align="center" valign="middle">Patna Workload
                                                    </td>
                                                </tr>
                                            </table>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                            <td width="130" align="left" valign="top">
                                <table width="115" border="0" cellspacing="0" cellpadding="0">
                                    <tr>
                                        <td align="left" valign="top" class="das_box_min">
                                            <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                                <tr>
                                                    <td align="center" valign="top" style="padding: 10px 0 5px 0;">
                                                        <asp:Label ID="lbl_activeclient" runat="server" Font-Size="XX-Large"></asp:Label>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td height="27" align="center" valign="middle">Active Client
                                                    </td>
                                                </tr>
                                            </table>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                            <td width="130" align="left" valign="top">
                                <table width="115" border="0" cellspacing="0" cellpadding="0">
                                    <tr>
                                        <%--<td align="left" valign="top" class="das_box_min">
                                            <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                              <tr>
                                                    <td align="center" valign="top" style="padding: 10px 0 5px 0;">
                                                         <a href="inquiry.aspx">
                                                            <img src="images/inquiry.png" border="0" style="width: 82px; height: 78px;" /></a>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td height="27" align="center" valign="middle">
                                                       <a href="inquiry.aspx" class="pro_black_13">Customer Inquery</a>
                                                    </td>
                                                </tr>
                                             </table>    
                                        </td>--%>
                                    </tr>
                                </table>
                            </td>
                            <td width="130" align="left" valign="top">
                                <table width="115" border="0" cellspacing="0" cellpadding="0">
                                    <tr>
                                        <%--<td align="left" valign="top" class="das_box_min">
                                            <table width="100%" border="0" cellspacing="0" cellpadding="0">                                            
                                              <tr>
                                                    <td align="center" valign="top" style="padding: 10px 0 5px 0;">
                                                         <a href="Customer_Activate.aspx">
                                                            <img src="images/customeractive.png" border="0" 
                                                             style="width: 78px; height: 79px;" /></a>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td height="27" align="center" valign="middle">
                                                       <a href="Customer_Activate.aspx" class="pro_black_13">Customer Activate</a>
                                                    </td>
                                                </tr>
                                            </table>
                                        </td>--%>
                                    </tr>
                                </table>
                            </td>
                            <td width="115" align="left" valign="top">
                                <table width="115" border="0" cellspacing="0" cellpadding="0">
                                    <tr>
                                        <%--<td align="left" valign="top" class="das_box_min">
                                          <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                                <tr>
                                                    <td align="center" valign="top" style="padding: 10px 0 5px 0;">
                                                        <a href="Agreement.aspx">
                                                            <img src="images/agreement.png" border="0" style="width: 78px; height: 78px;" /></a>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td height="27" align="center" valign="middle">
                                                        <a href="Agreement.aspx" class="pro_black_13">Agreement Pending</a>
                                                    </td>
                                                </tr>
                                            </table>
                                        </td>--%>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
    </td>
</asp:Content>
