<%@ Page Title="" Language="C#" MasterPageFile="~/CCI.Master" AutoEventWireup="true" CodeBehind="ListViewDetails.aspx.cs" Inherits="CCI_Test.ListViewDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="contentPlace" runat="server">

    <asp:ListView ID="lvCreditorDetails" runat="server" ItemPlaceholderID="itemPlaceholder"> 
        <LayoutTemplate>
            <div id="details-wrapper">
                <asp:PlaceHolder ID="itemPlaceholder" runat="server" />
            </div>
        </LayoutTemplate>
        <ItemTemplate>
            <div id="details-section-header">
                <h3>Creditor Id: <asp:Label ID="Label1" runat="server" Text='<%# Eval("CreditorId") %>' /></h3>
                <div class="two-col-left">
                    <strong>Creditor Name</strong>: <asp:Label ID="_NameLabel" runat="server" Text='<%# Eval("CreditorName") %>' /><br />
                    <strong>EFX Code</strong>: <asp:Label ID="_EFXCodeLabel" runat="server" Text='<%# Eval("EFXCode") %>' /><br />
                    <strong>XPN Code</strong>: <asp:Label ID="_XPNCodeLabel" runat="server" Text='<%# Eval("XPNCode") %>' /><br />
                    <strong>TUC Code</strong>: <asp:Label ID="_TUCCodeLabel" runat="server" Text='<%# Eval("TUCCode") %>' /><br />
                    <strong>Category</strong>: <asp:Label ID="_CategoryLabel" runat="server" Text='<%# Eval("CategoryName") %>' /><br />
                    <strong>SubCategory</strong>: <asp:Label ID="_SubCategoryLabel" runat="server" Text='<%# Eval("SubCategoryName") %>' /><br />
                    <strong>MOP</strong>: <asp:Label ID="_MOPLabel" runat="server" Text='<%# Eval("MOP") %>' />
                </div>
                <div class="two-col-right">
                    <strong><br /></strong>
                    <strong>Creditor AKA</strong>: <asp:Label ID="_AKALabel" runat="server" Text='<%# Eval("AKA") %>' /><br />
                    <strong>Department</strong>: <asp:Label ID="_DepartmentLabel" runat="server" Text='<%# Eval("Department") %>' /><br />
                    <strong>City</strong>: <asp:Label ID="_CityLabel" runat="server" Text='<%# Eval("City") %>' /><br />
                    <strong>State</strong>: <asp:Label ID="_StateLabel" runat="server" Text='<%# Eval("State") %>' /><br />
                    <strong>Default Contact Method</strong>: <asp:Label ID="_DefaultContactMethodLabel" runat="server" Text='<%# Eval("DefaultContactMethodName") %>' /><br />
                    <strong>Active</strong>: <asp:Checkbox ID="_IsActiveCheckbox" runat="server" Checked='<%# Eval("IsActive") %>' Enabled="false" />
                </div>
            </div>
            <div id="details-section-contact-methods">
                <h3>Contact Methods</h3>
                <div class="two-col-left">
                    <strong>Automated</strong>: <%# String.Format("{0:(###) ###-####}",Convert.ToInt64(DataBinder.Eval(Container.DataItem, "AutomatedPhone")))%><br />
                    <strong>Main Phone</strong>: <%# String.Format("{0:(###) ###-####}",Convert.ToInt64(DataBinder.Eval(Container.DataItem, "MainPhone")))%><br />
                    <strong>Phone 1</strong>: <%# String.Format("{0:(###) ###-####}",Convert.ToInt64(DataBinder.Eval(Container.DataItem, "Phone1")))%><br />
                    <strong>Phone 2</strong>: <%# String.Format("{0:(###) ###-####}",Convert.ToInt64(DataBinder.Eval(Container.DataItem, "Phone2")))%><br />
                    <strong>Phone 3</strong>: <%# String.Format("{0:(###) ###-####}",Convert.ToInt64(DataBinder.Eval(Container.DataItem, "Phone3")))%><br />
                    <strong>Fax 1</strong>: <%# String.Format("{0:(###) ###-####}",Convert.ToInt64(DataBinder.Eval(Container.DataItem, "Fax1")))%><br />
                    <strong>Fax 2</strong>: <%# String.Format("{0:(###) ###-####}",Convert.ToInt64(DataBinder.Eval(Container.DataItem, "Fax2")))%><br />
                    <strong>Web Page</strong>: <asp:Label ID="_WebPageLabel" runat="server" Text='<%# Eval("WebPage") %>' />
                </div>
                <div class="two-col-right">
                    <strong>Auth Required</strong>: <asp:Checkbox ID="_AuthRequiredCheckbox" runat="server" Checked='<%# Eval("AuthRequired") %>' Enabled="false" /><br />
                    <strong>Extension</strong>: <asp:Label ID="_MainPhoneExtensionLabel" runat="server" Text='<%# Eval("MainPhoneExt") %>' /><br />
                    <strong>Phone 1 Extension</strong>: <asp:Label ID="_Phone1ExtensionLabel" runat="server" Text='<%# Eval("Phone1Ext") %>' /><br />
                    <strong>Phone 2 Extension</strong>: <asp:Label ID="_Phone2ExtensionLabel" runat="server" Text='<%# Eval("Phone2Ext") %>' /><br />
                    <strong>Phone 3 Extension</strong>: <asp:Label ID="_Phone3ExtensionLabel" runat="server" Text='<%# Eval("Phone3Ext") %>' /><br />
                    <strong>Turn Time 1</strong>: <asp:Label ID="_TurnTime1Label" runat="server" Text='<%# Eval("TurnTime1") %>' /><br />
                    <strong>Turn Time 2</strong>: <asp:Label ID="_TurnTime2Label" runat="server" Text='<%# Eval("TurnTime2") %>' /><br />
                    <strong>Email Address</strong>: <asp:Label ID="_EmailLabel" runat="server" Text='<%# Eval("EmailAddress") %>' />
                </div>
            </div>
            <div id="details-section-mailing-address">
                <h3>Mailing Address</h3>
                    <strong>Address Line 1</strong>: <asp:Label ID="_AddressLine1Label" runat="server" Text='<%# Eval("MailingAddressLine1") %>' /><br />
                    <strong>Address Line 2</strong>: <asp:Label ID="_AddressLine2Label" runat="server" Text='<%# Eval("MailingAddressLine2") %>' /><br />
                    <strong>City</strong>: <asp:Label ID="_MailingCityLabel" runat="server" Text='<%# Eval("MailingCity") %>' /><br />
                    <strong>State</strong>: <asp:Label ID="_MailingStateLabel" runat="server" Text='<%# Eval("MailingState") %>' /><br />
                    <strong>ZIP Code</strong>: <asp:Label ID="_MailingZIPLabel" runat="server" Text='<%# Eval("MailingZIP") %>' />
            </div>
            <div id="details-section-fees">
                <h3>Fees</h3>
                <div class="two-col-left">
                    <strong>Fee</strong>: <asp:Label ID="_FeeLabel" runat="server" Text='<%# Eval("Fee") %>' />
                </div>
                <div class="two-col-right">
                    <strong>Fee Notes</strong>: <asp:Label ID="_FeeNotesLabel" runat="server" Text='<%# Eval("FeeNotes") %>' />
                </div>
            </div>
            <div id="details-section-tips-and-tricks">
                <h3>Tips and Tricks</h3>
                    <strong>Creditor Notes</strong>: <asp:TextBox ID="_CreditorNotesTextBox" runat="server" Text='<%# Eval("Notes") %>' 
                                                        ReadOnly="True" Width="538" /><br />
                    <strong>STP Script for Client</strong>: <asp:TextBox ID="TextBox1" runat="server" Text='<%# Eval("STPScript") %>' 
                                                        ReadOnly="True" Width="501" /><br />
                    <strong>Tips and Tricks</strong>: <asp:TextBox ID="TextBox2" runat="server" Text='<%# Eval("TipsAndTricks") %>' 
                                                        ReadOnly="True" Width="532" /><br />
                    <strong>Verbal Script for Client</strong>: <asp:TextBox ID="TextBox3" runat="server" Text='<%# Eval("VerbalScript") %>' 
                                                        ReadOnly="True" Width="484" /><br />
            </div>
            <div id="details-section-hours">
                <h3>Hours</h3>
                    <strong>Monday</strong>: <asp:Label ID="Label2" runat="server" Text='<%# Eval("MonStart") %>' /> - <asp:Label ID="Label7" runat="server" Text='<%# Eval("MonClose") %>' /><br />
                    <strong>Tuesday</strong>: <asp:Label ID="Label3" runat="server" Text='<%# Eval("TueStart") %>' /> - <asp:Label ID="Label4" runat="server" Text='<%# Eval("TueClose") %>' /><br />
                    <strong>Wednesday</strong>: <asp:Label ID="Label5" runat="server" Text='<%# Eval("WedStart") %>' /> - <asp:Label ID="Label6" runat="server" Text='<%# Eval("WedClose") %>' /><br />
                    <strong>Thursday</strong>: <asp:Label ID="Label8" runat="server" Text='<%# Eval("ThuStart") %>' /> - <asp:Label ID="Label9" runat="server" Text='<%# Eval("ThuClose") %>' /><br />
                    <strong>Friday</strong>: <asp:Label ID="Label10" runat="server" Text='<%# Eval("FriStart") %>' /> - <asp:Label ID="Label11" runat="server" Text='<%# Eval("FriClose") %>' /><br />
                    <strong>Saturday</strong>: <asp:Label ID="Label12" runat="server" Text='<%# Eval("SatStart") %>' /> - <asp:Label ID="Label13" runat="server" Text='<%# Eval("SatClose") %>' /><br />
                    <strong>Sunday</strong>: <asp:Label ID="Label14" runat="server" Text='<%# Eval("SunStart") %>' /> - <asp:Label ID="Label15" runat="server" Text='<%# Eval("SunClose") %>' /><br />
            </div>
            <br />
            <asp:Button CommandName="Edit" Text="Edit Creditor" runat="server" />
        </ItemTemplate>
        <EditItemTemplate>
            <div id="details-section-header">
                <div class="two-col-left">
                    <strong>Creditor Id</strong>: <asp:Label ID="_IdLabel" runat="server" Text='<%# Eval("CreditorId") %>' /><br />
                    <strong>Creditor Name</strong>: <asp:Label ID="_NameLabel" runat="server" Text='<%# Eval("CreditorName") %>' /><br />
                    <strong>EFX Code</strong>: <asp:Label ID="_EFXCodeLabel" runat="server" Text='<%# Eval("EFXCode") %>' /><br />
                    <strong>XPN Code</strong>: <asp:Label ID="_XPNCodeLabel" runat="server" Text='<%# Eval("XPNCode") %>' /><br />
                    <strong>TUC Code</strong>: <asp:Label ID="_TUCCodeLabel" runat="server" Text='<%# Eval("TUCCode") %>' /><br />
                    <strong>Category</strong>: <asp:Label ID="_CategoryLabel" runat="server" Text='<%# Eval("CategoryName") %>' /><br />
                    <strong>SubCategory</strong>: <asp:Label ID="_SubCategoryLabel" runat="server" Text='<%# Eval("SubCategoryName") %>' /><br />
                    <strong>MOP</strong>: <asp:Label ID="_MOPLabel" runat="server" Text='<%# Eval("MOP") %>' /><br />
                </div>
                <div class="two-col-right">
                    <strong><br /></strong>
                    <strong>Creditor AKA</strong>: <asp:Label ID="_AKALabel" runat="server" Text='<%# Eval("AKA") %>' /><br />
                    <strong>Department</strong>: <asp:Label ID="_DepartmentLabel" runat="server" Text='<%# Eval("Department") %>' /><br />
                    <strong>City</strong>: <asp:Label ID="_CityLabel" runat="server" Text='<%# Eval("City") %>' /><br />
                    <strong>State</strong>: <asp:Label ID="_StateLabel" runat="server" Text='<%# Eval("State") %>' /><br />
                    <strong>Default Contact Method</strong>: <asp:Label ID="_DefaultContactMethodLabel" runat="server" Text='<%# Eval("DefaultContactMethodName") %>' /><br />
                    <strong>Active</strong>: <asp:Checkbox ID="_IsActiveCheckbox" runat="server" Checked='<%# Eval("IsActive") %>' Enabled="false" /><br />
                </div>
            </div>
        </EditItemTemplate>

    </asp:ListView>

</asp:Content>
