<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="SiteMap.aspx.cs" Inherits="SiteMap" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder" Runat="Server">
    <div id="content">
		<div id="cB" style="text-align:justify">
            <br />
			<h1>Мапа на сајтот</h1><br />
            <asp:Table ID="Table1" runat="server" Width="600px">
                <asp:TableRow style="font-weight:bold;font-size:medium" height="30px">
                    <asp:TableCell><asp:HyperLink ID="home" runat="server" NavigateUrl="~/Default.aspx">Почетна</asp:HyperLink></asp:TableCell>
                </asp:TableRow>
                <asp:TableRow style="font-weight:bold;font-size:medium" height="30px">
                    <asp:TableCell><asp:HyperLink ID="models" runat="server" NavigateUrl="~/SiteModeli.aspx">Модели</asp:HyperLink></asp:TableCell>
                </asp:TableRow>
                    <asp:TableRow height="30px">
                    <asp:TableCell>
                    <asp:Table ID="Table2" runat="server" Width="500px">
                            <asp:TableRow>
                                <asp:TableCell>&nbsp;</asp:TableCell>
                                <asp:TableCell><asp:LinkButton ID="A1" runat="server" onclick="A1_Click">A1</asp:LinkButton></asp:TableCell>
                                <asp:TableCell><asp:LinkButton ID="A3" runat="server" onclick="A3_Click">A3</asp:LinkButton></asp:TableCell>
                                <asp:TableCell><asp:LinkButton ID="A4" runat="server" onclick="A4_Click">A4</asp:LinkButton></asp:TableCell>
                                <asp:TableCell><asp:LinkButton ID="A5" runat="server" onclick="A5_Click">A5</asp:LinkButton></asp:TableCell>
                            </asp:TableRow>
                            <asp:TableRow>
                                <asp:TableCell>&nbsp;</asp:TableCell>
                                <asp:TableCell><asp:LinkButton ID="A6" runat="server" onclick="A6_Click">A6</asp:LinkButton></asp:TableCell>
                                <asp:TableCell><asp:LinkButton ID="A7" runat="server" onclick="A7_Click">A7</asp:LinkButton></asp:TableCell>
                                <asp:TableCell><asp:LinkButton ID="A8" runat="server" onclick="A8_Click">A8</asp:LinkButton></asp:TableCell>
                                <asp:TableCell><asp:LinkButton ID="Q3" runat="server" onclick="Q3_Click">Q3</asp:LinkButton></asp:TableCell>
                            </asp:TableRow>
                            <asp:TableRow>
                                <asp:TableCell>&nbsp;</asp:TableCell>
                                <asp:TableCell><asp:LinkButton ID="Q5" runat="server" onclick="Q5_Click">Q5</asp:LinkButton></asp:TableCell>
                                <asp:TableCell><asp:LinkButton ID="Q7" runat="server" onclick="Q7_Click">Q7</asp:LinkButton></asp:TableCell>
                                <asp:TableCell><asp:LinkButton ID="TT" runat="server" onclick="TT_Click">TT</asp:LinkButton></asp:TableCell>
                                <asp:TableCell><asp:LinkButton ID="R8" runat="server" onclick="R8_Click">R8</asp:LinkButton></asp:TableCell>
                            </asp:TableRow>
                        </asp:Table>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow style="font-weight:bold;font-size:medium" height="30px">
                    <asp:TableCell><asp:HyperLink ID="news" runat="server" NavigateUrl="~/Novosti.aspx">Новости</asp:HyperLink></asp:TableCell>
                </asp:TableRow>
                <asp:TableRow style="font-weight:bold;font-size:medium" height="30px">
                    <asp:TableCell><asp:HyperLink ID="servis" runat="server" NavigateUrl="~/Servis.aspx">Сервис</asp:HyperLink></asp:TableCell>
                </asp:TableRow>
                <asp:TableRow style="font-weight:bold;font-size:medium" height="30px">
                    <asp:TableCell><asp:HyperLink ID="about" runat="server" NavigateUrl="~/About.aspx">Околу АУДИ</asp:HyperLink></asp:TableCell>
                </asp:TableRow>
            </asp:Table>
        </div><!-- cB -->
		<div class="Cpad">
			<br class="clear" /><div class="Cbottomleft"></div><div class="Cbottom"></div><div class="Cbottomright"></div>
		</div><!-- Cpad -->
    </div>
</asp:Content>