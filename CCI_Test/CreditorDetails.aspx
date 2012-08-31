<%@ Page Title="" Language="C#" MasterPageFile="~/CCI.Master" AutoEventWireup="true" CodeBehind="CreditorDetails.aspx.cs" Inherits="CCI_Test.CreditorDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="contentPlace" runat="server">
    <div id="details-wrapper">
        <asp:FormView ID="FormView1" runat="server" DataKeyNames="CreditorId" >
            <EditItemTemplate>
                <div id="details-section-header">
                <h3>Creditor Id: <asp:Label ID="Label1" runat="server" Text='<%# Eval("CreditorId") %>' /></h3>
                <div class="two-col-left">
                    <strong>Creditor Name</strong>: <asp:TextBox ID="_NameTextBox" runat="server" Text='<%# Bind("CreditorName") %>' /><br />
                    <strong>EFX Code</strong>: <asp:TextBox ID="_EFXCodeTextBox" runat="server" Text='<%# Eval("EFXCode") %>' /><br />
                    <strong>XPN Code</strong>: <asp:TextBox ID="_XPNCodeTextBox" runat="server" Text='<%# Eval("XPNCode") %>' /><br />
                    <strong>TUC Code</strong>: <asp:TextBox ID="_TUCCodeTextBox" runat="server" Text='<%# Eval("TUCCode") %>' /><br />
                    <strong>Category</strong>: <asp:TextBox ID="_CategoryTextBox" runat="server" Text='<%# Eval("CategoryName") %>' /><br />
                    <strong>SubCategory</strong>: <asp:TextBox ID="_SubCategoryTextBox" runat="server" Text='<%# Eval("SubCategoryName") %>' /><br />
                    <strong>MOP</strong>: <asp:TextBox ID="_MOPTextBox" runat="server" Text='<%# Eval("MOP") %>' />
                </div>
                <div class="two-col-right">
                    <strong>Creditor AKA</strong>: <asp:TextBox ID="_AKATextBox" runat="server" Text='<%# Eval("AKA") %>' /><br />
                    <strong>Department</strong>: <asp:TextBox ID="_DepartmentTextBox" runat="server" Text='<%# Eval("Department") %>' /><br />
                    <strong>City</strong>: <asp:TextBox ID="_CityTextBox" runat="server" Text='<%# Eval("City") %>' /><br />
                    <strong>State</strong>: <asp:TextBox ID="_StateTextBox" runat="server" Text='<%# Eval("State") %>' /><br />
                    <strong>Default Contact Method</strong>: <asp:TextBox ID="_DefaultContactMethodTextBox" runat="server" Text='<%# Eval("DefaultContactMethodName") %>' /><br />
                    <br />
                    <strong>Active</strong>: <asp:Checkbox ID="_IsActiveCheckbox" runat="server" Checked='<%# Eval("IsActive") %>' Enabled="true" />
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
                    <strong>Web Page</strong>: <asp:TextBox ID="_WebPageTextBox" runat="server" Text='<%# Eval("WebPage") %>' />
                </div>
                <div class="two-col-right">
                    <strong>Auth Required</strong>: <asp:Checkbox ID="_AuthRequiredCheckbox" runat="server" Checked='<%# Eval("AuthRequired") %>' Enabled="true" /><br />
                    <strong>Extension</strong>: <asp:TextBox ID="_MainPhoneExtensionTextBox" runat="server" Text='<%# Eval("MainPhoneExt") %>' /><br />
                    <strong>Phone 1 Extension</strong>: <asp:TextBox ID="_Phone1ExtensionTextBox" runat="server" Text='<%# Eval("Phone1Ext") %>' /><br />
                    <strong>Phone 2 Extension</strong>: <asp:TextBox ID="_Phone2ExtensionTextBox" runat="server" Text='<%# Eval("Phone2Ext") %>' /><br />
                    <strong>Phone 3 Extension</strong>: <asp:TextBox ID="_Phone3ExtensionTextBox" runat="server" Text='<%# Eval("Phone3Ext") %>' /><br />
                    <strong>Turn Time 1</strong>: <asp:TextBox ID="_TurnTime1TextBox" runat="server" Text='<%# Eval("TurnTime1") %>' /><br />
                    <strong>Turn Time 2</strong>: <asp:TextBox ID="_TurnTime2TextBox" runat="server" Text='<%# Eval("TurnTime2") %>' /><br />
                    <strong>Email Address</strong>: <asp:TextBox ID="_EmailTextBox" runat="server" Text='<%# Eval("EmailAddress") %>' />
                </div>
            </div>
            <div id="details-section-mailing-address">
                <h3>Mailing Address</h3>
                    <strong>Address Line 1</strong>: <asp:TextBox ID="_AddressLine1TextBox" runat="server" Text='<%# Eval("MailingAddressLine1") %>' /><br />
                    <strong>Address Line 2</strong>: <asp:TextBox ID="_AddressLine2TextBox" runat="server" Text='<%# Eval("MailingAddressLine2") %>' /><br />
                    <strong>City</strong>: <asp:TextBox ID="_MailingCityTextBox" runat="server" Text='<%# Eval("MailingCity") %>' /><br />
                    <strong>State</strong>: <asp:TextBox ID="_MailingStateTextBox" runat="server" Text='<%# Eval("MailingState") %>' /><br />
                    <strong>ZIP Code</strong>: <asp:TextBox ID="_MailingZIPTextBox" runat="server" Text='<%# Eval("MailingZIP") %>' />
            </div>
            <div id="details-section-fees">
                <h3>Fees</h3>
                <div class="two-col-left">
                    <strong>Fee</strong>: <asp:TextBox ID="_FeeTextBox" runat="server" Text='<%# Eval("Fee") %>' />
                </div>
                <div class="two-col-right">
                    <strong>Fee Notes</strong>: <asp:TextBox ID="_FeeNotesTextBox" runat="server" Text='<%# Eval("FeeNotes") %>' />
                </div>
            </div>
            <div id="details-section-tips-and-tricks">
                <h3>Tips and Tricks</h3>
                    <strong>Creditor Notes</strong>: <asp:TextBox ID="_CreditorNotesTextBox" runat="server" Text='<%# Eval("Notes") %>' 
                                                        ReadOnly="False" Width="538" /><br />
                    <strong>STP Script for Client</strong>: <asp:TextBox ID="TextBox1" runat="server" Text='<%# Eval("STPScript") %>' 
                                                        ReadOnly="False" Width="501" /><br />
                    <strong>Tips and Tricks</strong>: <asp:TextBox ID="TextBox2" runat="server" Text='<%# Eval("TipsAndTricks") %>' 
                                                        ReadOnly="False" Width="532" /><br />
                    <strong>Verbal Script for Client</strong>: <asp:TextBox ID="TextBox3" runat="server" Text='<%# Eval("VerbalScript") %>' 
                                                        ReadOnly="False" Width="484" /><br />
            </div>
            <div id="details-section-hours">
                <h3>Hours</h3>
                    <strong>Monday</strong>: <asp:TextBox ID="MonStartTextBox" runat="server" Text='<%# Eval("MonStart") %>' /> - <asp:TextBox ID="TextBox7" runat="server" Text='<%# Eval("MonClose") %>' /><br />
                    <strong>Tuesday</strong>: <asp:TextBox ID="TueStartTextBox" runat="server" Text='<%# Eval("TueStart") %>' /> - <asp:TextBox ID="TextBox4" runat="server" Text='<%# Eval("TueClose") %>' /><br />
                    <strong>Wednesday</strong>: <asp:TextBox ID="WedStartTextBox" runat="server" Text='<%# Eval("WedStart") %>' /> - <asp:TextBox ID="TextBox6" runat="server" Text='<%# Eval("WedClose") %>' /><br />
                    <strong>Thursday</strong>: <asp:TextBox ID="ThuStartTextBox" runat="server" Text='<%# Eval("ThuStart") %>' /> - <asp:TextBox ID="TextBox9" runat="server" Text='<%# Eval("ThuClose") %>' /><br />
                    <strong>Friday</strong>: <asp:TextBox ID="FriStartTextBox" runat="server" Text='<%# Eval("FriStart") %>' /> - <asp:TextBox ID="TextBox11" runat="server" Text='<%# Eval("FriClose") %>' /><br />
                    <strong>Saturday</strong>: <asp:TextBox ID="SatStartTextBox" runat="server" Text='<%# Eval("SatStart") %>' /> - <asp:TextBox ID="TextBox13" runat="server" Text='<%# Eval("SatClose") %>' /><br />
                    <strong>Sunday</strong>: <asp:TextBox ID="SunStartTextBox" runat="server" Text='<%# Eval("SunStart") %>' /> - <asp:TextBox ID="TextBox15" runat="server" Text='<%# Eval("SunClose") %>' /><br />
            </div>
            <br />
                <asp:Button ID="UpdateButton" runat="server" CausesValidation="True" 
                    CommandName="Update" Text="Update" />
                &nbsp;<asp:Button ID="UpdateCancelButton" runat="server" 
                    CausesValidation="False" OnClick="UpdateCancelButton_Click" Text="Cancel" />
            </EditItemTemplate>
            <InsertItemTemplate>
                TypeId:
                <asp:TextBox ID="TypeIdTextBox" runat="server" Text='<%# Bind("TypeId") %>' />
                <br />
                Version:
                <asp:TextBox ID="VersionTextBox" runat="server" Text='<%# Bind("Version") %>' />
                <br />
                Name:
                <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("CreditorName") %>' />
                <br />
                AKA:
                <asp:TextBox ID="AKATextBox" runat="server" Text='<%# Bind("AKA") %>' />
                <br />
                EFXCode:
                <asp:TextBox ID="EFXCodeTextBox" runat="server" Text='<%# Bind("EFXCode") %>' />
                <br />
                XPNCode:
                <asp:TextBox ID="XPNCodeTextBox" runat="server" Text='<%# Bind("XPNCode") %>' />
                <br />
                TUCCode:
                <asp:TextBox ID="TUCCodeTextBox" runat="server" Text='<%# Bind("TUCCode") %>' />
                <br />
                CategoryId:
                <asp:TextBox ID="CategoryIdTextBox" runat="server" 
                    Text='<%# Bind("CategoryId") %>' />
                <br />
                SubCategoryId:
                <asp:TextBox ID="SubCategoryIdTextBox" runat="server" 
                    Text='<%# Bind("SubCategoryId") %>' />
                <br />
                MOP:
                <asp:TextBox ID="MOPTextBox" runat="server" Text='<%# Bind("MOP") %>' />
                <br />
                City:
                <asp:TextBox ID="CityTextBox" runat="server" Text='<%# Bind("City") %>' />
                <br />
                State:
                <asp:TextBox ID="StateTextBox" runat="server" Text='<%# Bind("State") %>' />
                <br />
                Department:
                <asp:TextBox ID="DepartmentTextBox" runat="server" 
                    Text='<%# Bind("Department") %>' />
                <br />
                DefaultContactMethodId:
                <asp:TextBox ID="DefaultContactMethodIdTextBox" runat="server" 
                    Text='<%# Bind("DefaultContactMethodId") %>' />
                <br />
                IsActive:
                <asp:CheckBox ID="IsActiveCheckBox" runat="server" 
                    Checked='<%# Bind("IsActive") %>' />
                <br />
                WebPage:
                <asp:TextBox ID="WebPageTextBox" runat="server" Text='<%# Bind("WebPage") %>' />
                <br />
                EmailAddress:
                <asp:TextBox ID="EmailAddressTextBox" runat="server" 
                    Text='<%# Bind("EmailAddress") %>' />
                <br />
                Fee:
                <asp:TextBox ID="FeeTextBox" runat="server" Text='<%# Bind("Fee") %>' />
                <br />
                FeeNotes:
                <asp:TextBox ID="FeeNotesTextBox" runat="server" 
                    Text='<%# Bind("FeeNotes") %>' />
                <br />
                MailingAddressId:
                <asp:TextBox ID="MailingAddressIdTextBox" runat="server" 
                    Text='<%# Bind("MailingAddressId") %>' />
                <br />
                Notes:
                <asp:TextBox ID="NotesTextBox" runat="server" Text='<%# Bind("Notes") %>' />
                <br />
                TipsAndTricks:
                <asp:TextBox ID="TipsAndTricksTextBox" runat="server" 
                    Text='<%# Bind("TipsAndTricks") %>' />
                <br />
                STPScript:
                <asp:TextBox ID="STPScriptTextBox" runat="server" 
                    Text='<%# Bind("STPScript") %>' />
                <br />
                VerbalScript:
                <asp:TextBox ID="VerbalScriptTextBox" runat="server" 
                    Text='<%# Bind("VerbalScript") %>' />
                <br />
                CreateTS:
                <asp:TextBox ID="CreateTSTextBox" runat="server" 
                    Text='<%# Bind("CreateTS") %>' />
                <br />
                LastModifiedTS:
                <asp:TextBox ID="LastModifiedTSTextBox" runat="server" 
                    Text='<%# Bind("LastModifiedTS") %>' />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                    CommandName="Insert" Text="Insert" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                    CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </InsertItemTemplate>
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
                    <strong>Creditor AKA</strong>: <asp:Label ID="_AKALabel" runat="server" Text='<%# Eval("AKA") %>' /><br />
                    <strong>Department</strong>: <asp:Label ID="_DepartmentLabel" runat="server" Text='<%# Eval("Department") %>' /><br />
                    <strong>City</strong>: <asp:Label ID="_CityLabel" runat="server" Text='<%# Eval("City") %>' /><br />
                    <strong>State</strong>: <asp:Label ID="_StateLabel" runat="server" Text='<%# Eval("State") %>' /><br />
                    <strong>Default Contact Method</strong>: <asp:Label ID="_DefaultContactMethodLabel" runat="server" Text='<%# Eval("DefaultContactMethodName") %>' /><br />
                    <br />
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
                <asp:Button ID="EditButton" runat="server" CausesValidation="False" 
                    Text="Edit" OnClick="EditButton_Click" />
                &nbsp;<asp:Button ID="DeleteButton" runat="server" CausesValidation="False" 
                    CommandName="Delete" Text="Delete" />
                &nbsp;<asp:Button ID="NewButton" runat="server" CausesValidation="False" 
                    CommandName="New" Text="New" />
            </ItemTemplate>
        </asp:FormView>
    </div><!-- /one-col-details -->
</asp:Content>
