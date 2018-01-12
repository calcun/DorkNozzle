﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Dorknozzle.Master" AutoEventWireup="true" CodeBehind="EmployeeDirectory.aspx.cs" Inherits="DorkNozzle.WebForm3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<h1>Employee Directory</h1> 
<asp:Repeater id="employeesRepeater" runat="server">
   <ItemTemplate> 
      Employee ID: <strong><%#Eval("EmployeeID")%></strong><br />
      Name: <strong><%#Eval("Name")%></strong><br />
      Username: <strong><%#Eval("Username")%></strong>
   </ItemTemplate> 
    <SeparatorTemplate> 
    <hr /> 
    </SeparatorTemplate>  
</asp:Repeater>


</asp:Content>
