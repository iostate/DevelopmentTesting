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

        <script type="text/javascript">
            

            function SaveWithParameter(parameter) {
                __doPostBack('btnSave', parameter)
            }

            
        </script>
    </head>
 
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
        </div>
    <div class="col-md-6">
    </div
    </div>
    <div class="row">
       <%-- <div class="col-md-6">
            <form id="form1" runat="server">
                <asp:HiddenField ID="HiddenField1" runat="server"/>
                Enter secret value:
                <asp:TextBox ID="TextBox1" runat="server" />
                <br />
                <br />
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
                <br />
                &nbsp;
                <asp:Label ID="Label1" runat="server" />
                &nbsp
              
            
        </div>--%>
        <form id="form1" runat="server">

        <div class="col-md-6">
            <asp:LinkButton ID="LinkButton1" runat="server" />
               
            <input type="button" id="Button45" name="Button45" onclick="javascript:__doPostBack('ButtonA', 'test1')" value="clicking this will run ButtonA.Click Event Handler" /><br /><br />
            <input type="button" id="Button46" name="Button46" onclick="javascript:__doPostBack('ButtonB', 'test2')" value="clicking this will run ButtonB.Click Event Handler" /><br /><br />


            <input type="button" id="btnSave" onclick="javascript:SaveWithParameter('Hello Quan')" value="click me" />
        </div>
        
        
        </div>
    <div class="row">
        <div class="col-md-6">
            <div class="btn-group">
                <select id="contactedAt" runat="server" onchange="printOptions(this);">
                    <option ID="radNone" value="None">None</option>
                    <option ID="radMR" value="mr">Mr.</option>
                    <option ID="radMRS" value="mrs">Mrs.</option>
                    <option ID="radLM" value="leftMessage">Left Message</option>
                    <option ID="radEML" value="sendEmail">Send Email</option>
                </select>
            </div>
            </div>
        <div class="col-md-6">
            
        </div>
        </div>
   
        <div class="row"">
            <div class="col-md-6">
            
                    <select id="countries" name="countries" class="countries">
                        <option value="alaska" name="alaska">Alaska</option>
                        <option value="arizona" name="arizona">Arizona</option>
                        <option value="california" name="california">California</option>
                        <option value="conneticut" name="conneticut">Conneticut</option>
                        <option value="delaware" name="delaware">Delaware</option>
                    </select>

                    <asp:HiddenField ID="HiddenField1" runat="server"/>
              
            </div>
            <div class="col-md-6"></div>
        </div>
    </form>

       <script type="text/javascript" language="javascript">
           //var select = document.getElementById('contactedAt');
           //console.log(select.options[select.selectedIndex]);
           //var val = select.value;
           //console.log(select.textContent);

           //var resultDiv = document.getElementById('resultDiv');
           //resultDiv.innerHTML = val;

           function printOptions(sel) {
               alert(sel.options[sel.selectedIndex].text);
           }

           //function __doPostBack(eventTarget, eventArgument) {
           //    if (theForm.onsubmit || (theForm.onsubmit() != false)) {
           //        theForm.__EVENTTARGET.value = eventTarget;
           //        theForm.__EVENTARGUMENT.value = eventArgument;
           //        theForm.submit();
           //    }
           //}

           //$(document).ready(function () {
           //    // event handler every time the select#countries changes
           //    $('#countries').change(function () {
           //        var selectedCountry = $(this).children("option:selected").val();
           //        alert("You have selected the country - " + selectedCountry);

           //    });
           //});

           $("#countries").change(function () {

               // prints every state because there's no selector for just the selected option
               var testStr = $(this).text();
               console.log('testString = ' + testStr + ' = testString');
               var str = "";
               $("#countries option:selected").each(function () {
                   // get the value of the selected country, then write to console
                   str += $(this).text() + " ";
                   console.log(str);
                   // write the country to hidden field

                   // in VB, pull the hidden data out

                   // include separators to separate the items in the hidden field

                   // parse using .pop() 

                   // use a stack?? 
               });
           });
 
       </script>

</asp:Content>
