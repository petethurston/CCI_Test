<%@ Page Title="" Language="C#" MasterPageFile="~/CCI.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="CCI_Test.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="contentPlace" runat="server">
    <div id="search-section">
        <h3>Search</h3>
        <div class="three-col-left" style="text-align: right;">
            Type: <asp:DropDownList ID="ddlType" runat="server">
                <asp:ListItem Text="All" Value = "0" />
                <asp:ListItem Text="Creditor Contact" Value="1" />
                <asp:ListItem Text="Bureau Contact" Value="2" />
            </asp:DropDownList>&nbsp;&nbsp;&nbsp;&nbsp;
        </div><!-- /three-col-left-->
        <div class="three-col-center">
            Subscriber Code: <asp:TextBox ID="txtSearchItem1" runat="server"></asp:TextBox>
        </div><!-- /three-col-center-->
        <div class="three-col-right">
            Creditor Name: <asp:TextBox ID="txtSearchItem2" runat="server"></asp:TextBox>
        </div><!-- /three-col-center-->
        <div style="text-align: center; margin-top: 60px;">
            <asp:Button ID="btnSearch" runat="server" Text="Search" 
                onclick="btnSearch_Click" />
            <asp:Button ID="btnNewRecord" runat="server" Text="Create New Record" />
            <br />
        </div>
    </div><!-- /search-section-->

    <div id="results-section">
        <h3>Results Section</h3>
        <asp:GridView ID="GridView1" runat="server" BackColor="White" 
            BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" 
            ForeColor="Black" GridLines="Vertical" 
            AutoGenerateColumns="False" Width="880px"
            OnPageIndexChanging="GridView1_PageIndexChanging" OnSorting="GridView1_Sorting"
            OnSelectedIndexChanged="GridView1_SelectedIndexChanged" DataKeyNames="Id"
            AllowPaging="true" PageSize="50"
            AllowSorting="true">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:CommandField ShowSelectButton="true" />
                <asp:BoundField DataField="Type" HeaderText="Type" 
                    SortExpression="Type" />
                <asp:BoundField DataField="Version" HeaderText="Version" 
                    SortExpression="Version" />
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                <asp:BoundField DataField="EFXCode" HeaderText="EFX Code" SortExpression="EFXCode" />
                <asp:BoundField DataField="XPNCode" HeaderText="EFX Code" SortExpression="XPNCode" />
                <asp:BoundField DataField="TUCCode" HeaderText="TUC Code" SortExpression="TUCCode" />
                <asp:BoundField DataField="CreateTS" HeaderText="Created" 
                    SortExpression="CreateTS" />
            </Columns>
            <FooterStyle BackColor="#CCCC99" />
            <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" HorizontalAlign="Left" />
            <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
            <RowStyle BackColor="#F7F7DE" />
            <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#FBFBF2" />
            <SortedAscendingHeaderStyle BackColor="#848384" />
            <SortedDescendingCellStyle BackColor="#EAEAD3" />
            <SortedDescendingHeaderStyle BackColor="#575357" />
        </asp:GridView>
    
    
    </div><!-- /results-section -->
    

</asp:Content>

