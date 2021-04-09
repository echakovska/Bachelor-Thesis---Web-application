<%@ Page Title="Register" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Registracija.aspx.cs" Inherits="Registracija" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder" Runat="Server">
    <div id="content">
    <div id="cB">
        <h2>Регистрација нов корисник</h2>
            <asp:Table ID="Table1" runat="server">
                <asp:TableRow>
                    <asp:TableCell ColumnSpan="2">
                        <asp:ListBox ID="lstKorisnici" runat="server" Enabled="False" Width="300px"></asp:ListBox>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>Корисничко Име:</asp:TableCell>
                    <asp:TableCell><asp:TextBox ID="txtIme" runat="server"></asp:TextBox>*<asp:RequiredFieldValidator ID="r1" runat="server" 
                            ErrorMessage="Внесете Корисничко Име" ControlToValidate="txtIme" Display="None"
                            ForeColor="Red"></asp:RequiredFieldValidator></asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>Лозинка:</asp:TableCell>
                    <asp:TableCell><asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>*<asp:RequiredFieldValidator ID="r2"
                                runat="server" ErrorMessage="Внесете Лозинка" Display="None"
                            ControlToValidate="txtPassword" ForeColor="Red"></asp:RequiredFieldValidator></asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>Потврди Лозинка:</asp:TableCell>
                    <asp:TableCell><asp:TextBox ID="txtConfirm" runat="server" TextMode="Password"></asp:TextBox>*<asp:RequiredFieldValidator ID="r3" runat="server" Display="None" 
                            ErrorMessage="Внесете потврда на лозинката" ControlToValidate="txtConfirm" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:CompareValidator ID="c1" runat="server" Display="None" ErrorMessage="Погрешна лозинка" ControlToCompare="txtPassword" 
                            ControlToValidate="txtConfirm" ForeColor="Red"></asp:CompareValidator></asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>Е-маил:</asp:TableCell>
                    <asp:TableCell><asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>*<asp:RequiredFieldValidator ID="r4" runat="server" Display="None"
                            ErrorMessage="Внесете Е-маил" ControlToValidate="txtEmail" ForeColor="Red"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="re1" runat="server" Display="None" ErrorMessage="Невалиден Е-маил" ControlToValidate="txtEmail" 
                            ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator></asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>Телефон:</asp:TableCell>
                    <asp:TableCell><asp:TextBox ID="txtTel" runat="server"></asp:TextBox>*<asp:RequiredFieldValidator 
                            ID="r5" runat="server" Display="None" ErrorMessage="Внесете телефон" ControlToValidate="txtTel" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="re2" runat="server" 
                            ErrorMessage="Внесете број во формат: 07x-xxx-xxx" Display="None" ControlToValidate="txtTel" ValidationExpression="07[0125678]-\d{3}-\d{3}" ForeColor="Red"></asp:RegularExpressionValidator></asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell ColumnSpan="2">
                        <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" />
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell ColumnSpan="2" align="center"><asp:Button ID="btnKreiraj" runat="server" 
                            Text="Креирај" onclick="btnKreiraj_Click" /></asp:TableCell>
                </asp:TableRow>
                <asp:TableRow><asp:TableCell><asp:Label ID="lblDodadi" runat="server" Text="" ForeColor="Red"></asp:Label></asp:TableCell></asp:TableRow>
            </asp:Table>
		</div><!-- cB -->
		<div class="Cpad">
			<br class="clear" /><div class="Cbottomleft"></div><div class="Cbottom"></div><div class="Cbottomright"></div>
		</div><!-- Cpad -->
   </div>
</asp:Content>