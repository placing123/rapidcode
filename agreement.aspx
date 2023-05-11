<%@ Page Language="C#" AutoEventWireup="true" CodeFile="agreement.aspx.cs" Inherits="agreement" ValidateRequest="false" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="js1/jquery.min.js"></script>
    <script src="js1/sketch.min.js"></script>
    <script type="text/javascript">
        $(function () {
            $('#colors_sketch').sketch();
            $(".tools a").eq(0).attr("style", "color:#000");
            $(".tools a").click(function () {
                $(".tools a").removeAttr("style");
                $(this).attr("style", "color:#000");
            });
        });
        function ConvertToImage(btn_tnc) {
            var base64 = $('#colors_sketch')[0].toDataURL();
            $("[id*=hfImageData]").val(base64);
            __doPostBack(btn_tnc.name, "");
        };
    </script>
    <script type="text/javascript">
        function RedirectAfterDelayFn() {
            var seconds = 5;
            var dvCountDown = document.getElementById("CountDown");
            var lblCount = document.getElementById("CountDownLabel");
            dvCountDown.style.display = "block";
            lblCount.innerHTML = seconds;
            setInterval(function () {
                seconds--;
                lblCount.innerHTML = seconds;
                if (seconds == 0) {
                    dvCountDown.style.display = "none";
                    window.location = "Default.aspx";
                }
            }, 1000);
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <center>
            <iframe id="pdfiframe" runat="server" style="width:1000px; height:500px;" frameborder="0"></iframe>
        </center>
        </div>
        <div>
            <center>
            <table>
                <tr>
                    <td>
                         <div id="CountDown" style="display: none">  
                You will be redirected after  
                <br />  
                <span id="CountDownLabel"></span> seconds.  
            </div>  
                        <a href="#colors_sketch" data-tool="marker">Marker</a> <a href="#colors_sketch" data-tool="eraser">Eraser</a>
                    </td>
                </tr>
                <tr>
                    <td>
                        <canvas id="colors_sketch" width="500" height="200" style="border-color: black; border-width: medium; border-style: solid;"></canvas>
                        <asp:HiddenField ID="hfImageData" runat="server" />
                    </td>
                    <td>
                        <asp:Button ID="btn_tnc" runat="server" Text="Accept ALL T&C"  OnClientClick="return ConvertToImage(this)" OnClick="btn_tnc_Click" />
                    </td>
                </tr>
            </table>
        </center>
        </div>
        <div>
        </div>
    </form>
</body>
</html>
