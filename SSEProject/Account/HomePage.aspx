﻿<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="HomePage.aspx.cs" Inherits="SSEProject.Account.HomePage" %>
       <asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:GridView runat="server" ID="itemsGrid" AutoGenerateColumns="False" Width="1041px" Height="350px" HorizontalAlign="Center" AllowSorting="True" AutoGenerateDeleteButton="True" AutoGenerateEditButton="True" AutoGenerateSelectButton="True" OnSelectedIndexChanged="itemsGrid_SelectedIndexChanged">
        <rowstyle backcolor="LightCyan"  
           forecolor="DarkBlue"
           font-italic="true"/>

        <alternatingrowstyle backcolor="PaleTurquoise"  
          forecolor="DarkBlue"
          font-italic="true"/>
        <Columns>
            <asp:CheckBoxField HeaderText="Select">
            <ControlStyle BorderStyle="Solid" Height="40px" Width="40px" />
            <ItemStyle BorderStyle="Solid" />
            </asp:CheckBoxField>
            <asp:DynamicField DataField="ID" />
            <asp:DynamicField DataField="Description" />
            <asp:DynamicField DataField="Time"> </asp:DynamicField>
            <asp:DynamicField DataField="Status" />           
            <asp:TemplateField HeaderText="Actions">
              <ItemTemplate>
                <asp:Image Width="20px" Height="20px" src="../Resources/Images/accept.png" runat="server" />
                <asp:Image Width="20px" Height="20px" src="../Resources/Images/reject.png" runat="server" />
                <asp:Image Width="20px" Height="20px"  src="../Resources/Images/forward_2.png" runat="server" />
              </ItemTemplate>
            </asp:TemplateField>        
            <asp:ButtonField  ButtonType="Image" ImageUrl="~/Resources/Images/delete_icon.png" Text="Button" >
            <ControlStyle Height="30px" Width="30px" />
            </asp:ButtonField>
            <asp:ButtonField ButtonType="Image" ImageUrl="~/Resources/Images/edit-button.png">
            <ControlStyle Height="60px" Width="60px" />
            </asp:ButtonField>
        </Columns>
    </asp:GridView>
</asp:Content>
        