<%@ Page Language="C#" MasterPageFile="~/Control/AdminMaster.master" AutoEventWireup="true"
    CodeFile="reportdetails.aspx.cs" Inherits="Admin_Plan" Title="Reports" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <td>
        <table width="80%" border="0" cellspacing="0" cellpadding="0">
            <tr>
                <td align="left" valign="top" class="pro_tit">Report
                </td>
            </tr>
            <tr>
                <td>
                    <br />
                </td>
            </tr>
            <tr>
                <td>
                    <table>
                        <tr>
                            <td style="width: 8%">Today's  Surat Doc
                            </td>
                            <td style="width: 8%">Today's  Delhi Doc
                            </td>
                            <td style="width: 8%">Today's  Patna Doc
                            </td>
                             <td style="width: 8%">Today's  RAXIT Doc
                            </td>
                            <td style="width: 8%">Today's  KUNAL Doc
                            </td>
                            <td style="width: 8%">Today's  AMIT Doc
                            </td>
                            <td style="width: 8%">Current Month's  Surat Doc
                            </td>
                            <td style="width: 8%">Current Month's  Delhi Doc
                            </td>
                            <td style="width: 8%">Current Month's Patna Doc
                            </td>
                             <td style="width: 8%">Current Month's RAXIT Doc
                            </td>
                            <td style="width: 8%">Current Month's KUNAL Doc
                            </td>
                            <td style="width: 8%">Current Month's AMIT Doc
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="lblhodoc_count" runat="server"></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="lblfadmindoc_count" runat="server"></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="lblpatnadoc_count" runat="server"></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="lblraxitdoc_count" runat="server"></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="lblkunaldoc_count" runat="server"></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="lblamitdoc_count" runat="server"></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="lblhodoc_countmonth" runat="server"></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="lblfadmindoc_countmonth" runat="server"></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="lblpatnadoc_countmonth" runat="server"></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="lblraxitdoc_countmonth" runat="server"></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="lblkunaldoc_countmonth" runat="server"></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="lblamitdoc_countmonth" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td style="vertical-align: top">
                                <asp:GridView ID="GridView1" runat="server" CellPadding="3" ForeColor="#333333" GridLines="None" AutoGenerateColumns="false">
                                    <Columns>
                                        <asp:BoundField DataField="callername" HeaderText="Caller Name" SortExpression="callername" />
                                        <asp:BoundField DataField="count" HeaderText="Count" SortExpression="count" />
                                    </Columns>
                                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                                    <EditRowStyle BackColor="#999999" />
                                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                    <HeaderStyle BackColor="#DE7037" Font-Bold="True" ForeColor="White" />
                                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" HorizontalAlign="Center" />
                                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                                    <SortedAscendingCellStyle BackColor="#E9E7E2" />
                                    <SortedAscendingHeaderStyle BackColor="#506C8C" />
                                    <SortedDescendingCellStyle BackColor="#FFFDF8" />
                                    <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                                </asp:GridView>
                            </td>
                            <td style="vertical-align: top">
                                <asp:GridView ID="GridView2" runat="server" CellPadding="3" ForeColor="#333333" GridLines="None" AutoGenerateColumns="false">
                                    <Columns>
                                        <asp:BoundField DataField="callername" HeaderText="Caller Name" SortExpression="callername" />
                                        <asp:BoundField DataField="count" HeaderText="Count" SortExpression="count" />
                                    </Columns>
                                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                                    <EditRowStyle BackColor="#999999" />
                                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                    <HeaderStyle BackColor="#DE7037" Font-Bold="True" ForeColor="White" />
                                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" HorizontalAlign="Center" />
                                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                                    <SortedAscendingCellStyle BackColor="#E9E7E2" />
                                    <SortedAscendingHeaderStyle BackColor="#506C8C" />
                                    <SortedDescendingCellStyle BackColor="#FFFDF8" />
                                    <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                                </asp:GridView>
                            </td>
                            <td style="vertical-align: top">
                                <asp:GridView ID="GridView9" runat="server" CellPadding="3" ForeColor="#333333" GridLines="None" AutoGenerateColumns="false">
                                    <Columns>
                                        <asp:BoundField DataField="callername" HeaderText="Caller Name" SortExpression="callername" />
                                        <asp:BoundField DataField="count" HeaderText="Count" SortExpression="count" />
                                    </Columns>
                                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                                    <EditRowStyle BackColor="#999999" />
                                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                    <HeaderStyle BackColor="#DE7037" Font-Bold="True" ForeColor="White" />
                                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" HorizontalAlign="Center" />
                                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                                    <SortedAscendingCellStyle BackColor="#E9E7E2" />
                                    <SortedAscendingHeaderStyle BackColor="#506C8C" />
                                    <SortedDescendingCellStyle BackColor="#FFFDF8" />
                                    <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                                </asp:GridView>
                            </td>
                             <td style="vertical-align: top">
                                <asp:GridView ID="GridView13" runat="server" CellPadding="3" ForeColor="#333333" GridLines="None" AutoGenerateColumns="false">
                                    <Columns>
                                        <asp:BoundField DataField="callername" HeaderText="Caller Name" SortExpression="callername" />
                                        <asp:BoundField DataField="count" HeaderText="Count" SortExpression="count" />
                                    </Columns>
                                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                                    <EditRowStyle BackColor="#999999" />
                                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                    <HeaderStyle BackColor="#DE7037" Font-Bold="True" ForeColor="White" />
                                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" HorizontalAlign="Center" />
                                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                                    <SortedAscendingCellStyle BackColor="#E9E7E2" />
                                    <SortedAscendingHeaderStyle BackColor="#506C8C" />
                                    <SortedDescendingCellStyle BackColor="#FFFDF8" />
                                    <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                                </asp:GridView>
                            </td>
                            <td style="vertical-align: top">
                                <asp:GridView ID="GridView17" runat="server" CellPadding="3" ForeColor="#333333" GridLines="None" AutoGenerateColumns="false">
                                    <Columns>
                                        <asp:BoundField DataField="callername" HeaderText="Caller Name" SortExpression="callername" />
                                        <asp:BoundField DataField="count" HeaderText="Count" SortExpression="count" />
                                    </Columns>
                                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                                    <EditRowStyle BackColor="#999999" />
                                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                    <HeaderStyle BackColor="#DE7037" Font-Bold="True" ForeColor="White" />
                                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" HorizontalAlign="Center" />
                                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                                    <SortedAscendingCellStyle BackColor="#E9E7E2" />
                                    <SortedAscendingHeaderStyle BackColor="#506C8C" />
                                    <SortedDescendingCellStyle BackColor="#FFFDF8" />
                                    <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                                </asp:GridView>
                            </td>
                             <td style="vertical-align: top">
                                <asp:GridView ID="GridView21" runat="server" CellPadding="3" ForeColor="#333333" GridLines="None" AutoGenerateColumns="false">
                                    <Columns>
                                        <asp:BoundField DataField="callername" HeaderText="Caller Name" SortExpression="callername" />
                                        <asp:BoundField DataField="count" HeaderText="Count" SortExpression="count" />
                                    </Columns>
                                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                                    <EditRowStyle BackColor="#999999" />
                                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                    <HeaderStyle BackColor="#DE7037" Font-Bold="True" ForeColor="White" />
                                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" HorizontalAlign="Center" />
                                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                                    <SortedAscendingCellStyle BackColor="#E9E7E2" />
                                    <SortedAscendingHeaderStyle BackColor="#506C8C" />
                                    <SortedDescendingCellStyle BackColor="#FFFDF8" />
                                    <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                                </asp:GridView>
                            </td>
                            <td style="vertical-align: top">
                                <asp:GridView ID="GridView3" runat="server" CellPadding="3" ForeColor="#333333" GridLines="None" AutoGenerateColumns="false">
                                    <Columns>
                                        <asp:BoundField DataField="callername" HeaderText="Caller Name" SortExpression="callername" />
                                        <asp:BoundField DataField="count" HeaderText="Count" SortExpression="count" />
                                    </Columns>
                                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                                    <EditRowStyle BackColor="#999999" />
                                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                    <HeaderStyle BackColor="#DE7037" Font-Bold="True" ForeColor="White" />
                                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" HorizontalAlign="Center" />
                                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                                    <SortedAscendingCellStyle BackColor="#E9E7E2" />
                                    <SortedAscendingHeaderStyle BackColor="#506C8C" />
                                    <SortedDescendingCellStyle BackColor="#FFFDF8" />
                                    <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                                </asp:GridView>
                            </td>
                            <td style="vertical-align: top">
                                <asp:GridView ID="GridView4" runat="server" CellPadding="3" ForeColor="#333333" GridLines="None" AutoGenerateColumns="false">
                                    <Columns>
                                        <asp:BoundField DataField="callername" HeaderText="Caller Name" SortExpression="callername" />
                                        <asp:BoundField DataField="count" HeaderText="Count" SortExpression="count" />
                                    </Columns>
                                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                                    <EditRowStyle BackColor="#999999" />
                                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                    <HeaderStyle BackColor="#DE7037" Font-Bold="True" ForeColor="White" />
                                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" HorizontalAlign="Center" />
                                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                                    <SortedAscendingCellStyle BackColor="#E9E7E2" />
                                    <SortedAscendingHeaderStyle BackColor="#506C8C" />
                                    <SortedDescendingCellStyle BackColor="#FFFDF8" />
                                    <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                                </asp:GridView>
                            </td>
                            <td style="vertical-align: top">
                                <asp:GridView ID="GridView10" runat="server" CellPadding="3" ForeColor="#333333" GridLines="None" AutoGenerateColumns="false">
                                    <Columns>
                                        <asp:BoundField DataField="callername" HeaderText="Caller Name" SortExpression="callername" />
                                        <asp:BoundField DataField="count" HeaderText="Count" SortExpression="count" />
                                    </Columns>
                                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                                    <EditRowStyle BackColor="#999999" />
                                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                    <HeaderStyle BackColor="#DE7037" Font-Bold="True" ForeColor="White" />
                                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" HorizontalAlign="Center" />
                                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                                    <SortedAscendingCellStyle BackColor="#E9E7E2" />
                                    <SortedAscendingHeaderStyle BackColor="#506C8C" />
                                    <SortedDescendingCellStyle BackColor="#FFFDF8" />
                                    <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                                </asp:GridView>
                            </td>
                             <td style="vertical-align: top">
                                <asp:GridView ID="GridView14" runat="server" CellPadding="3" ForeColor="#333333" GridLines="None" AutoGenerateColumns="false">
                                    <Columns>
                                        <asp:BoundField DataField="callername" HeaderText="Caller Name" SortExpression="callername" />
                                        <asp:BoundField DataField="count" HeaderText="Count" SortExpression="count" />
                                    </Columns>
                                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                                    <EditRowStyle BackColor="#999999" />
                                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                    <HeaderStyle BackColor="#DE7037" Font-Bold="True" ForeColor="White" />
                                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" HorizontalAlign="Center" />
                                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                                    <SortedAscendingCellStyle BackColor="#E9E7E2" />
                                    <SortedAscendingHeaderStyle BackColor="#506C8C" />
                                    <SortedDescendingCellStyle BackColor="#FFFDF8" />
                                    <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                                </asp:GridView>
                            </td>
                             <td style="vertical-align: top">
                                <asp:GridView ID="GridView18" runat="server" CellPadding="3" ForeColor="#333333" GridLines="None" AutoGenerateColumns="false">
                                    <Columns>
                                        <asp:BoundField DataField="callername" HeaderText="Caller Name" SortExpression="callername" />
                                        <asp:BoundField DataField="count" HeaderText="Count" SortExpression="count" />
                                    </Columns>
                                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                                    <EditRowStyle BackColor="#999999" />
                                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                    <HeaderStyle BackColor="#DE7037" Font-Bold="True" ForeColor="White" />
                                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" HorizontalAlign="Center" />
                                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                                    <SortedAscendingCellStyle BackColor="#E9E7E2" />
                                    <SortedAscendingHeaderStyle BackColor="#506C8C" />
                                    <SortedDescendingCellStyle BackColor="#FFFDF8" />
                                    <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                                </asp:GridView>
                            </td>
                            <td style="vertical-align: top">
                                <asp:GridView ID="GridView22" runat="server" CellPadding="3" ForeColor="#333333" GridLines="None" AutoGenerateColumns="false">
                                    <Columns>
                                        <asp:BoundField DataField="callername" HeaderText="Caller Name" SortExpression="callername" />
                                        <asp:BoundField DataField="count" HeaderText="Count" SortExpression="count" />
                                    </Columns>
                                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                                    <EditRowStyle BackColor="#999999" />
                                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                    <HeaderStyle BackColor="#DE7037" Font-Bold="True" ForeColor="White" />
                                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" HorizontalAlign="Center" />
                                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                                    <SortedAscendingCellStyle BackColor="#E9E7E2" />
                                    <SortedAscendingHeaderStyle BackColor="#506C8C" />
                                    <SortedDescendingCellStyle BackColor="#FFFDF8" />
                                    <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                                </asp:GridView>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <br />
                            </td>

                        </tr>
                        <tr>
                            <td>Today's Surat Sign
                            </td>
                            <td>Today's Delhi Sign
                            </td>
                              <td>Today's Patna Sign
                            </td>
                             <td>Today's RAXIT Sign
                            </td>
                            <td>Today's KUNAL Sign
                            </td>
                            <td>Today's AMIT Sign
                            </td>
                            <td>Current Month's Surat Sign
                            </td>
                            <td>Current Month's Delhi Sign
                            </td>
                            <td>Current Month's Patna Sign
                            </td>
                             <td>Current Month's RAXIT Sign
                            </td>
                             <td>Current Month's KUNAL Sign 
                            </td>
                            <td>Current Month's AMIT Sign 
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="lblhosign_count" runat="server"></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="lblfadminsign_count" runat="server"></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="lblpatnasign_count" runat="server"></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="lblraxitsign_count" runat="server"></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="lblkunalsign_count" runat="server"></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="lblamitsign_count" runat="server"></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="lblhosign_countmonth" runat="server"></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="lblfadminsign_countmonth" runat="server"></asp:Label>
                            </td>
                              <td>
                                <asp:Label ID="lblpatnasign_countmonth" runat="server"></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="lblraxitsign_countmonth" runat="server"></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="lblkunalsign_countmonth" runat="server"></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="lblamitsign_countmonth" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td style="vertical-align: top">
                                <asp:GridView ID="GridView5" runat="server" CellPadding="3" ForeColor="#333333" GridLines="None" AutoGenerateColumns="false">
                                    <Columns>
                                        <asp:BoundField DataField="callername" HeaderText="Caller Name" SortExpression="callername" />
                                        <asp:BoundField DataField="count" HeaderText="Count" SortExpression="count" />
                                    </Columns>
                                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                                    <EditRowStyle BackColor="#999999" />
                                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                    <HeaderStyle BackColor="#DE7037" Font-Bold="True" ForeColor="White" />
                                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" HorizontalAlign="Center" />
                                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                                    <SortedAscendingCellStyle BackColor="#E9E7E2" />
                                    <SortedAscendingHeaderStyle BackColor="#506C8C" />
                                    <SortedDescendingCellStyle BackColor="#FFFDF8" />
                                    <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                                </asp:GridView>
                            </td>
                            <td style="vertical-align: top">
                                <asp:GridView ID="GridView6" runat="server" CellPadding="3" ForeColor="#333333" GridLines="None" AutoGenerateColumns="false">
                                    <Columns>
                                        <asp:BoundField DataField="callername" HeaderText="Caller Name" SortExpression="callername" />
                                        <asp:BoundField DataField="count" HeaderText="Count" SortExpression="count" />
                                    </Columns>
                                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                                    <EditRowStyle BackColor="#999999" />
                                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                    <HeaderStyle BackColor="#DE7037" Font-Bold="True" ForeColor="White" />
                                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" HorizontalAlign="Center" />
                                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                                    <SortedAscendingCellStyle BackColor="#E9E7E2" />
                                    <SortedAscendingHeaderStyle BackColor="#506C8C" />
                                    <SortedDescendingCellStyle BackColor="#FFFDF8" />
                                    <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                                </asp:GridView>
                            </td>
                             <td style="vertical-align: top">
                                <asp:GridView ID="GridView11" runat="server" CellPadding="3" ForeColor="#333333" GridLines="None" AutoGenerateColumns="false">
                                    <Columns>
                                        <asp:BoundField DataField="callername" HeaderText="Caller Name" SortExpression="callername" />
                                        <asp:BoundField DataField="count" HeaderText="Count" SortExpression="count" />
                                    </Columns>
                                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                                    <EditRowStyle BackColor="#999999" />
                                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                    <HeaderStyle BackColor="#DE7037" Font-Bold="True" ForeColor="White" />
                                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" HorizontalAlign="Center" />
                                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                                    <SortedAscendingCellStyle BackColor="#E9E7E2" />
                                    <SortedAscendingHeaderStyle BackColor="#506C8C" />
                                    <SortedDescendingCellStyle BackColor="#FFFDF8" />
                                    <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                                </asp:GridView>
                            </td>
                            <td style="vertical-align: top">
                                <asp:GridView ID="GridView15" runat="server" CellPadding="3" ForeColor="#333333" GridLines="None" AutoGenerateColumns="false">
                                    <Columns>
                                        <asp:BoundField DataField="callername" HeaderText="Caller Name" SortExpression="callername" />
                                        <asp:BoundField DataField="count" HeaderText="Count" SortExpression="count" />
                                    </Columns>
                                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                                    <EditRowStyle BackColor="#999999" />
                                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                    <HeaderStyle BackColor="#DE7037" Font-Bold="True" ForeColor="White" />
                                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" HorizontalAlign="Center" />
                                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                                    <SortedAscendingCellStyle BackColor="#E9E7E2" />
                                    <SortedAscendingHeaderStyle BackColor="#506C8C" />
                                    <SortedDescendingCellStyle BackColor="#FFFDF8" />
                                    <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                                </asp:GridView>
                            </td>
                            <td style="vertical-align: top">
                                <asp:GridView ID="GridView19" runat="server" CellPadding="3" ForeColor="#333333" GridLines="None" AutoGenerateColumns="false">
                                    <Columns>
                                        <asp:BoundField DataField="callername" HeaderText="Caller Name" SortExpression="callername" />
                                        <asp:BoundField DataField="count" HeaderText="Count" SortExpression="count" />
                                    </Columns>
                                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                                    <EditRowStyle BackColor="#999999" />
                                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                    <HeaderStyle BackColor="#DE7037" Font-Bold="True" ForeColor="White" />
                                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" HorizontalAlign="Center" />
                                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                                    <SortedAscendingCellStyle BackColor="#E9E7E2" />
                                    <SortedAscendingHeaderStyle BackColor="#506C8C" />
                                    <SortedDescendingCellStyle BackColor="#FFFDF8" />
                                    <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                                </asp:GridView>
                            </td>
                             <td style="vertical-align: top">
                                <asp:GridView ID="GridView23" runat="server" CellPadding="3" ForeColor="#333333" GridLines="None" AutoGenerateColumns="false">
                                    <Columns>
                                        <asp:BoundField DataField="callername" HeaderText="Caller Name" SortExpression="callername" />
                                        <asp:BoundField DataField="count" HeaderText="Count" SortExpression="count" />
                                    </Columns>
                                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                                    <EditRowStyle BackColor="#999999" />
                                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                    <HeaderStyle BackColor="#DE7037" Font-Bold="True" ForeColor="White" />
                                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" HorizontalAlign="Center" />
                                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                                    <SortedAscendingCellStyle BackColor="#E9E7E2" />
                                    <SortedAscendingHeaderStyle BackColor="#506C8C" />
                                    <SortedDescendingCellStyle BackColor="#FFFDF8" />
                                    <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                                </asp:GridView>
                            </td>
                            <td style="vertical-align: top">
                                <asp:GridView ID="GridView7" runat="server" CellPadding="3" ForeColor="#333333" GridLines="None" AutoGenerateColumns="false">
                                    <Columns>
                                        <asp:BoundField DataField="callername" HeaderText="Caller Name" SortExpression="callername" />
                                        <asp:BoundField DataField="count" HeaderText="Count" SortExpression="count" />
                                    </Columns>
                                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                                    <EditRowStyle BackColor="#999999" />
                                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                    <HeaderStyle BackColor="#DE7037" Font-Bold="True" ForeColor="White" />
                                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" HorizontalAlign="Center" />
                                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                                    <SortedAscendingCellStyle BackColor="#E9E7E2" />
                                    <SortedAscendingHeaderStyle BackColor="#506C8C" />
                                    <SortedDescendingCellStyle BackColor="#FFFDF8" />
                                    <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                                </asp:GridView>
                            </td>
                            <td style="vertical-align: top">
                                <asp:GridView ID="GridView8" runat="server" CellPadding="3" ForeColor="#333333" GridLines="None" AutoGenerateColumns="false">
                                    <Columns>
                                        <asp:BoundField DataField="callername" HeaderText="Caller Name" SortExpression="callername" />
                                        <asp:BoundField DataField="count" HeaderText="Count" SortExpression="count" />
                                    </Columns>
                                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                                    <EditRowStyle BackColor="#999999" />
                                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                    <HeaderStyle BackColor="#DE7037" Font-Bold="True" ForeColor="White" />
                                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" HorizontalAlign="Center" />
                                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                                    <SortedAscendingCellStyle BackColor="#E9E7E2" />
                                    <SortedAscendingHeaderStyle BackColor="#506C8C" />
                                    <SortedDescendingCellStyle BackColor="#FFFDF8" />
                                    <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                                </asp:GridView>
                            </td>
                             <td style="vertical-align: top">
                                <asp:GridView ID="GridView12" runat="server" CellPadding="3" ForeColor="#333333" GridLines="None" AutoGenerateColumns="false">
                                    <Columns>
                                        <asp:BoundField DataField="callername" HeaderText="Caller Name" SortExpression="callername" />
                                        <asp:BoundField DataField="count" HeaderText="Count" SortExpression="count" />
                                    </Columns>
                                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                                    <EditRowStyle BackColor="#999999" />
                                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                    <HeaderStyle BackColor="#DE7037" Font-Bold="True" ForeColor="White" />
                                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" HorizontalAlign="Center" />
                                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                                    <SortedAscendingCellStyle BackColor="#E9E7E2" />
                                    <SortedAscendingHeaderStyle BackColor="#506C8C" />
                                    <SortedDescendingCellStyle BackColor="#FFFDF8" />
                                    <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                                </asp:GridView>
                            </td>
                            <td style="vertical-align: top">
                                <asp:GridView ID="GridView16" runat="server" CellPadding="3" ForeColor="#333333" GridLines="None" AutoGenerateColumns="false">
                                    <Columns>
                                        <asp:BoundField DataField="callername" HeaderText="Caller Name" SortExpression="callername" />
                                        <asp:BoundField DataField="count" HeaderText="Count" SortExpression="count" />
                                    </Columns>
                                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                                    <EditRowStyle BackColor="#999999" />
                                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                    <HeaderStyle BackColor="#DE7037" Font-Bold="True" ForeColor="White" />
                                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" HorizontalAlign="Center" />
                                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                                    <SortedAscendingCellStyle BackColor="#E9E7E2" />
                                    <SortedAscendingHeaderStyle BackColor="#506C8C" />
                                    <SortedDescendingCellStyle BackColor="#FFFDF8" />
                                    <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                                </asp:GridView>
                            </td>
                            <td style="vertical-align: top">
                                <asp:GridView ID="GridView20" runat="server" CellPadding="3" ForeColor="#333333" GridLines="None" AutoGenerateColumns="false">
                                    <Columns>
                                        <asp:BoundField DataField="callername" HeaderText="Caller Name" SortExpression="callername" />
                                        <asp:BoundField DataField="count" HeaderText="Count" SortExpression="count" />
                                    </Columns>
                                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                                    <EditRowStyle BackColor="#999999" />
                                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                    <HeaderStyle BackColor="#DE7037" Font-Bold="True" ForeColor="White" />
                                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" HorizontalAlign="Center" />
                                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                                    <SortedAscendingCellStyle BackColor="#E9E7E2" />
                                    <SortedAscendingHeaderStyle BackColor="#506C8C" />
                                    <SortedDescendingCellStyle BackColor="#FFFDF8" />
                                    <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                                </asp:GridView>
                            </td>
                             <td style="vertical-align: top">
                                <asp:GridView ID="GridView24" runat="server" CellPadding="3" ForeColor="#333333" GridLines="None" AutoGenerateColumns="false">
                                    <Columns>
                                        <asp:BoundField DataField="callername" HeaderText="Caller Name" SortExpression="callername" />
                                        <asp:BoundField DataField="count" HeaderText="Count" SortExpression="count" />
                                    </Columns>
                                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                                    <EditRowStyle BackColor="#999999" />
                                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                    <HeaderStyle BackColor="#DE7037" Font-Bold="True" ForeColor="White" />
                                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" HorizontalAlign="Center" />
                                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                                    <SortedAscendingCellStyle BackColor="#E9E7E2" />
                                    <SortedAscendingHeaderStyle BackColor="#506C8C" />
                                    <SortedDescendingCellStyle BackColor="#FFFDF8" />
                                    <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                                </asp:GridView>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
    </td>
</asp:Content>
