<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="basicAjs.aspx.cs" Inherits="ang_db_con.RecordInsertion" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="scripts/angular.min.js"></script>
    <script src="scripts/jquery-1.12.2.min.js"></script>
</head>
<body ng-app="app">
     <div ng-controller="findAdd">
         {{sum(3,4)}}
     </div>

    <div ng-controller="address" style="background-color:khaki;">       
            {{address}}       
    </div>
    <script>       

        // CALLING MAIN APPLICAIION
        var app =  angular.module("app", []);
        
        // CALLING 1ST CONTROLLER METHOD
        app.controller("findAdd", function ($scope) {
            $scope.sum = function (a, b) {
                return a + b;
            }
        });

        // CALLING 2ND CONTROLLER METHOD
        app.controller("address", function ($scope) {
            $scope.address = "Arundhutinagar, Road No-1";
        });


    </script>

    <form id="form1" runat="server">
        <div>
        </div>
    </form>
</body>
</html>
