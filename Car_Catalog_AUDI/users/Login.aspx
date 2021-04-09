<%@ Page Title="Login" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder" Runat="Server">
    <div id="content">
		<div id="cB">
			<h2>Логирање</h2>
            <asp:Table ID="Table1" runat="server"><asp:TableRow ><asp:TableCell>
                <asp:Table ID="Table2" runat="server" class="style9">
                    <asp:TableRow>
                        <asp:TableCell>Корисничко име:</asp:TableCell>
                        <asp:TableCell><asp:TextBox ID="txtIme" runat="server"></asp:TextBox></asp:TableCell>
                        <asp:TableCell>
                            <asp:RequiredFieldValidator ID="r1" runat="server" ControlToValidate="txtIme" 
                                Display="None" ErrorMessage="Внеси корисничко име!" ForeColor="Red"></asp:RequiredFieldValidator>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell>
                            Лозинка:</asp:TableCell>
                        <asp:TableCell>
                            <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
                        </asp:TableCell>
                        <asp:TableCell>
                            <asp:RequiredFieldValidator ID="r2" runat="server" 
                                ControlToValidate="txtPassword" Display="None" ErrorMessage="Внеси лозинка!" ForeColor="Red"></asp:RequiredFieldValidator>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell>
                            &nbsp;</asp:TableCell>
                        <asp:TableCell>
                            <asp:Button ID="btnLogin" DefaultButton="cmdSubmit" runat="server" Text="Логирај се" EnableTheming="True" 
                                onclick="btnLogin_Click" />
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow><asp:TableCell ColumnSpan="3"><asp:Label ID="lbl" runat="server" ForeColor="Red"></asp:Label></asp:TableCell></asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell ColumnSpan="2">
                            <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
                        </asp:TableCell>
                    </asp:TableRow>
                </asp:Table></asp:TableCell></asp:TableRow>
              </asp:Table>
          </div><!-- cB -->
		<div class="Cpad">
			<br class="clear" /><div class="Cbottomleft"></div><div class="Cbottom"></div><div class="Cbottomright"></div>
		</div><!-- Cpad -->
    </div>
</asp:Content>