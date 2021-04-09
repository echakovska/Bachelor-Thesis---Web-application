<%@ Page Title="ChangePassword" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="PromeniLozinka.aspx.cs" Inherits="ChangePassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder" Runat="Server">
<div id="content">
		<div id="cB">
			<h2>Промени лозинка</h2>
        <asp:Table ID="Table1" runat="server">
                <asp:TableRow>
                    <asp:TableCell>Корисничко име:</asp:TableCell>
                    <asp:TableCell><asp:TextBox ID="txtIme" runat="server" Enabled="false"></asp:TextBox>*</asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>Стара Лозинка:</asp:TableCell>
                    <asp:TableCell><asp:TextBox ID="txtStrara" runat="server" TextMode="Password"></asp:TextBox>*<asp:RequiredFieldValidator ID="r1" runat="server" 
                            ErrorMessage="Внесете ја старата лозинка" ControlToValidate="txtStrara" Display="None"
                            ForeColor="Red"></asp:RequiredFieldValidator></asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>Нова Лозинка:</asp:TableCell>
                    <asp:TableCell><asp:TextBox ID="txtPasswordNova" runat="server" TextMode="Password"></asp:TextBox>*<asp:RequiredFieldValidator ID="r2"
                                runat="server" ErrorMessage="Внесете нова лозинка" Display="None"
                            ControlToValidate="txtPasswordNova" ForeColor="Red"></asp:RequiredFieldValidator></asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>Потврди Лозинка:</asp:TableCell>
                    <asp:TableCell><asp:TextBox ID="txtConfirmNova" runat="server" TextMode="Password"></asp:TextBox>*<asp:RequiredFieldValidator ID="r3" runat="server" Display="None" 
                            ErrorMessage="Потврдетеа новата лозинката" ControlToValidate="txtConfirmNova" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:CompareValidator ID="c1" runat="server" Display="None" ErrorMessage="Погрешна лозинка" ControlToCompare="txtPasswordNova" 
                            ControlToValidate="txtConfirmNova" ForeColor="Red"></asp:CompareValidator></asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell ColumnSpan="2">
                        <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" />
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell ColumnSpan="2" align="center">
                        <asp:Button ID="btnPromeni" runat="server" 
                            Text="Промени" onclick="btnPromeni_Click" /></asp:TableCell>
                </asp:TableRow>
                <asp:TableRow><asp:TableCell ColumnSpan="2"><asp:Label ID="lblPromena" runat="server" Text="" ForeColor="Red"></asp:Label></asp:TableCell></asp:TableRow>
            </asp:Table>
		</div><!-- cB -->
		<div class="Cpad">
			<br class="clear" /><div class="Cbottomleft"></div><div class="Cbottom"></div><div class="Cbottomright"></div>
		</div><!-- Cpad -->
    </div>        
</asp:Content>