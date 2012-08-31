<%@ Page Title="" Language="C#" MasterPageFile="~/CCI.Master" AutoEventWireup="true" CodeBehind="CreditorDetailsOld.aspx.cs" Inherits="CCI_Test.CreditorDetailsOld" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="contentPlace" runat="server">
    <div class="one-col-details">
        <asp:FormView ID="FormView1" runat="server" DataKeyNames="CreditorId" >
            <EditItemTemplate>
                Id:
                <asp:Label ID="CreditorIdLabel1" runat="server" Text='<%# Eval("CreditorId") %>' />
                <br />
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
                Id:
                <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("CreditorId") %>' />
                <br />
                Type:
                <asp:Label ID="TypeLabel" runat="server" Text='<%# Bind("TypeName") %>' />
                <br />
                Version:
                <asp:Label ID="VersionLabel" runat="server" Text='<%# Bind("Version") %>' />
                <br />
                Name:
                <asp:Label ID="NameLabel" runat="server" Text='<%# Bind("CreditorName") %>' />
                <br />
                AKA:
                <asp:Label ID="AKALabel" runat="server" Text='<%# Bind("AKA") %>' />
                <br />
                EFXCode:
                <asp:Label ID="EFXCodeLabel" runat="server" Text='<%# Bind("EFXCode") %>' />
                <br />
                XPNCode:
                <asp:Label ID="XPNCodeLabel" runat="server" Text='<%# Bind("XPNCode") %>' />
                <br />
                TUCCode:
                <asp:Label ID="TUCCodeLabel" runat="server" Text='<%# Bind("TUCCode") %>' />
                <br />
                Category:
                <asp:Label ID="CategoryLabel" runat="server" 
                    Text='<%# Bind("CategoryName") %>' />
                <br />
                SubCategory:
                <asp:Label ID="SubCategoryLabel" runat="server" 
                    Text='<%# Bind("SubCategoryName") %>' />
                <br />
                MOP:
                <asp:Label ID="MOPLabel" runat="server" Text='<%# Bind("MOP") %>' />
                <br />
                City:
                <asp:Label ID="CityLabel" runat="server" Text='<%# Bind("City") %>' />
                <br />
                State:
                <asp:Label ID="StateLabel" runat="server" Text='<%# Bind("State") %>' />
                <br />
                Department:
                <asp:Label ID="DepartmentLabel" runat="server" 
                    Text='<%# Bind("Department") %>' />
                <br />
                DefaultContactMethod:
                <asp:Label ID="DefaultContactMethodNameLabel" runat="server" 
                    Text='<%# Bind("DefaultContactMethodName") %>' />
                <br />
                IsActive:
                <asp:CheckBox ID="IsActiveCheckBox" runat="server" 
                    Checked='<%# Bind("IsActive") %>' Enabled="false" />
                <br />
                WebPage:
                <asp:Label ID="WebPageLabel" runat="server" Text='<%# Bind("WebPage") %>' />
                <br />
                EmailAddress:
                <asp:Label ID="EmailAddressLabel" runat="server" 
                    Text='<%# Bind("EmailAddress") %>' />
                <br />
                Fee:
                <asp:Label ID="FeeLabel" runat="server" Text='<%# Bind("Fee") %>' />
                <br />
                FeeNotes:
                <asp:Label ID="FeeNotesLabel" runat="server" Text='<%# Bind("FeeNotes") %>' />
                <br />
                MailingAddressLine1:
                <asp:Label ID="MailingAddressLine1Label" runat="server" 
                    Text='<%# Bind("MailingAddressLine1") %>' />
                <br />
                MailingAddressLine2:
                <asp:Label ID="MailingAddressLine2Label" runat="server" 
                    Text='<%# Bind("MailingAddressLine2") %>' />
                <br />
                MailingCity:
                <asp:Label ID="MailingCityLabel" runat="server" 
                    Text='<%# Bind("MailingCity") %>' />
                <br />
                MailingState:
                <asp:Label ID="MailingStateLabel" runat="server" 
                    Text='<%# Bind("MailingState") %>' />
                <br />
                MailingZIP:
                <asp:Label ID="MailingZIPLabel" runat="server" 
                    Text='<%# Bind("MailingZIP") %>' />
                <br />
                Notes:
                <asp:Label ID="NotesLabel" runat="server" Text='<%# Bind("Notes") %>' />
                <br />
                TipsAndTricks:
                <asp:Label ID="TipsAndTricksLabel" runat="server" 
                    Text='<%# Bind("TipsAndTricks") %>' />
                <br />
                STPScript:
                <asp:Label ID="STPScriptLabel" runat="server" Text='<%# Bind("STPScript") %>' />
                <br />
                VerbalScript:
                <asp:Label ID="VerbalScriptLabel" runat="server" 
                    Text='<%# Bind("VerbalScript") %>' />
                <br />
                CreateTS:
                <asp:Label ID="CreateTSLabel" runat="server" Text='<%# Bind("CreateTS") %>' />
                <br />
                LastModifiedTS:
                <asp:Label ID="LastModifiedTSLabel" runat="server" 
                    Text='<%# Bind("LastModifiedTS") %>' />
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
