<%@ Page Title="Home Page" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.vb" Inherits="DevelopmentTesting._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <head>
        <style>
.checkbox label:after {
  content: '';
  display: table;
  clear: both;
}

.checkbox .cr {
  position: relative;
  display: inline-block;
  border: 1px solid #a9a9a9;
  border-radius: .25em;
  width: 1.3em;
  height: 1.3em;
  float: left;
  margin-right: .5em;
}

.checkbox .cr .cr-icon {
  position: absolute;
  font-size: .8em;
  line-height: 0;
  top: 50%;
  left: 15%;
}

.checkbox label input[type="checkbox"] {
  display: none;
}

.checkbox label input[type="checkbox"]+.cr>.cr-icon {
  opacity: 0;
}

.checkbox label input[type="checkbox"]:checked+.cr>.cr-icon {
  opacity: 1;
}

.checkbox label input[type="checkbox"]:disabled+.cr {
  opacity: .5;
}
            </style>
    </head>
    <script type="text/javascript" language="javascript">
      function ChangeHiddenValue()
      {
         alert("Entering ChangeHiddenValue");
         var hdnId = "<%=hdnSecretValue.ClientID%>";
         var hdn = document.getElementById(hdnId);
         var txt = document.getElementById("txtSecretValue");
         hdn.value = txt.value;
         alert("Value changed");
      }
    </script>
    <div class="jumbotron">
        <h1>ASP.NET</h1>
        <p class="lead">ASP.NET is a free web framework for building great Web sites and Web applications using HTML, CSS and JavaScript.</p>
        <p><a href="http://www.asp.net" class="btn btn-primary btn-lg">Learn more &raquo;</a></p>
    </div>

    <div class="row">
        <div class="col-md-4">
            <h2>Getting Started</h2>
            <p>
                ASP.NET Web Forms lets you build dynamic websites using a familiar drag-and-drop, event-driven model.
            A design surface and hundreds of controls and components let you rapidly build sophisticated, powerful UI-driven sites with data access.
            </p>
            <p>
                <a class="btn btn-default" href="https://go.microsoft.com/fwlink/?LinkId=301948">Learn more &raquo;</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2>Get more libraries</h2>
            <p>
                NuGet is a free Visual Studio extension that makes it easy to add, remove, and update libraries and tools in Visual Studio projects.
            </p>
            <p>
                <a class="btn btn-default" href="https://go.microsoft.com/fwlink/?LinkId=301949">Learn more &raquo;</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2>Web Hosting</h2>
            <p>
                You can easily find a web hosting company that offers the right mix of features and price for your applications.
            </p>
            <p>
                <a class="btn btn-default" href="https://go.microsoft.com/fwlink/?LinkId=301950">Learn more &raquo;</a>
            </p>
        </div>
    </div>
    <div class="row">
        <div class="col-md-6">
            <!-- Default checkbox -->
            <div class="checkbox">
              <label>
               <input type="checkbox" value="">
               <span class="cr"><i class="cr-icon glyphicon glyphicon-ok"></i></span>
               Option one
               </label>
            </div>

            <!-- Checked checkbox -->
            <div class="checkbox">
              <label>
               <input type="checkbox" value="" checked>
               <span class="cr"><i class="cr-icon glyphicon glyphicon-ok"></i></span>
               Option two is checked by default
               </label>
            </div>

            <!-- Disabled checkbox -->
            <div class="checkbox disabled">
              <label>
               <input type="checkbox" value="" disabled>
               <span class="cr"><i class="cr-icon glyphicon glyphicon-ok"></i></span>
               Option three is disabled
               </label>
            </div>
    </div>
    <div class="col-md-6">
        <div class="form-check">
            <label>
            <input class="form-check-input form-check-inline" type="checkbox" value="" id="defaultCheck1">
            <label class="form-check-label form-check-inline" for="defaultCheck1">
            Default checkbox
            </label>
        </div>
        <div class="form-check">
            <input class="form-check-input" type="checkbox" value="" id="defaultCheck2">
            <label class="form-check-label" for="defaultCheck2">
            Disabled checkbox
            </label>
        </div>
    </div>


    </div>
    <div class="row">
        <form id="form1" runat="server">
            <div class="col-md-6">
                <asp:HiddenField ID="hdnSecretValue" runat="server" OnValueChanged="hdnSecretValue_ValueChanged" />
                Enter secret value:
                <asp:TextBox ID="txtSecretValue" runat="server" />
                <br />
                <br />
                <input id="Button1" type="button" value="button" onclick="ChangeHiddenValue()" />
                <br />
                <br />
                <asp:Label ID="lblSecretValue" runat="server" />
            </div>
            </form>
        <div class="col-md-6"></div>
    </div>

</asp:Content>
