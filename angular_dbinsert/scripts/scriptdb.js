
var app = angular.module("app", []);

app.controller("EmpCtrl", function ($scope) {
    $scope.save = function () {
        $.ajax({
            type: "POST",
            url: "../DbConnection.asmx/InsertEmployee",
            data: "{'empID':'" + $scope.EmpID + "','firstName':'" +
            $scope.EmpFirstName + "','lastName':'" + $scope.EmpLastName + "','address':'" + $scope.EmpAddress + "','city':'" + $scope.EmpCity + "','pincode':'" + $scope.EmpPincode + "','state':'" + $scope.EmpState + "','country':'" + $scope.country + "'}",
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (msg) {
                alert(msg.d);
            },
            error: function (msg) {
                alert(msg.d);
            }
        });
    };
});

//app.controller("name", function ($scope) {
//    $scope.name = "santanu";
//});