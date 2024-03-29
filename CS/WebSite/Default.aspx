﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<%@ Register Assembly="DevExpress.Web.v13.1" Namespace="DevExpress.Web"
    TagPrefix="dx" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <dx:ASPxFileManager ID="ASPxFileManager2" runat="server" DataSourceID="AccessDataSource1">
            <settings thumbnailfolder="~\Thumb\" />
            <settingsdatasource keyfieldname="Id" parentkeyfieldname="ParentId" namefieldname="Name"
                isfolderfieldname="IsFolder" filebinarycontentfieldname="Data" lastwritetimefieldname="LastWriteTime" />
            <settingsdatasource />
            <settingsediting allowcreate="True" allowdelete="True" allowmove="True" allowrename="True" />
            <settingsupload enabled="True"></settingsupload>
        </dx:ASPxFileManager>
        <asp:AccessDataSource ID="AccessDataSource1" runat="server" DataFile="~/App_Data/FmExampleDb.mdb" 
            OnDeleting="AccessDataSource1_Modifying"
            OnInserting="AccessDataSource1_Modifying"
            OnUpdating="AccessDataSource1_Modifying"
            DeleteCommand="DELETE FROM [FileSystem] WHERE [Id] = ?" 
            InsertCommand="INSERT INTO [FileSystem] ([Name], [IsFolder], [ParentId], [Data], [LastWriteTime]) VALUES (?, ?, ?, ?, ?)" 
            SelectCommand="SELECT * FROM [FileSystem]" 
            UpdateCommand="UPDATE [FileSystem] SET [Name] = ?, [IsFolder] = ?, [ParentId] = ?, [Data] = ?, [LastWriteTime] = ? WHERE [Id] = ?">
            <DeleteParameters>
                <asp:Parameter Name="Id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Name" Type="String" />
                <asp:Parameter Name="IsFolder" Type="Boolean" />
                <asp:Parameter Name="ParentId" Type="Int32" />
                <asp:Parameter Name="Data" DbType="Object" />
                <asp:Parameter Name="LastWriteTime" Type="DateTime" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Name" Type="String" />
                <asp:Parameter Name="IsFolder" Type="Boolean" />
                <asp:Parameter Name="ParentId" Type="Int32" />
                <asp:Parameter Name="Data" DbType="Object" />
                <asp:Parameter Name="LastWriteTime" Type="DateTime" />
                <asp:Parameter Name="Id" Type="Int32" />
            </UpdateParameters>
        </asp:AccessDataSource>
    </form>
</body>
</html>
