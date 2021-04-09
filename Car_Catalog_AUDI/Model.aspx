<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Model.aspx.cs" Inherits="Modeli" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder" Runat="Server">
    <div id="content">
		<div id="cB">
                <br />
                <asp:Label ID="lblPoraka" runat="server" Text="" Font-Bold="true" Font-Size="Large"></asp:Label>
                <asp:Label ID="lblPoraka1" runat="server" Text="" Font-Bold="true" Font-Size="Large"></asp:Label>
                <asp:Label ID="lblPoraka2" runat="server" Text="" Font-Bold="true" Font-Size="Large"></asp:Label>
                <asp:Label ID="lblPoraka3" runat="server" Text="" Font-Bold="true" Font-Size="Large"></asp:Label>
                <asp:Label ID="lblPoraka4" runat="server" Text="" Font-Bold="true" Font-Size="Large"></asp:Label>
                <asp:Label ID="lblPoraka5" runat="server" Text="" Font-Bold="true" Font-Size="Large"></asp:Label><br /><br />
                <asp:DropDownList ID="ddlModel" runat="server" 
                    onselectedindexchanged="ddlModel_SelectedIndexChanged" AutoPostBack="true">
                </asp:DropDownList><br /><br /><br />
                
                    <asp:Table width="600px" runat="server" CellSpacing="10" CellPadding="5" Visible="false" ID="tb1">
                        <asp:TableRow>
                            <asp:TableCell ColumnSpan="2">
                                <asp:Image ID="img1" Visible="false" runat="server" Width="590px" />
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow style="background-color:#e2e1e0;">
                            <asp:TableCell width="200px"><asp:Label ID="Label1" runat="server" Text="Зафатнина ccm" 
                                    Font-Bold="True"></asp:Label></asp:TableCell>
                            <asp:TableCell width="400px"><asp:Label ID="lblZafatnina" runat="server" Text=""></asp:Label></asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell width="200px"><asp:Label ID="Label3" runat="server" 
                                    Text="Најголема моќност, kW (КС) при 1/min" Font-Bold="True"></asp:Label></asp:TableCell>
                            <asp:TableCell width="400px"><asp:Label ID="lblMoknost" runat="server" Text=""></asp:Label></asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow style="background-color:#e2e1e0;">
                            <asp:TableCell width="200px"><asp:Label ID="Label5" runat="server" 
                                    Text="Најголем вртежен момент, Nm при 1/min" Font-Bold="True"></asp:Label></asp:TableCell>
                            <asp:TableCell width="400px"><asp:Label ID="lblVrtezMom" runat="server" Text=""></asp:Label></asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell width="200px"><asp:Label ID="Label7" runat="server" Text="Вид на гориво" 
                                    Font-Bold="True"></asp:Label></asp:TableCell>
                            <asp:TableCell width="400px"><asp:Label ID="lblGorivo" runat="server" Text=""></asp:Label></asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow style="background-color:#e2e1e0;">
                            <asp:TableCell width="200px"><asp:Label ID="Label9" runat="server" Text="Погон на тркала" 
                                    Font-Bold="True"></asp:Label></asp:TableCell>
                            <asp:TableCell width="400px"><asp:Label ID="lblPogon" runat="server" Text=""></asp:Label></asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell width="200px"><asp:Label ID="Label11" runat="server" Text="Пренос" 
                                    Font-Bold="True"></asp:Label></asp:TableCell>
                            <asp:TableCell width="400px"><asp:Label ID="lblPrenos" runat="server" Text=""></asp:Label></asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow style="background-color:#e2e1e0;">
                            <asp:TableCell width="200px"><asp:Label ID="Label13" runat="server" Text="Тркала" 
                                    Font-Bold="True"></asp:Label></asp:TableCell>
                            <asp:TableCell width="400px"><asp:Label ID="lblBandazi" runat="server" Text=""></asp:Label></asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell width="200px"><asp:Label ID="Label15" runat="server" Text="Гуми" 
                                    Font-Bold="True"></asp:Label></asp:TableCell>
                            <asp:TableCell width="400px"><asp:Label ID="lblGumi" runat="server" Text=""></asp:Label></asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow style="background-color:#e2e1e0;">
                            <asp:TableCell width="200px"><asp:Label ID="Label17" runat="server" Text="Систем за сопирање" 
                                    Font-Bold="True"></asp:Label></asp:TableCell>
                            <asp:TableCell width="400px"><asp:Label ID="lblSopiranje" runat="server" Text=""></asp:Label></asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell width="200px"><asp:Label ID="Label19" runat="server" 
                                    Text="Тежина без товар во kg" Font-Bold="True"></asp:Label></asp:TableCell>
                            <asp:TableCell width="400px"><asp:Label ID="lblTezina" runat="server" Text=""></asp:Label></asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow style="background-color:#e2e1e0;">
                            <asp:TableCell width="200px"><asp:Label ID="Label21" runat="server" 
                                    Text="Максимално дозволена носивост" Font-Bold="True"></asp:Label></asp:TableCell>
                            <asp:TableCell width="400px"><asp:Label ID="lblMaxNosivost" runat="server" Text=""></asp:Label></asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell width="200px"><asp:Label ID="Label23" runat="server" 
                                    Text="Зафатнина на багажникот во l" Font-Bold="True"></asp:Label></asp:TableCell>
                            <asp:TableCell width="400px"><asp:Label ID="lblBagaznik" runat="server" Text=""></asp:Label></asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow style="background-color:#e2e1e0;">
                            <asp:TableCell width="200px"><asp:Label ID="Label25" runat="server" 
                                    Text="Количина на резервоар во литри (приближна вредност)" Font-Bold="True"></asp:Label></asp:TableCell>
                            <asp:TableCell width="400px"><asp:Label ID="lblRezervoar" runat="server" Text=""></asp:Label></asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell width="200px"><asp:Label ID="Label27" runat="server" 
                                    Text="Забрзување 0-100 km/h во s" Font-Bold="True"></asp:Label></asp:TableCell>
                            <asp:TableCell width="400px"><asp:Label ID="lblZabrzuvanje" runat="server" Text=""></asp:Label></asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow style="background-color:#e2e1e0;">
                            <asp:TableCell width="200px"><asp:Label ID="Label29" runat="server" 
                                    Text="Макс. брзина во km/h" Font-Bold="True"></asp:Label></asp:TableCell>
                            <asp:TableCell width="400px"><asp:Label ID="lblMaxBrzina" runat="server" Text=""></asp:Label></asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell width="200px"><asp:Label ID="Label31" runat="server" 
                                    Text="Потрошувачка на гориво (град/отворено/просек)" Font-Bold="True"></asp:Label></asp:TableCell>
                            <asp:TableCell width="400px"><asp:Label ID="lblPotrosuvacka" runat="server" Text=""></asp:Label></asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow style="background-color:#e2e1e0;">
                            <asp:TableCell width="200px"><asp:Label ID="Label33" runat="server" 
                                    Text="Димензии во mm (должина/ширина/висина)" Font-Bold="True"></asp:Label></asp:TableCell>
                            <asp:TableCell width="400px"><asp:Label ID="lblDimenzii" runat="server" Text=""></asp:Label></asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell width="200px"><asp:Label ID="Label35" runat="server" 
                                    Text="Основа на тркалата во mm" Font-Bold="True"></asp:Label></asp:TableCell>
                            <asp:TableCell width="400px"><asp:Label ID="lblOsnovaTrkala" runat="server" Text=""></asp:Label></asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell width="200px">&nbsp;</asp:TableCell>
                            <asp:TableCell width="400px" align="right"><asp:Button ID="btnSporedi" runat="server" Text="Спореди модел" 
                                                                    onclick="btnSporedi_Click" /></asp:TableCell>
                        </asp:TableRow>
                    </asp:Table>
		</div><!-- cB -->
		<div class="Cpad">
			<br class="clear" /><div class="Cbottomleft"></div><div class="Cbottom"></div><div class="Cbottomright"></div>
		</div><!-- Cpad -->
    </div>
</asp:Content>