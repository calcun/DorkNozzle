<%@ Page Title="" Language="C#" MasterPageFile="~/Dorknozzle.Master" AutoEventWireup="true" CodeBehind="HelpDesk.aspx.cs" Inherits="DorkNozzle.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>



<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <h1>Employee Help Desk Request</h1>

    <asp:Label ID ="dbErrorMessage" ForeColor ="Red" runat ="server" />

   <p>Station Number:<br /> 
   <asp:TextBox id="stationTextBox" runat ="server" CssClass="textbox" OnTextChanged="stationTextBox_TextChanged" />
   </p>

       <asp:RequiredFieldValidator id ="stationNumReq" runat ="server" 
       ControlToValidate ="stationTextBox" 
       ErrorMessage ="<br />You must enter a station number!"
       Display ="Dynamic" />
       <asp:CompareValidator id ="stationNumCheck" runat ="server" 
        ControlToValidate ="stationTextBox" Operator ="DataTypeCheck" Type ="Integer" 
        ErrorMessage ="<br />The value must be a number!" Display ="Dynamic" />
       <asp:RangeValidator id ="stationNumRangeCheck" runat ="server" 
      ControlToValidate="stationTextBox" MinimumValue="1" MaximumValue="50" Type ="Integer" 
      ErrorMessage ="<br /> Number must be between 1 and 50." 
      Display ="Dynamic" />


   <p>
   Problem Category:<br /> 
   <asp:DropDownList id="categoryList" runat="server" CssClass="dropdownmenu" OnSelectedIndexChanged="categoryList_SelectedIndexChanged" />
   </p>
   <p>Problem Subject:<br/>
   <asp:DropDownList id="subjectList" runat ="server" CssClass="dropdownmenu" OnSelectedIndexChanged="subjectList_SelectedIndexChanged" />
   </p>
   <p>Problem Description:<br />
   <asp:TextBox id="descriptionTextBox" runat="server" CssClass="textbox" 
        Columns="40" Rows ="4" TextMode="MultiLine" OnTextChanged="descriptionTextBox_TextChanged" />

   <asp:RequiredFieldValidator id ="descriptionReq" runat ="server" 
   ControlToValidate ="descriptionTextBox" 
   ErrorMessage ="<br />You must enter a description!" Display ="Dynamic" />


   </p>
   <p>
   <asp:Button id="submitButton" runat="server" CssClass="button" 
        Text="Submit Request" onclick="submitButton_Click" />
   </p>



</asp:Content>
