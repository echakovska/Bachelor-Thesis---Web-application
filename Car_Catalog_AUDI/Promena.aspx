<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Promena.aspx.cs" Inherits="promena_gridview" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder" Runat="Server">
    <div id="content">
		<div id="cB">
            <table>
        <tr>
            <td><asp:Table ID="Table1" runat="server" Width="620">
            <asp:TableRow>
                <asp:TableCell>
                    <asp:FileUpload ID="FileUpload2" runat="server" />
                    <asp:Button runat="server" ID="btnUpload2" Text="Прикачи" onclick="btnUpload2_Click" /><br />
                    <asp:Label ID="lblPoraka" runat="server" Text=""></asp:Label>
                    </asp:TableCell>
                <asp:TableCell align="right">
                    <asp:Button ID="btnVnesi" runat="server" onclick="btnVnesi_Click" 
                    Text="Внеси нов производ" /><br />
                </asp:TableCell>
            </asp:TableRow>
             </asp:Table></td>
         </tr>
        <tr>
            <td colspan="3" align="center">
                  <asp:Table width="600px" runat="server" CellSpacing="10" CellPadding="5" 
                    ID="tb1" Font-Size="XX-Small">
                        <asp:TableRow>
                            <asp:TableCell width="600px" ColumnSpan="2" align="left">
                                <asp:DropDownList ID="ddlSerija1" runat="server" 
                    onselectedindexchanged="ddlSerija1_SelectedIndexChanged" AutoPostBack="true" width="225px"></asp:DropDownList>
                            </asp:TableCell>
                        </asp:TableRow>
                        </asp:Table>
                              <asp:GridView ID="grid1" Width="600px" runat="server" AutoGenerateColumns="False" style="text-align: center"
                                     CellPadding="4" DataKeyNames="id_model" ForeColor="#333333" GridLines="None" AllowPaging="True"
                                     Font-Size="Small" OnSelectedIndexChanged="grid1_SelectedIndexChanged" onpageindexchanging="grid1_PageIndexChanging">
                                     <RowStyle BackColor="#E3EAEB" />
                                     <Columns>
                                     <asp:ButtonField CommandName="select" DataTextField="id_model" ControlStyle-Font-Underline="true" 
                                        HeaderText="ID" Text="Button"></asp:ButtonField>
                                         <asp:BoundField DataField="motor_zafatnina" HeaderText="Зафатнина" />
                                         <asp:BoundField DataField="motor_moknost" HeaderText="Моќност" />
                                         <asp:BoundField DataField="motor_gorivo" HeaderText="Гориво" ReadOnly="True" />
                                         <asp:BoundField DataField="max_brzina" HeaderText="Максимална брзина" ReadOnly="True" />
                                         <asp:BoundField DataField="potrosuvacka" HeaderText="Потрошувачка  " ReadOnly="True" />
                                     </Columns>
                                     <FooterStyle BackColor="#1c4851" Font-Bold="True" ForeColor="White" />
                                     <PagerStyle BackColor="#1c4851" ForeColor="White" HorizontalAlign="Center" />
                                     <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                                     <HeaderStyle BackColor="#1c4851" Font-Bold="True" ForeColor="White" />
                                     <EditRowStyle BackColor="#7C6F57" />
                                     <AlternatingRowStyle BackColor="White" />
                                        <SortedAscendingCellStyle BackColor="#F8FAFA" />
                                        <SortedAscendingHeaderStyle BackColor="#246B61" />
                                        <SortedDescendingCellStyle BackColor="#D4DFE1" />
                                        <SortedDescendingHeaderStyle BackColor="#15524A" />
                                 </asp:GridView><br /><br /><br />
                                 <asp:Image ID="img111" runat="server" Width="600px" Visible="false" /><br /><br /><br />
                                 <asp:DetailsView ID="dtl1" Visible="False" runat="server" Width="600px" AutoGenerateRows="False" FieldHeaderStyle-Width="200px"
                                    CellPadding="3" Font-Size="Small" style="text-align: center" 
                                    AlternatingRowStyle-BackColor="#C5BBAF" BackColor="#1c4851" ForeColor="Black">
                                        <Fields>
                                            <asp:HyperLinkField HeaderText="Кликни врз моделот означен со црвена боја за промена!" HeaderStyle-Font-Bold="true" HeaderStyle-ForeColor="Black"
                                             DataTextField="id_model" ControlStyle-Font-Underline="true" ControlStyle-ForeColor="Red" NavigateUrl="~/Vnesi.aspx" />
                                            <asp:BoundField DataField="serija" HeaderText="Серија" ReadOnly="True" />
                                            <asp:BoundField DataField="motor_zafatnina" HeaderText="Зафатнина ccm" ReadOnly="True" />
                                            <asp:BoundField DataField="motor_moknost" HeaderText="Најголема моќност, kW (КС) при 1/min" ReadOnly="True" />
                                            <asp:BoundField DataField="motor_vrtezen_moment" HeaderText="Најголем вртежен момент, Nm при 1/min" ReadOnly="True" />
                                            <asp:BoundField DataField="motor_gorivo" HeaderText="Вид на гориво" ReadOnly="True" />
                                            <asp:BoundField DataField="pogon_na_trkala" HeaderText="Погон на тркала" ReadOnly="True" />
                                            <asp:BoundField DataField="menuvac" HeaderText="Пренос" ReadOnly="True" />
                                            <asp:BoundField DataField="oprema_bandazi" HeaderText="Тркала" ReadOnly="True" />
                                            <asp:BoundField DataField="oprema_gumi" HeaderText="Гуми" ReadOnly="True" />
                                            <asp:BoundField DataField="oprema_sopiranje" HeaderText="Систем за сопирање" ReadOnly="True" />
                                            <asp:BoundField DataField="tezina_bez_tovar" HeaderText="Тежина без товар во kg" ReadOnly="True" />
                                            <asp:BoundField DataField="tezina_max" HeaderText="Максимално дозволена носивост" ReadOnly="True" />
                                            <asp:BoundField DataField="zafatnina_bagaznik" HeaderText="Зафатнина на багажникот во l" ReadOnly="True" />
                                            <asp:BoundField DataField="rezervoar" HeaderText="Количина на резервоар во литри (приближна вредност)" ReadOnly="True" />
                                            <asp:BoundField DataField="zabrzuvanje" HeaderText="Забрзување 0-100 km/h во s" ReadOnly="True" />
                                            <asp:BoundField DataField="max_brzina" HeaderText="Макс. брзина во km/h" ReadOnly="True" />
                                            <asp:BoundField DataField="potrosuvacka" HeaderText="Потрошувачка на гориво (град/отворено/просек)" ReadOnly="True" />
                                            <asp:BoundField DataField="dimenzii_d_s_v" HeaderText="Димензии во mm (должина/ширина/висина)" ReadOnly="True" />
                                            <asp:BoundField DataField="osnova_trkala" HeaderText="Основа на тркалата во mm" ReadOnly="True" />
                                        </Fields>
                                        <RowStyle Height="30px"></RowStyle>
                                 </asp:DetailsView>
            </td>
        </tr>
    </table>
        </div><!-- cB -->
		<div class="Cpad">
			<br class="clear" /><div class="Cbottomleft"></div><div class="Cbottom"></div><div class="Cbottomright"></div>
		</div><!-- Cpad -->
    </div>
</asp:Content>