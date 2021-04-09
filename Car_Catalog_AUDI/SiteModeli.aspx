<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="SiteModeli.aspx.cs" Inherits="SiteModeli" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1 {
            height: 25px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder" Runat="Server">
    <div id="content">
		<div id="cB">
			<div class="Ctopright"></div>
			<div id="cB1">
                <table cellspacing="10" cellpadding="10" width="660">
                    <tr>
                        <td class="style1"><asp:LinkButton ID="lbA1" runat="server" onclick="lbA1_Click"><asp:Image ImageUrl="~/images/modeli/a1.jpg" ID="imgA1" runat="server" Width="100" Height="40"/><br />A1</asp:LinkButton></td>
                        <td class="style1"><asp:LinkButton ID="lbA3kompakt" runat="server" 
                                onclick="lbA3kompakt_Click"><asp:Image ImageUrl="~/images/modeli/a3_kompakt.jpg" ID="imgA3" runat="server" Width="100" Height="40"/><br />A3</asp:LinkButton></td>
                        <td class="style1"><asp:LinkButton ID="lbA3sportback" runat="server" 
                                onclick="lbA3sportback_Click"><asp:Image ImageUrl="~/images/modeli/a3_sportback.jpg" ID="imgA3Sportback" runat="server" Width="100" Height="40"/><br />A3 Sportback</asp:LinkButton></td>
                        <td class="style1"><asp:LinkButton ID="lbA3cabrio" runat="server" 
                                onclick="lbA3cabrio_Click"><asp:Image ImageUrl="~/images/modeli/a3_cabrio.jpg" ID="imgA3Cabriolet" runat="server" Width="100" Height="40"/><br />A3 Cabriolet</asp:LinkButton></td>
                        <td class="style1"><asp:LinkButton ID="lbA4limuzina" runat="server" 
                                onclick="lbA4limuzina_Click"><asp:Image ImageUrl="~/images/modeli/a4_limuzina.jpg" ID="imgA4Limousine" runat="server" Width="100" Height="40"/><br />A4 Limousine</asp:LinkButton></td>
                    </tr>
                    <tr>
                        <td><asp:LinkButton ID="lbA4avant" runat="server" onclick="lbA4avant_Click"><asp:Image ImageUrl="~/images/modeli/a4_avant.jpg" ID="imgA4Avant" runat="server" Width="100" Height="40"/><br />A4 Avant</asp:LinkButton></td>
                        <td><asp:LinkButton ID="lbA5coupe" runat="server" onclick="lbA5coupe_Click"><asp:Image ImageUrl="~/images/modeli/a5_coupe.jpg" ID="imgA5Coupe" runat="server" Width="100" Height="40"/><br />A5 Coupe</asp:LinkButton></td>
                        <td><asp:LinkButton ID="lbA5sportback" runat="server" onclick="lbA5sportback_Click"><asp:Image ImageUrl="~/images/modeli/a5_sportback.jpg" ID="imgA5Sportback" runat="server" Width="100" Height="40"/><br />A5 Sportback</asp:LinkButton></td>
                        <td><asp:LinkButton ID="lbS5coupe" runat="server" onclick="lbS5coupe_Click"><asp:Image ImageUrl="~/images/modeli/s5_coupe.jpg" ID="imgS5Sportback" runat="server" Width="100" Height="40"/><br />S5 Sportback</asp:LinkButton></td>
                        <td><asp:LinkButton ID="lbA6limuzina" runat="server" onclick="lbA6limuzina_Click"><asp:Image ImageUrl="~/images/modeli/a6_limuzina.jpg" ID="imgA6Limousine" runat="server" Width="100" Height="40"/><br />A6 Limousine</asp:LinkButton></td>
                    </tr>
                    <tr>
                        <td><asp:LinkButton ID="lbA6avant" runat="server" onclick="lbA6avant_Click"><asp:Image ImageUrl="~/images/modeli/a6_avant.jpg" ID="imgA6Avant" runat="server" Width="100" Height="40"/><br />A6 Avant</asp:LinkButton></td>
                        <td><asp:LinkButton ID="lbA6allroad" runat="server" onclick="lbA6allroad_Click"><asp:Image ImageUrl="~/images/modeli/a6_allroad.jpg" ID="imgA6Allroad" runat="server" Width="100" Height="40"/><br />A6 allroad quattro</asp:LinkButton></td>
                        <td><asp:LinkButton ID="lbA7sportback" runat="server" onclick="lbA7sportback_Click"><asp:Image ImageUrl="~/images/modeli/a7_sportback.jpg" ID="imgA7Sportback" runat="server" Width="100" Height="40"/><br />A7 Sportback</asp:LinkButton></td>
                        <td><asp:LinkButton ID="lbA8" runat="server" onclick="lbA8_Click"><asp:Image ImageUrl="~/images/modeli/a8.jpg" ID="imgA8" runat="server" Width="100" Height="40"/><br />A8</asp:LinkButton></td>
                        <td><asp:LinkButton ID="lbQ3" runat="server" onclick="lbQ3_Click"><asp:Image ImageUrl="~/images/modeli/q3.jpg" ID="imgQ3" runat="server" Width="100" Height="40"/><br />Q3</asp:LinkButton></td>
                    </tr>
                    <tr>
                        <td><asp:LinkButton ID="lbQ5" runat="server" onclick="lbQ5_Click"><asp:Image ImageUrl="~/images/modeli/q5.jpg" ID="imgQ5" runat="server" Width="100" Height="40"/><br />Q5</asp:LinkButton></td>
                        <td><asp:LinkButton ID="lbQ7" runat="server" onclick="lbQ7_Click"><asp:Image ImageUrl="~/images/modeli/q7.jpg" ID="imgQ7" runat="server" Width="100" Height="40"/><br />Q7</asp:LinkButton></td>
                        <td><asp:LinkButton ID="lbTTcoupe" runat="server" onclick="lbTTcoupe_Click"><asp:Image ImageUrl="~/images/modeli/tt_coupe.jpg" ID="imgTTCoupe" runat="server" Width="100" Height="40"/><br />TT Coupe</asp:LinkButton></td>
                        <td><asp:LinkButton ID="lbTTroadster" runat="server" onclick="lbTTroadster_Click"><asp:Image ImageUrl="~/images/modeli/tt_roadster.jpg" ID="imgTTRoadster" runat="server" Width="100" Height="40"/><br />TT Roadster</asp:LinkButton></td>
                        <td><asp:LinkButton ID="lbR8" runat="server" onclick="lbR8_Click"><asp:Image ImageUrl="~/images/modeli/r8_coupe.jpg" ID="imgR8Coupe" runat="server" Width="100" Height="40"/><br />R8 Coupe</asp:LinkButton></td>
                    </tr>
                </table>
			</div><!-- cB1 -->
		</div><!-- cB -->
		<div class="Cpad">
			<br class="clear" /><div class="Cbottomleft"></div><div class="Cbottom"></div><div class="Cbottomright"></div>
		</div><!-- Cpad -->
    </div>
</asp:Content>