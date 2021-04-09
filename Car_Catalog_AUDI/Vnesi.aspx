<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Vnesi.aspx.cs" Inherits="promena" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder" Runat="Server">
    <div id="content">
		<div id="cB">
        <asp:Table ID="Table1" runat="server" Height="40px">
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Label ID="lblPoraka" runat="server" ForeColor="Red"></asp:Label>
                    <asp:Label ID="lblPorakaUpload" runat="server" ForeColor="Red"></asp:Label>
                    <asp:RequiredFieldValidator ID="r1" runat="server" ErrorMessage="Внеси серија" Display="None" 
                        ControlToValidate="txtSerija"></asp:RequiredFieldValidator>
                    <asp:RequiredFieldValidator ID="r2" runat="server" ErrorMessage="Внеси име на мотор" Display="None" 
                        ControlToValidate="txtImeMotor"></asp:RequiredFieldValidator>
                        <asp:ValidationSummary ID="vs1" runat="server" ForeColor="Red" /> 
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>
         <asp:Table ID="Table2" width="650px" align="center" runat="server">
            <asp:TableRow>
                <asp:TableCell><asp:Label ID="lblSerija" runat="server" Text="Серија" Width="150px"></asp:Label></asp:TableCell>
                <asp:TableCell><asp:TextBox ID="txtSerija" runat="server" Width="150px" Enabled="False"></asp:TextBox></asp:TableCell>
                <asp:TableCell width="50px">&nbsp;</asp:TableCell>
                <asp:TableCell><asp:Label ID="lblImeMotor" runat="server" Text="Име на мотор" Width="150px"></asp:Label></asp:TableCell>
                <asp:TableCell><asp:TextBox ID="txtImeMotor" runat="server" Width="150px" Enabled="False" ></asp:TextBox></asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell><asp:Label ID="lblZafatninaMotor" runat="server" Text="Зафатнина на мотор" Width="150px"></asp:Label></asp:TableCell>
                <asp:TableCell><asp:TextBox ID="txtZafatninaMotor" runat="server" Width="150px" ></asp:TextBox></asp:TableCell>
                <asp:TableCell width="50px">&nbsp;</asp:TableCell>
                <asp:TableCell><asp:Label ID="lblMoknost" runat="server" Text="Моќност" Width="150px"></asp:Label></asp:TableCell>
                <asp:TableCell><asp:TextBox ID="txtMoknost" runat="server" Width="150px" ></asp:TextBox></asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell><asp:Label ID="lblVrtezMoment" runat="server" Text="Вртежен момент" Width="150px"></asp:Label></asp:TableCell>
                <asp:TableCell><asp:TextBox ID="txtVrtezMoment" runat="server" Width="150px" ></asp:TextBox></asp:TableCell>
                <asp:TableCell width="50px">&nbsp;</asp:TableCell>
                <asp:TableCell><asp:Label ID="lblGorivo" runat="server" Text="Гориво" Width="150px"></asp:Label></asp:TableCell>
                <asp:TableCell><asp:TextBox ID="txtGorivo" runat="server" Width="150px" ></asp:TextBox></asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell><asp:Label ID="lblPogonTrkala" runat="server" Text="Погон на тркала" Width="150px"></asp:Label></asp:TableCell>
                <asp:TableCell><asp:TextBox ID="txtPogonTrkala" runat="server" Width="150px" ></asp:TextBox></asp:TableCell>
                <asp:TableCell width="50px">&nbsp;</asp:TableCell>
                <asp:TableCell><asp:Label ID="lblMenuvac" runat="server" Text="Менувач" Width="150px"></asp:Label></asp:TableCell>
                <asp:TableCell><asp:TextBox ID="txtMenuvac" runat="server" Width="150px" ></asp:TextBox></asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell><asp:Label ID="lblBandazi" runat="server" Text="Бандажи" Width="150px"></asp:Label></asp:TableCell>
                <asp:TableCell><asp:TextBox ID="txtBandazi" runat="server" Width="150px" ></asp:TextBox></asp:TableCell>
                <asp:TableCell width="50px">&nbsp;</asp:TableCell>
                <asp:TableCell><asp:Label ID="lblGumi" runat="server" Text="Гуми" Width="150px"></asp:Label></asp:TableCell>
                <asp:TableCell><asp:TextBox ID="txtGumi" runat="server" Width="150px" ></asp:TextBox></asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell><asp:Label ID="lblSopiranje" runat="server" Text="Систем за сопирање" Width="150px"></asp:Label></asp:TableCell>
                <asp:TableCell><asp:TextBox ID="txtSopiranje" runat="server" Width="150px" ></asp:TextBox></asp:TableCell>
                <asp:TableCell width="50px">&nbsp;</asp:TableCell>
                <asp:TableCell><asp:Label ID="lblBezTovar" runat="server" Text="Тежина без товар" Width="150px"></asp:Label></asp:TableCell>
                <asp:TableCell><asp:TextBox ID="txtBezTovar" runat="server" Width="150px" ></asp:TextBox></asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell><asp:Label ID="lblMaxTezina" runat="server" Text="Максимална носивост" Width="150px"></asp:Label></asp:TableCell>
                <asp:TableCell><asp:TextBox ID="txtMaxTezina" runat="server" Width="150px" ></asp:TextBox></asp:TableCell>
                <asp:TableCell width="50px">&nbsp;</asp:TableCell>
                <asp:TableCell><asp:Label ID="lblBagaznik" runat="server" Text="Зафатнина на багажник" Width="150px"></asp:Label></asp:TableCell>
                <asp:TableCell><asp:TextBox ID="txtBagaznik" runat="server" Width="150px" ></asp:TextBox></asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell><asp:Label ID="lblRezervoar" runat="server" Text="Резервоар" Width="150px"></asp:Label></asp:TableCell>
                <asp:TableCell><asp:TextBox ID="txtRezervoar" runat="server" Width="150px" ></asp:TextBox></asp:TableCell>
                <asp:TableCell width="50px">&nbsp;</asp:TableCell>
                <asp:TableCell><asp:Label ID="lblZabrzuvanje" runat="server" Text="Забрзување 0-100" Width="150px"></asp:Label></asp:TableCell>
                <asp:TableCell><asp:TextBox ID="txtZabrzuvanje" runat="server" Width="150px" ></asp:TextBox></asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell><asp:Label ID="lblMaxBrzina" runat="server" Text="Максимална брзина" Width="150px"></asp:Label></asp:TableCell>
                <asp:TableCell><asp:TextBox ID="txtMaxBrzina" runat="server" Width="150px" ></asp:TextBox></asp:TableCell>
                <asp:TableCell width="50px">&nbsp;</asp:TableCell>
                <asp:TableCell><asp:Label ID="lblPotrosuvacka" runat="server" Text="Потрошувачка" Width="150px"></asp:Label></asp:TableCell>
                <asp:TableCell><asp:TextBox ID="txtPotrosuvacka" runat="server" Width="150px" ></asp:TextBox></asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell><asp:Label ID="lblDimenzii" runat="server" Text="Димензии д/ш/в" Width="150px"></asp:Label></asp:TableCell>
                <asp:TableCell><asp:TextBox ID="txtDimenzii" runat="server" Width="150px" ></asp:TextBox></asp:TableCell>
                <asp:TableCell width="50px">&nbsp;</asp:TableCell>
                <asp:TableCell><asp:Label ID="lblOsnovaTrkala" runat="server" Text="Основа на тркала" Width="150px"></asp:Label></asp:TableCell>
                <asp:TableCell><asp:TextBox ID="txtOsnovaTrkala" runat="server" Width="150px" ></asp:TextBox></asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Label ID="lblslika" runat="server" Text="Одбери слика" ForeColor="Red"></asp:Label>
                </asp:TableCell>
                <asp:TableCell ColumnSpan="4">
                    <asp:FileUpload ID="FileUpload1" runat="server" EnableTheming="True" ToolTip="Внеси текст" />
                </asp:TableCell>
            </asp:TableRow>
                <asp:TableRow>
                <asp:TableCell>
                    <asp:Label ID="lbl360" runat="server" Text="Одбери 360 патека" ForeColor="Red"></asp:Label>
                </asp:TableCell>
                    <asp:TableCell ColumnSpan="4">
                        <asp:FileUpload ID="FileUpload2" runat="server" EnableTheming="True" ToolTip="Внеси текст" />
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                        <asp:TableCell ColumnSpan="5" align="right">
                    <asp:Button ID="btnVnesi" Enabled="false" runat="server" Text="Внеси" onclick="btnVnesi_Click" Height="30px" Width="80px" />
                    <asp:Button ID="btnPromeni" Enabled="false" runat="server" Text="Промени" onclick="btnPromeni_Click" Height="30px" Width="80px" />
                        </asp:TableCell>
                </asp:TableRow>
        </asp:Table>
        </div><!-- cB -->
		<div class="Cpad">
			<br class="clear" /><div class="Cbottomleft"></div><div class="Cbottom"></div><div class="Cbottomright"></div>
		</div><!-- Cpad -->
    </div>
</asp:Content>