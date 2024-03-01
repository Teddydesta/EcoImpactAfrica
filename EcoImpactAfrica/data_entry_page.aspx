<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="data_entry_page.aspx.cs" Inherits="EcoImpactAfrica.data_entry_page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

   <section id="main-content">
<section class="wrapper">
<div class="row">
<div class="col-lg-12">
<section class="panel">
<header class="panel-heading">
<div class="col-md-4 col-md-offset-4">
<h1>Data Entry Page </h1>
</div>
</header>
<div class="panel-body">

    <div class="row">
<div class="col-md-4 col-md-offset-1">
<div class="form-group">
<asp:Label runat="server" AssociatedControlID="txtregion"><b>Vehicle Type</b></asp:Label><br />
<asp:DropDownList ID="txtregion" CssClass="form-control input-sm" runat="server" >
<asp:ListItem Text="select" />
<asp:ListItem Text="Car" />
<asp:ListItem Text="Bus" />
<asp:ListItem Text="Truck" />

</asp:DropDownList>
</div>
</div>
<%--<div class="col-md-4 col-md-offset-1">
<div class="form-group">
<asp:Label runat="server" AssociatedControlID="txtaddress"><b>Address</b></asp:Label><br />
<asp:TextBox runat="server" required="required" Enabled="True" name="BrandName" ID="txtaddress" class="form-control input-sm" placeholder=" Address "></asp:TextBox>
</div>
</div>--%>
</div>

    <div class="row">
<div class="col-md-4 col-md-offset-1">
<div class="form-group">
<asp:Label runat="server" AssociatedControlID="txtcell"><b>Distance Travelled</b></asp:Label><br />
<asp:TextBox runat="server" required="required" TextMode="Number" Enabled="True" name="BrandName" ID="txtcell" class="form-control input-sm" placeholder="Distance Travelled "></asp:TextBox>
</div>
</div>
<%--<div class="col-md-4 col-md-offset-1">
<div class="form-group">
<asp:Label runat="server" AssociatedControlID="txtgender" ><b>Gender</b></asp:Label><br />
<asp:RadioButtonList CssClass="form-group" ID="txtgender" runat="server">
<asp:ListItem Text="Male" />
<asp:ListItem Text="Female" />
</asp:RadioButtonList>
</div>
</div>--%>
</div>

        <div class="row">
<div class="col-md-4 col-md-offset-1">
<div class="form-group">
<asp:Label runat="server" AssociatedControlID="txtregion"><b>Fuel Type</b></asp:Label><br />
<asp:DropDownList ID="DropDownList1" CssClass="form-control input-sm" runat="server" >
<asp:ListItem Text="select" />
<asp:ListItem Text="Gasoline" />
<asp:ListItem Text="Diesel" />
<asp:ListItem Text="Petrol" />
    <asp:ListItem Text="Electric" />

</asp:DropDownList>
</div>
</div>
<%--<div class="col-md-4 col-md-offset-1">
<div class="form-group">
<asp:Label runat="server" AssociatedControlID="txtaddress"><b>Address</b></asp:Label><br />
<asp:TextBox runat="server" required="required" Enabled="True" name="BrandName" ID="TextBox1" class="form-control input-sm" placeholder=" Address "></asp:TextBox>
</div>
</div>--%>
</div>
   



    -<div class="row">
<div class="col-md-10 col-md-offset-1">
<div class="form-group">
<asp:Button Text="Submit" ID="btnsave" OnClick="btnsave_Click" CssClass="btn btn-primary btn-lg" Width="220px" runat="server" />
</div>
</div>
</div>



<%--<div class="row">
<div class="col-md-10 col-md-offset-1">
<div class="form-group">
<asp:Button Text="Save" ID="btnsave" OnClick="btnsave_Click" CssClass="btn btn-primary btn-lg" Width="220px" runat="server" />
<asp:Button Text="Update" ID="btnupdate" OnClick="btnupdate_Click" CssClass="btn btn-primary btn-lg" Width="220px" runat="server" />
<asp:Button Text="Delete" ID="btndlt" OnClick="btndlt_Click" CssClass="btn btn-danger btn-lg" Width="220px" runat="server" />
<asp:Label Text="" ForeColor="Green" Font-Bold="true" ID="lblmessage" CssClass="label label-success" runat="server" />
</div>
</div>
</div>--%>
<%--<div class="row">
<div class="col-md-10 col-md-offset-1">
<div class="form-group">
<div class="table-responsive">
<asp:GridView ID="gv" Width="100%" AutoGenerateSelectButton="true" SelectedRowStyle-BackColor="Green" OnSelectedIndexChanged="gv_SelectedIndexChanged" runat="server"></asp:GridView>
</div>
</div>
</div>
</div>--%>
</div>
</section>
</div>
</div>
</section>
</section>

</asp:Content>
