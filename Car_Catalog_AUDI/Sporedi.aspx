<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Sporedi.aspx.cs" Inherits="Sporedi" %>

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

                    <asp:Table width="590px" runat="server" CellSpacing="10" CellPadding="5" 
                    ID="tb1" Font-Size="XX-Small">
                        <asp:TableRow>
                            <asp:TableCell width="140px">&nbsp;</asp:TableCell>
                            <asp:TableCell width="225px">
                                <asp:DropDownList ID="ddlSerija1" runat="server" 
                    onselectedindexchanged="ddlSerija1_SelectedIndexChanged" AutoPostBack="true" width="225px"></asp:DropDownList>
                            </asp:TableCell>
                            <asp:TableCell width="225px">
                                <asp:DropDownList ID="ddlSerija2" runat="server" 
                    onselectedindexchanged="ddlSerija2_SelectedIndexChanged" AutoPostBack="true" width="225px"></asp:DropDownList>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell width="140px">&nbsp;</asp:TableCell>
                            <asp:TableCell width="225px">
                                <asp:DropDownList ID="ddlModel1" runat="server" 
                    onselectedindexchanged="ddlModel1_SelectedIndexChanged" AutoPostBack="true" width="225px"></asp:DropDownList>
                            </asp:TableCell>
                            <asp:TableCell width="225px">
                                <asp:DropDownList ID="ddlModel2" runat="server" 
                    onselectedindexchanged="ddlModel2_SelectedIndexChanged" AutoPostBack="true" Visible="false" width="225px"></asp:DropDownList>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell width="140px">&nbsp;</asp:TableCell>
                            <asp:TableCell width="225px">
                                <asp:Image ID="img1" runat="server" Width="225px" Visible="false" />
                            </asp:TableCell>
                            <asp:TableCell width="225px">
                                <asp:Image ID="img2" runat="server" Width="225px" Visible="false" />
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow style="background-color:#e2e1e0">
                            <asp:TableCell width="140px"><asp:Label ID="Label1" runat="server" Text="Зафатнина ccm" 
                                    Font-Bold="True" width="140px"></asp:Label></asp:TableCell>
                            <asp:TableCell width="225px"><asp:Label ID="lblZafatnina1" runat="server" Text="" wwidth="225px"></asp:Label></asp:TableCell>
                            <asp:TableCell width="225px"><asp:Label ID="lblZafatnina2" runat="server" Text="" width="225px"></asp:Label></asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell width="140px"><asp:Label ID="Label3" runat="server" 
                                    Text="Најголема моќност, kW (КС) при 1/min" Font-Bold="True" width="140px"></asp:Label></asp:TableCell>
                            <asp:TableCell width="225px"><asp:Label ID="lblMoknost1" runat="server" Text="" width="225px"></asp:Label></asp:TableCell>
                            <asp:TableCell width="225px"><asp:Label ID="lblMoknost2" runat="server" Text="" width="225px"></asp:Label></asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow style="background-color:#e2e1e0">
                            <asp:TableCell width="140px"><asp:Label ID="Label5" runat="server" 
                                    Text="Најголем вртежен момент, Nm при 1/min" Font-Bold="True" width="140px"></asp:Label></asp:TableCell>
                            <asp:TableCell width="225px"><asp:Label ID="lblVrtezMom1" runat="server" Text="" width="225px"></asp:Label></asp:TableCell>
                            <asp:TableCell width="225px"><asp:Label ID="lblVrtezMom2" runat="server" Text="" width="225px"></asp:Label></asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell width="140px"><asp:Label ID="Label7" runat="server" Text="Вид на гориво" 
                                    Font-Bold="True" width="140px"></asp:Label></asp:TableCell>
                            <asp:TableCell width="225px"><asp:Label ID="lblGorivo1" runat="server" Text="" width="225px"></asp:Label></asp:TableCell>
                            <asp:TableCell width="225px"><asp:Label ID="lblGorivo2" runat="server" Text="" width="225px"></asp:Label></asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow style="background-color:#e2e1e0">
                            <asp:TableCell width="140px"><asp:Label ID="Label9" runat="server" Text="Погон на тркала" 
                                    Font-Bold="True" width="140px"></asp:Label></asp:TableCell>
                            <asp:TableCell width="225px"><asp:Label ID="lblPogon1" runat="server" Text="" width="225px"></asp:Label></asp:TableCell>
                            <asp:TableCell width="225px"><asp:Label ID="lblPogon2" runat="server" Text="" width="225px"></asp:Label></asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell width="140px"><asp:Label ID="Label11" runat="server" Text="Пренос" 
                                    Font-Bold="True" width="140px"></asp:Label></asp:TableCell>
                            <asp:TableCell width="225px"><asp:Label ID="lblPrenos1" runat="server" Text="" width="225px"></asp:Label></asp:TableCell>
                            <asp:TableCell width="225px"><asp:Label ID="lblPrenos2" runat="server" Text="" width="225px"></asp:Label></asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow style="background-color:#e2e1e0">
                            <asp:TableCell width="140px"><asp:Label ID="Label13" runat="server" Text="Тркала" 
                                    Font-Bold="True" width="140px"></asp:Label></asp:TableCell>
                            <asp:TableCell width="225px"><asp:Label ID="lblBandazi1" runat="server" Text="" width="225px"></asp:Label></asp:TableCell>
                            <asp:TableCell width="225px"><asp:Label ID="lblBandazi2" runat="server" Text="" width="225px"></asp:Label></asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell width="140px"><asp:Label ID="Label15" runat="server" Text="Гуми" 
                                    Font-Bold="True" width="140px"></asp:Label></asp:TableCell>
                            <asp:TableCell width="225px"><asp:Label ID="lblGumi1" runat="server" Text="" width="225px"></asp:Label></asp:TableCell>
                            <asp:TableCell width="225px"><asp:Label ID="lblGumi2" runat="server" Text="" width="225px"></asp:Label></asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow style="background-color:#e2e1e0">
                            <asp:TableCell width="140px"><asp:Label ID="Label17" runat="server" Text="Систем за сопирање" 
                                    Font-Bold="True" width="140px"></asp:Label></asp:TableCell>
                            <asp:TableCell width="225px"><asp:Label ID="lblSopiranje1" runat="server" Text="" width="225px"></asp:Label></asp:TableCell>
                            <asp:TableCell width="225px"><asp:Label ID="lblSopiranje2" runat="server" Text="" width="225px"></asp:Label></asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell width="140px"><asp:Label ID="Label19" runat="server" 
                                    Text="Тежина без товар во kg" Font-Bold="True" width="140px"></asp:Label></asp:TableCell>
                            <asp:TableCell width="225px"><asp:Label ID="lblTezina1" runat="server" Text="" width="225px"></asp:Label></asp:TableCell>
                            <asp:TableCell width="225px"><asp:Label ID="lblTezina2" runat="server" Text="" width="225px"></asp:Label></asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow style="background-color:#e2e1e0">
                            <asp:TableCell width="140px"><asp:Label ID="Label21" runat="server" 
                                    Text="Максимално дозволена носивост" Font-Bold="True" width="140px"></asp:Label></asp:TableCell>
                            <asp:TableCell width="225px"><asp:Label ID="lblMaxNosivost1" runat="server" Text="" width="225px"></asp:Label></asp:TableCell>
                            <asp:TableCell width="225px"><asp:Label ID="lblMaxNosivost2" runat="server" Text="" width="225px"></asp:Label></asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell width="140px"><asp:Label ID="Label23" runat="server" 
                                    Text="Зафатнина на багажникот во l" Font-Bold="True" width="140px"></asp:Label></asp:TableCell>
                            <asp:TableCell width="225px"><asp:Label ID="lblBagaznik1" runat="server" Text="" width="225px"></asp:Label></asp:TableCell>
                            <asp:TableCell width="225px"><asp:Label ID="lblBagaznik2" runat="server" Text="" width="225px"></asp:Label></asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow style="background-color:#e2e1e0">
                            <asp:TableCell width="140px"><asp:Label ID="Label25" runat="server" 
                                    Text="Количина на резервоар во литри (приближна вредност)" Font-Bold="True" width="140px"></asp:Label></asp:TableCell>
                            <asp:TableCell width="225px"><asp:Label ID="lblRezervoar1" runat="server" Text="" width="225px"></asp:Label></asp:TableCell>
                            <asp:TableCell width="225px"><asp:Label ID="lblRezervoar2" runat="server" Text="" width="225px"></asp:Label></asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell width="140px"><asp:Label ID="Label27" runat="server" 
                                    Text="Забрзување 0-100 km/h во s" Font-Bold="True" width="140px"></asp:Label></asp:TableCell>
                            <asp:TableCell width="225px"><asp:Label ID="lblZabrzuvanje1" runat="server" Text="" width="225px"></asp:Label></asp:TableCell>
                            <asp:TableCell width="225px"><asp:Label ID="lblZabrzuvanje2" runat="server" Text="" width="225px"></asp:Label></asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow style="background-color:#e2e1e0">
                            <asp:TableCell width="140px"><asp:Label ID="Label29" runat="server" 
                                    Text="Макс. брзина во km/h" Font-Bold="True" width="140px"></asp:Label></asp:TableCell>
                            <asp:TableCell width="225px"><asp:Label ID="lblMaxBrzina1" runat="server" Text="" width="225px"></asp:Label></asp:TableCell>
                            <asp:TableCell width="225px"><asp:Label ID="lblMaxBrzina2" runat="server" Text="" width="225px"></asp:Label></asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell width="140px"><asp:Label ID="Label31" runat="server" 
                                    Text="Потрошувачка на гориво (град/отворено/просек)" Font-Bold="True" width="140px"></asp:Label></asp:TableCell>
                            <asp:TableCell width="225px"><asp:Label ID="lblPotrosuvacka1" runat="server" Text="" width="225px"></asp:Label></asp:TableCell>
                            <asp:TableCell width="225px"><asp:Label ID="lblPotrosuvacka2" runat="server" Text="" width="225px"></asp:Label></asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow style="background-color:#e2e1e0">
                            <asp:TableCell width="140px"><asp:Label ID="Label33" runat="server" 
                                    Text="Димензии во mm (должина/ширина/висина)" Font-Bold="True" width="140px"></asp:Label></asp:TableCell>
                            <asp:TableCell width="225px"><asp:Label ID="lblDimenzii1" runat="server" Text="" width="225px"></asp:Label></asp:TableCell>
                            <asp:TableCell width="225px"><asp:Label ID="lblDimenzii2" runat="server" Text="" width="225px"></asp:Label></asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell width="140px"><asp:Label ID="Label35" runat="server" 
                                    Text="Основа на тркалата во mm" Font-Bold="True" width="140px"></asp:Label></asp:TableCell>
                            <asp:TableCell width="225px"><asp:Label ID="lblOsnovaTrkala1" runat="server" Text="" width="225px"></asp:Label></asp:TableCell>
                            <asp:TableCell width="225px"><asp:Label ID="lblOsnovaTrkala2" runat="server" Text="" width="225px"></asp:Label></asp:TableCell>
                        </asp:TableRow>
                    </asp:Table>
		</div><!-- cB -->
		<div class="Cpad">
			<br class="clear" /><div class="Cbottomleft"></div><div class="Cbottom"></div><div class="Cbottomright"></div>
		</div><!-- Cpad -->
    </div>
</asp:Content>