<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>
<html lang="en">
<head>
    

    <title>Login</title>

    <!-- Bootstrap core CSS -->
    <link rel="stylesheet" href="assets/css/bootstrap.css">
    <!--external css-->
    <link rel="stylesheet" href="assets/font-awesome/css/font-awesome.css">

    <!-- Custom styles for this template -->
    <link rel="stylesheet" href="assets/css/style.css">
    <link rel="stylesheet" href="assets/css/style-responsive.css">
</head>

<body>


    <div id="login-page">
        <div class="container">
            <form id="form1" class="form-login" runat="server">
                <h2 class="form-login-heading">sign in now</h2>
                <div class="login-wrap">
                    
                    <asp:TextBox ID="txt_Uname" runat="server" type="User Id" placeholder="User ID" class="form-control"></asp:TextBox>

                    <br>
                    <asp:TextBox ID="txt_pass" runat="server" type="password" placeholder="Password" class="form-control"></asp:TextBox>

                    <label class="checkbox">
                        <span class="pull-right"></span>
                    </label>
                    
                    <asp:LinkButton ID="btn_submit" class="btn btn-theme btn-block" OnClick="btn_submit_Click" runat="server"><i class="fa fa-lock"></i>SIGN IN</asp:LinkButton>
                    
                    <hr>
                </div>


            </form>

        </div>
    </div>

    <!-- js placed at the end of the document so the pages load faster -->
    <script src="assets/js/jquery.js"></script>
    <script src="assets/js/bootstrap.min.js"></script>

    <!--BACKSTRETCH-->
    <!-- You can use an image of whatever size. This script will stretch to fit in any screen size.-->
    <script src="assets/js/jquery.backstretch.min.js" type="text/javascript"></script>
    <script>
        $.backstretch("assets/img/login-bg.jpg", { speed: 500 });
    </script>
    <div class="backstretch" style="left: 0px; top: 0px; overflow: hidden; margin: 0px; padding: 0px; height: 392px; width: 1349px; z-index: -999999; position: fixed;">
        <img style="position: absolute; margin: 0px; padding: 0px; border: medium none; width: 1349px; height: 899.503px; max-width: none; z-index: -999999; left: 0px; top: -253.752px;" src="assets/img/login-bg.jpg">
    </div>



</body>
</html>
