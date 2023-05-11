<%@ Page Language="C#" AutoEventWireup="true" CodeFile="wallet.aspx.cs" Inherits="Customer_wallet"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Welcome</title>
<link href="css/style.css" rel="stylesheet" type="text/css" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
<script src="../js/jquery.reveal.js"></script>
<script type="text/javascript">
    $(document).ready(function () {
        $('#button').click(function (e) { // Button which will activate our modal
            $('#modal').reveal({ // The item which will be opened with reveal
                animation: 'fade',                   // fade, fadeAndPop, none
                animationspeed: 300,                       // how fast animtions are
                closeonbackgroundclick: true,              // if you click background will modal close?
                dismissmodalclass: 'close'    // the class of a button or element that will close an open modal
            });
            return false;
        });
    });
	</script>

</head>
<body>
<form id="form1" runat="server">
 <div class="main">
  <div class="top_bg">
    <div class="margin">
      <div class="top">
        <div class="top_min">
        
          <div class="top_txt">Submission End Date: <asp:Label ID="lbl_end_date" runat="server"></asp:Label>&nbsp; |&nbsp;<a href="Logout.aspx" class="black_11">Logout</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;                 
          </div>
        </div>
      </div>
    </div>
  </div>
     <div class="menu_bg">
    <div class="margin">
      <div class="menu">
        <ul>
          <li><a href="wallet.aspx">Wallet</a></li>
                    
          <li><a href="AutoHelpLine.aspx">Contact Us</a></li>
        </ul>
      </div>
    </div>
  </div>
      <div class="row mt">
            <div class="col-lg-12">
                <div class="form-panel">
                    <div class="center" style="border:1px solid #353535; background-color:#7FFFD4; align-content:center">
                    <table style="width: 100%">
                        <tr>
                            <td align="left" style="height: 50px; width: 1000px">Page Completed :&nbsp;
                        
                                <asp:Label ID="lblcompl" runat="server"></asp:Label>
                                &nbsp;/
                        <asp:Label ID="lbltotal" runat="server"></asp:Label>
                            </td>
                            <td align="center" style="height: 50px; width: 1000px">Rate :&nbsp;
                            <asp:Label ID="lblrate" runat="server"></asp:Label>
                                &nbsp;35₹
                                </td>
                            <td align="center" style="height: 50px; width: 1000px">Wallet Balance :&nbsp;
                            <asp:Label ID="lblbalance" runat="server"></asp:Label>
                                &nbsp;₹
                                </td>
                                 </tr>
                        </table>
                                    <div align="center">
                    <asp:Label ID="lblmsg" runat="server" Visible="False" ForeColor="#009933"></asp:Label>
                        </div>
						</div>
                </div>
            </div> <br/><br/><br/><br/>
			<center><p style="font-color:red; align:center"><b>TERMS AND CONDITION</b> <br/><br/>
			<div style="color:#DC143C"><b>Amount is Subjected to Accuracy Level.Minimum Accuracy Required is 90% for Payment</b></div></p></center>
                    
      </div>
                                
   <div class="bot_bg">
    <div class="margin">
      <div class="bot">
          Copyright © 2014 All rights reserved. </div>
    </div>
  </div>
</div> 

</form>
</body>
</html>
   
