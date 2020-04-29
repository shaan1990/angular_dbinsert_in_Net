<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RecordInsertion.aspx.cs" Inherits="ang_db_con.RecordInsertion1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Record Insertion</title>

    <script src="scripts/angular.min.js"></script>
    <script src="scripts/jquery-1.12.2.min.js"></script>
    <script src="scripts/scriptdb.js"></script>

</head>
<body ng-app="app">
    <form id="form1" ng-controller="EmpCtrl" ng-submit="save()">
        <div style="text-align: center;">
            <img alt="" src="banner-careers.jpg" />
        </div>
        <br />
        <div style="font-family: Verdana; font-size: 12px; margin-left: 450px;">
            <table>
                <tr>
                    <td style="text-align: right;">Id :
                    </td>
                    <td>
                        <input type="text" id="txtEmpID" ng-model="EmpID" />
                    </td>
                </tr>
                <tr>
                    <td style="text-align: right;">First Name :
                    </td>
                    <td>
                        <input type="text" id="txtEmpFirstName" ng-model="EmpFirstName" />
                    </td>
                </tr>
                <tr>
                    <td style="text-align: right;">Last Name :
                    </td>
                    <td>
                        <input type="text" id="txtEmpLastName" ng-model="EmpLastName" />
                    </td>
                </tr>

                <tr>
                    <td style="text-align: right;">Address :
                    </td>
                    <td>
                        <textarea id="txtEmpAddress" cols="20" rows="2"
                            ng-model="EmpAddress"></textarea>
                    </td>
                </tr>
                <tr>
                    <td style="text-align: right;">City :
                    </td>
                    <td>
                        <input type="text" id="txtCity" ng-model="EmpCity" />
                    </td>
                </tr>
                <tr>
                    <td style="text-align: right;">Pin Code :
                    </td>
                    <td>
                        <input type="text" id="txtPinCode" ng-model="EmpPincode" />
                    </td>
                </tr>
                <tr>
                    <td style="text-align: right;">State :
                    </td>

                    <td>
                        <input type="text" id="txtState" ng-model="EmpState" />
                    </td>
                </tr>
                <tr>
                    <td style="text-align: right;">Country :
                    </td>
                    <td>
                        <input type="text" id="txtCountry" ng-model="country" />
                    </td>
                </tr>
                <tr>
                    <td colspan="2" style="text-align: center;">
                        <input type="submit" id="btnSubmit" value="Submit" />
                    </td>
                </tr>

            </table>
            <div>
                <input type="button" id="btnFetch" value="Fetch" ng-click="getEmployee()" />
            </div>

        </div>
        <hr />
        <table border="1" style="text-align: center; margin-left: 410px;">
            <tr>
                <td>ID
                </td>
                <td>First Name
                </td>
                <td>Last Name
                </td>
                <td>Address
                </td>
                <td>City
                </td>
                <td>Pincode
                </td>
                <td>State
                </td>
                <td>Country
                </td>
            </tr>
            <tr>
                <td>{{ID}}
                </td>
                <td>{{FirstName}}
                </td>
                <td>{{LastName}}
                </td>
                <td>{{Address}}
                </td>
                <td>{{City}}
                </td>
                <td>{{Pincode}}
                </td>
                <td>{{State}}
                </td>
                <td>{{Country}}
                </td>
            </tr>
        </table>
    </form>

    <%--<div ng-controller="name">

        {{name}}
    <%--</div>--%>--%>
</body>
</html>
