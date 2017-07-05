<html>
<head>
    <title>My Expenses</title>
    <meta charset="utf-8">
    <meta name="keywords" content="asp.net sql asp .net hosting ajax 4.5 3.5 2.0 1.1 MSSQL2014 MSSQL2012 components windows webhosting framework iis7 iis8 iis8.5">
    <meta name="description" content="ASP.NET hosting, SQL hosting, AJAX Hosting, Silverlight hosting, LINQ Hosting, Microsoft Windows 2012 hosting, iis8 hosting, Windows 2012 R2 hosting, iis8.5 hosting.">
    <script src="Scripts/jquery-3.1.1.min.js"></script>
    <style>
        td {
            border: solid 1px black;
            font-family: "Courier New", Courier, monospace;
        }

        label {
            border: 0;
            font-size: large;
        }

        input {
            text-align: center;
        }
    </style>
</head>
<body>
    <div>
        <table id="xpensTbl">
            <tr>
                <td>
                    <label>SUMMA.</label>
                    <label>CAT</label>
                    <label>$$$$</label>
                    <label>????</label>
                    <label>#..AUTHOR..#</label>
                    <label>description...</label>
                    <label></label>
                </td>
            </tr>
            <tr>
                <td>
                    <input type="text" id="ALFcatSum" placeholder="error!" maxlength="6" size="6" />
                    <label>ALF </label>
                    <input type="text" id="ALFamount" placeholder="$$$  ->" maxlength="6" size="6">
                    <input type="text" id="ALFisProfit" maxlength="1" size="1">
                    <input type="text" id="ALFauthor" placeholder="Author...">
                    <input type="text" id="ALFdescription" placeholder="Description...">
                    <input type="button" id="ALFsendExpense" value="Test">
                </td>
            </tr>
            <tr>
                <td>
                    <input type="text" id="PRVcatSum" placeholder="error!" maxlength="6" size="6" readonly />
                    <label>PRV </label>
                    <input type="text" id="PRVamount" placeholder="$$$  ->" maxlength="6" size="6">
                    <input type="text" id="PRVisProfit" maxlength="1" size="1">
                    <input type="text" id="PRVauthor" placeholder="Author...">
                    <input type="text" id="PRVdescription" placeholder="Description...">
                    <input type="button" id="PRVsendExpense" value="Test">
                </td>
            </tr>
            <tr>
                <td>
                    <input type="text" id="BKPcatSum" placeholder="error!" maxlength="6" size="6" readonly />
                    <label>BKP </label>
                    <input type="text" id="BKPamount" placeholder="$$$  ->" maxlength="6" size="6">
                    <input type="text" id="BKPisProfit" maxlength="1" size="1">
                    <input type="text" id="BKPauthor" placeholder="Author...">
                    <input type="text" id="BKPdescription" placeholder="Description...">
                    <input type="button" id="BKPsendExpense" value="Test">
                </td>
            </tr>
            <tr>
                <td>
                    <input type="text" id="MOOcatSum" placeholder="error!" maxlength="6" size="6" readonly />
                    <label>MOO </label>
                    <input type="text" id="MOOamount" placeholder="$$$  ->" maxlength="6" size="6">
                    <input type="text" id="MOOisProfit" maxlength="1" size="1">
                    <input type="text" id="MOOauthor" placeholder="Author...">
                    <input type="text" id="MOOdescription" placeholder="Description...">
                    <input type="button" id="MOOsendExpense" value="Test">
                </td>
            </tr>
            <tr>
                <td></td>
            </tr>
            <tr>
                <td></td>
            </tr>
            <tr>
                <td>
                    <input type="text" id="WOKcatSum" placeholder="error!" maxlength="6" size="6" readonly />
                    <label>WOK </label>
                    <input type="text" id="WOKamount" placeholder="$$$  ->" maxlength="6" size="6">
                    <input type="text" id="WOKisProfit" maxlength="1" size="1">
                    <input type="text" id="WOKauthor" placeholder="Author...">
                    <input type="text" id="WOKdescription" placeholder="Description...">
                    <input type="button" id="WOKsendExpense" value="Test">
                </td>
            </tr>
            <tr>
                <td>
                    <input type="text" id="HOMcatSum" placeholder="error!" maxlength="6" size="6" readonly />
                    <label>HOM </label>
                    <input type="text" id="HOMamount" placeholder="$$$  ->" maxlength="6" size="6">
                    <input type="text" id="HOMisProfit" maxlength="1" size="1">
                    <input type="text" id="HOMauthor" placeholder="Author...">
                    <input type="text" id="HOMdescription" placeholder="Description...">
                    <input type="button" id="HOMsendExpense" value="Test">
                </td>
            </tr>
            <tr>
                <td>
                    <input type="text" id="KIDcatSum" placeholder="error!" maxlength="6" size="6" readonly />
                    <label>KID </label>
                    <input type="text" id="KIDamount" placeholder="$$$  ->" maxlength="6" size="6">
                    <input type="text" id="KIDisProfit" maxlength="1" size="1">
                    <input type="text" id="KIDauthor" placeholder="Author...">
                    <input type="text" id="KIDdescription" placeholder="Description...">
                    <input type="button" id="KIDsendExpense" value="Test">
                </td>
            </tr>
            <tr>
                <td>
                    <input type="text" id="KIUcatSum" placeholder="error!" maxlength="6" size="6" readonly />
                    <label>KIU </label>
                    <input type="text" id="KIUamount" placeholder="$$$  ->" maxlength="6" size="6">
                    <input type="text" id="KIUisProfit" maxlength="1" size="1">
                    <input type="text" id="KIUauthor" placeholder="Author...">
                    <input type="text" id="KIUdescription" placeholder="Description...">
                    <input type="button" id="KIUsendExpense" value="Test">
                </td>
            </tr>
            <tr>
                <td>
                    <input type="text" id="KIVcatSum" placeholder="error!" maxlength="6" size="6" readonly />
                    <label>KIV </label>
                    <input type="text" id="KIVamount" placeholder="$$$  ->" maxlength="6" size="6">
                    <input type="text" id="KIVisProfit" maxlength="1" size="1">
                    <input type="text" id="KIVauthor" placeholder="Author...">
                    <input type="text" id="KIVdescription" placeholder="Description...">
                    <input type="button" id="KIVsendExpense" value="Test">
                </td>
            </tr>
            <tr>
                <td>
                    <input type="text" id="QVNcatSum" placeholder="error!" maxlength="6" size="6" readonly />
                    <label>QVN </label>
                    <input type="text" id="QVNamount" placeholder="$$$  ->" maxlength="6" size="6">
                    <input type="text" id="QVNisProfit" maxlength="1" size="1">
                    <input type="text" id="QVNauthor" placeholder="Author...">
                    <input type="text" id="QVNdescription" placeholder="Description...">
                    <input type="button" id="QVNsendExpense" value="Test">
                </td>
            </tr>
            <tr>
                <td>
                    <input type="text" id="FOOcatSum" placeholder="error!" maxlength="6" size="6" readonly />
                    <label>FOO </label>
                    <input type="text" id="FOOamount" placeholder="$$$  ->" maxlength="6" size="6">
                    <input type="text" id="FOOisProfit" maxlength="1" size="1">
                    <input type="text" id="FOOauthor" placeholder="Author...">
                    <input type="text" id="FOOdescription" placeholder="Description...">
                    <input type="button" id="FOOsendExpense" value="Test">
                </td>
            </tr>
            <tr>
                <td>
                    <input type="text" id="COFcatSum" placeholder="error!" maxlength="6" size="6" readonly />
                    <label>COF </label>
                    <input type="text" id="COFamount" placeholder="$$$  ->" maxlength="6" size="6">
                    <input type="text" id="COFisProfit" maxlength="1" size="1">
                    <input type="text" id="COFauthor" placeholder="Author...">
                    <input type="text" id="COFdescription" placeholder="Description...">
                    <input type="button" id="COFsendExpense" value="Test">
                </td>
            </tr>
            <tr>
                <td>
                    <input type="text" id="ENJcatSum" placeholder="error!" maxlength="6" size="6" readonly />
                    <label>ENJ </label>
                    <input type="text" id="ENJamount" placeholder="$$$  ->" maxlength="6" size="6">
                    <input type="text" id="ENJisProfit" maxlength="1" size="1">
                    <input type="text" id="ENJauthor" placeholder="Author...">
                    <input type="text" id="ENJdescription" placeholder="Description...">
                    <input type="button" id="ENJsendExpense" value="Test">
                </td>
            </tr>
            <tr>
                <td>
                    <input type="text" id="PEBcatSum" placeholder="error!" maxlength="6" size="6" readonly />
                    <label>PEB </label>
                    <input type="text" id="PEBamount" placeholder="$$$  ->" maxlength="6" size="6">
                    <input type="text" id="PEBisProfit" maxlength="1" size="1">
                    <input type="text" id="PEBauthor" placeholder="Author...">
                    <input type="text" id="PEBdescription" placeholder="Description...">
                    <input type="button" id="PEBsendExpense" value="Test">
                </td>
            </tr>
            <tr>
                <td>
                    <input type="text" id="HLScatSum" placeholder="error!" maxlength="6" size="6" readonly />
                    <label>HLS </label>
                    <input type="text" id="HLSamount" placeholder="$$$  ->" maxlength="6" size="6">
                    <input type="text" id="HLSisProfit" maxlength="1" size="1">
                    <input type="text" id="HLSauthor" placeholder="Author...">
                    <input type="text" id="HLSdescription" placeholder="Description...">
                    <input type="button" id="HLSsendExpense" value="Test">
                </td>
            </tr>
            <tr>
                <td>
                    <input type="text" id="CLOcatSum" placeholder="error!" maxlength="6" size="6" readonly />
                    <label>CLO </label>
                    <input type="text" id="CLOamount" placeholder="$$$  ->" maxlength="6" size="6">
                    <input type="text" id="CLOisProfit" maxlength="1" size="1">
                    <input type="text" id="CLOauthor" placeholder="Author...">
                    <input type="text" id="CLOdescription" placeholder="Description...">
                    <input type="button" id="CLOsendExpense" value="Test">
                </td>
            </tr>
            <tr>
                <td>
                    <input type="text" id="VIHcatSum" placeholder="error!" maxlength="6" size="6" readonly />
                    <label>VIH </label>
                    <input type="text" id="VIHamount" placeholder="$$$  ->" maxlength="6" size="6">
                    <input type="text" id="VIHisProfit" maxlength="1" size="1">
                    <input type="text" id="VIHauthor" placeholder="Author...">
                    <input type="text" id="VIHdescription" placeholder="Description...">
                    <input type="button" id="VIHsendExpense" value="Test">
                </td>
            </tr>
            <tr>
                <td>
                    <input type="text" id="VLGcatSum" placeholder="error!" maxlength="6" size="6" readonly />
                    <label>VLG </label>
                    <input type="text" id="VLGamount" placeholder="$$$  ->" maxlength="6" size="6">
                    <input type="text" id="VLGisProfit" maxlength="1" size="1">
                    <input type="text" id="VLGauthor" placeholder="Author...">
                    <input type="text" id="VLGdescription" placeholder="Description...">
                    <input type="button" id="VLGsendExpense" value="Test">
                </td>
            </tr>
            <tr>
                <td>
                    <input type="text" id="FRDcatSum" placeholder="error!" maxlength="6" size="6" readonly />
                    <label>FRD </label>
                    <input type="text" id="FRDamount" placeholder="$$$  ->" maxlength="6" size="6">
                    <input type="text" id="FRDisProfit" maxlength="1" size="1">
                    <input type="text" id="FRDauthor" placeholder="Author...">
                    <input type="text" id="FRDdescription" placeholder="Description...">
                    <input type="button" id="FRDsendExpense" value="Test">
                </td>
            </tr>
            <tr>
                <td>
                    <input type="text" id="KSHcatSum" placeholder="error!" maxlength="6" size="6" readonly />
                    <label>KSH </label>
                    <input type="text" id="KSHamount" placeholder="$$$  ->" maxlength="6" size="6">
                    <input type="text" id="KSHisProfit" maxlength="1" size="1">
                    <input type="text" id="KSHauthor" placeholder="Author...">
                    <input type="text" id="KSHdescription" placeholder="Description...">
                    <input type="button" id="KSHsendExpense" value="Test">
                </td>
            </tr>
            <tr>
                <td>
                    <input type="text" id="CEXcatSum" placeholder="error!" maxlength="6" size="6" readonly />
                    <label>CEX </label>
                    <input type="text" id="CEXamount" placeholder="$$$  ->" maxlength="6" size="6">
                    <input type="text" id="CEXisProfit" maxlength="1" size="1">
                    <input type="text" id="CEXauthor" placeholder="Author...">
                    <input type="text" id="CEXdescription" placeholder="Description...">
                    <input type="button" id="CEXsendExpense" value="Test">
                </td>
            </tr>
        </table>
        <hr />
        <input type="text" id="XXXcatSum" readonly placeholder="error!" />
        <!--<table id="ulValues"></table>-->
    </div>
    <!-- ----------------- S C R I P T S : ------------------- -->
    <script type="text/javascript">
        $(document).ready(function () {
            window.onload = (function GetAllExpenses() {
                //var myValues = $('#ulValues');
                //myValues.empty();
                //$.ajax({
                //    type: "GET",
                //    url: "/api/Expenses",
                //    dataType: "json",
                //    success: function (data) {
                //        $.each(data, function (index, Expense) {
                //            var fullStr = "";
                //            myValues.append('<tr><td>' + Expense.id + '</td><td>' + Expense.Created + '</td><td>' +
                //                Expense.Amount + '</td><td>' + Expense.isProfit + '</td><td>' +
                //                Expense.Category + '</td><td>' + Expense.Description + '</td><td>' +
                //                Expense.Author + '</td></tr>');
                //        });
                //    }
                //});
                // = clearTableFields() =
                (function () {
                    var container, inputs, index;
                    container = document.getElementById('xpensTbl');
                    inputs = container.getElementsByTagName('input');
                    for (index = 0; index < inputs.length; ++index) {
                        if (inputs[index].type == "text")
                            inputs[index].value = '0';
                    }
                })();

                // = Fill the table !!! =
                $.ajax({
                    type: "GET",
                    url: "/api/Expenses",
                    dataType: "json",
                    success: function (data) {
                        $('#ALFcatSum').val(data.Alf);
                        $('#PRVcatSum').val(data.Prv);
                        $('#BKPcatSum').val(data.Bkp);
                        $('#WOKcatSum').val(data.Wok);
                        $('#MOOcatSum').val(data.Moo);
                        $('#HOMcatSum').val(data.Hom);
                        $('#KIDcatSum').val(data.Kid);
                        $('#KIUcatSum').val(data.Kiu);
                        $('#KIVcatSum').val(data.Kiv);
                        $('#QVNcatSum').val(data.Qvn);
                        $('#FOOcatSum').val(data.Foo);
                        $('#COFcatSum').val(data.Cof);
                        $('#ENJcatSum').val(data.Enj);
                        $('#PEBcatSum').val(data.Peb);
                        $('#HLScatSum').val(data.Hls);
                        $('#CLOcatSum').val(data.Clo);
                        $('#VIHcatSum').val(data.Vih);
                        $('#VLGcatSum').val(data.Vlg);
                        $('#FRDcatSum').val(data.Frd);
                        $('#KSHcatSum').val(data.Ksh);
                        $('#CEXcatSum').val(data.Cex);
                        $('#XXXcatSum').val(data.XXX);
                    }
                });
            })(); // window.onload = (function GetAllExpenses() {
            /////////////////////////////////////////////////////

            $('#ALFsendExpense').bind("click", function () {
                var Expense = {
                    Category: 'ALF',
                    Description: $('#ALFdescription').val(),
                    Author: $('#ALFauthor').val(),
                    Amount: $('#ALFamount').val(),
                    isProfit: $('#ALFisProfit').val()
                };
                $.ajax({
                    type: 'POST',
                    url: '/api/Expenses',
                    data: JSON.stringify(Expense),
                    contentType: 'application/json; charset=utf-8',
                    dataType: 'json'
                });
                setTimeout(function () {
                    window.location.reload();
                }, 1000);
            });

            $('#PRVsendExpense').bind("click", function () {
                var Expense = {
                    Category: 'PRV',
                    Description: $('#PRVdescription').val(),
                    Author: $('#PRVauthor').val(),
                    Amount: $('#PRVamount').val(),
                    isProfit: $('#PRVisProfit').val()
                };
                $.ajax({
                    type: 'POST',
                    url: '/api/Expenses',
                    data: JSON.stringify(Expense),
                    contentType: 'application/json; charset=utf-8',
                    dataType: 'json'
                });
                setTimeout(function () {
                    window.location.reload();
                }, 1000);
            });

            $('#BKPsendExpense').bind("click", function () {
                var Expense = {
                    Category: 'BKP',
                    Description: $('#BKPdescription').val(),
                    Author: $('#BKPauthor').val(),
                    Amount: $('#BKPamount').val(),
                    isProfit: $('#BKPisProfit').val()
                };
                $.ajax({
                    type: 'POST',
                    url: '/api/Expenses',
                    data: JSON.stringify(Expense),
                    contentType: 'application/json; charset=utf-8',
                    dataType: 'json'
                });
                setTimeout(function () {
                    window.location.reload();
                }, 1000);
            });

            $('#WOKsendExpense').bind("click", function () {
                var Expense = {
                    Category: 'WOK',
                    Description: $('#WOKdescription').val(),
                    Author: $('#WOKauthor').val(),
                    Amount: $('#WOKamount').val(),
                    isProfit: $('#WOKisProfit').val()
                };
                $.ajax({
                    type: 'POST',
                    url: '/api/Expenses',
                    data: JSON.stringify(Expense),
                    contentType: 'application/json; charset=utf-8',
                    dataType: 'json'
                });
                setTimeout(function () {
                    window.location.reload();
                }, 1000);
            });

            $('#MOOsendExpense').bind("click", function () {
                var Expense = {
                    Category: 'MOO',
                    Description: $('#MOOdescription').val(),
                    Author: $('#MOOauthor').val(),
                    Amount: $('#MOOamount').val(),
                    isProfit: $('#MOOisProfit').val()
                };
                $.ajax({
                    type: 'POST',
                    url: '/api/Expenses',
                    data: JSON.stringify(Expense),
                    contentType: 'application/json; charset=utf-8',
                    dataType: 'json'
                });
                setTimeout(function () {
                    window.location.reload();
                }, 1000);
            });

            $('#HOMsendExpense').bind("click", function () {
                var Expense = {
                    Category: 'HOM',
                    Description: $('#HOMdescription').val(),
                    Author: $('#HOMauthor').val(),
                    Amount: $('#HOMamount').val(),
                    isProfit: $('#HOMisProfit').val()
                };
                $.ajax({
                    type: 'POST',
                    url: '/api/Expenses',
                    data: JSON.stringify(Expense),
                    contentType: 'application/json; charset=utf-8',
                    dataType: 'json'
                });
                setTimeout(function () {
                    window.location.reload();
                }, 1000);
            });

            $('#KIDsendExpense').bind("click", function () {
                var Expense = {
                    Category: 'KID',
                    Description: $('#KIDdescription').val(),
                    Author: $('#KIDauthor').val(),
                    Amount: $('#KIDamount').val(),
                    isProfit: $('#KIDisProfit').val()
                };
                $.ajax({
                    type: 'POST',
                    url: '/api/Expenses',
                    data: JSON.stringify(Expense),
                    contentType: 'application/json; charset=utf-8',
                    dataType: 'json'
                });
                setTimeout(function () {
                    window.location.reload();
                }, 1000);
            });

            $('#KIUsendExpense').bind("click", function () {
                var Expense = {
                    Category: 'KIU',
                    Description: $('#KIUdescription').val(),
                    Author: $('#KIUauthor').val(),
                    Amount: $('#KIUamount').val(),
                    isProfit: $('#KIUisProfit').val()
                };
                $.ajax({
                    type: 'POST',
                    url: '/api/Expenses',
                    data: JSON.stringify(Expense),
                    contentType: 'application/json; charset=utf-8',
                    dataType: 'json'
                });
                setTimeout(function () {
                    window.location.reload();
                }, 1000);
            });

            $('#KIVsendExpense').bind("click", function () {
                var Expense = {
                    Category: 'KIV',
                    Description: $('#KIVdescription').val(),
                    Author: $('#KIVauthor').val(),
                    Amount: $('#KIVamount').val(),
                    isProfit: $('#KIVisProfit').val()
                };
                $.ajax({
                    type: 'POST',
                    url: '/api/Expenses',
                    data: JSON.stringify(Expense),
                    contentType: 'application/json; charset=utf-8',
                    dataType: 'json'
                });
                setTimeout(function () {
                    window.location.reload();
                }, 1000);
            });

            $('#QVNsendExpense').bind("click", function () {
                var Expense = {
                    Category: 'QVN',
                    Description: $('#QVNdescription').val(),
                    Author: $('#QVNauthor').val(),
                    Amount: $('#QVNamount').val(),
                    isProfit: $('#QVNisProfit').val()
                };
                $.ajax({
                    type: 'POST',
                    url: '/api/Expenses',
                    data: JSON.stringify(Expense),
                    contentType: 'application/json; charset=utf-8',
                    dataType: 'json'
                });
                setTimeout(function () {
                    window.location.reload();
                }, 1000);
            });

            $('#FOOsendExpense').bind("click", function () {
                var Expense = {
                    Category: 'FOO',
                    Description: $('#FOOdescription').val(),
                    Author: $('#FOOauthor').val(),
                    Amount: $('#FOOamount').val(),
                    isProfit: $('#FOOisProfit').val()
                };
                $.ajax({
                    type: 'POST',
                    url: '/api/Expenses',
                    data: JSON.stringify(Expense),
                    contentType: 'application/json; charset=utf-8',
                    dataType: 'json'
                });
                setTimeout(function () {
                    window.location.reload();
                }, 1000);
            });

            $('#COFsendExpense').bind("click", function () {
                var Expense = {
                    Category: 'COF',
                    Description: $('#COFdescription').val(),
                    Author: $('#COFauthor').val(),
                    Amount: $('#COFamount').val(),
                    isProfit: $('#COFisProfit').val()
                };
                $.ajax({
                    type: 'POST',
                    url: '/api/Expenses',
                    data: JSON.stringify(Expense),
                    contentType: 'application/json; charset=utf-8',
                    dataType: 'json'
                });
                setTimeout(function () {
                    window.location.reload();
                }, 1000);
            });

            $('#ENJsendExpense').bind("click", function () {
                var Expense = {
                    Category: 'ENJ',
                    Description: $('#ENJdescription').val(),
                    Author: $('#ENJauthor').val(),
                    Amount: $('#ENJamount').val(),
                    isProfit: $('#ENJisProfit').val()
                };
                $.ajax({
                    type: 'POST',
                    url: '/api/Expenses',
                    data: JSON.stringify(Expense),
                    contentType: 'application/json; charset=utf-8',
                    dataType: 'json'
                });
                setTimeout(function () {
                    window.location.reload();
                }, 1000);
            });

            $('#PEBsendExpense').bind("click", function () {
                var Expense = {
                    Category: 'PEB',
                    Description: $('#PEBdescription').val(),
                    Author: $('#PEBauthor').val(),
                    Amount: $('#PEBamount').val(),
                    isProfit: $('#PEBisProfit').val()
                };
                $.ajax({
                    type: 'POST',
                    url: '/api/Expenses',
                    data: JSON.stringify(Expense),
                    contentType: 'application/json; charset=utf-8',
                    dataType: 'json'
                });
                setTimeout(function () {
                    window.location.reload();
                }, 1000);
            });

            $('#HLSsendExpense').bind("click", function () {
                var Expense = {
                    Category: 'HLS',
                    Description: $('#HLSdescription').val(),
                    Author: $('#HLSauthor').val(),
                    Amount: $('#HLSamount').val(),
                    isProfit: $('#HLSisProfit').val()
                };
                $.ajax({
                    type: 'POST',
                    url: '/api/Expenses',
                    data: JSON.stringify(Expense),
                    contentType: 'application/json; charset=utf-8',
                    dataType: 'json'
                });
                setTimeout(function () {
                    window.location.reload();
                }, 1000);
            });

            $('#CLOsendExpense').bind("click", function () {
                var Expense = {
                    Category: 'CLO',
                    Description: $('#CLOdescription').val(),
                    Author: $('#CLOauthor').val(),
                    Amount: $('#CLOamount').val(),
                    isProfit: $('#CLOisProfit').val()
                };
                $.ajax({
                    type: 'POST',
                    url: '/api/Expenses',
                    data: JSON.stringify(Expense),
                    contentType: 'application/json; charset=utf-8',
                    dataType: 'json'
                });
                setTimeout(function () {
                    window.location.reload();
                }, 1000);
            });

            $('#VIHsendExpense').bind("click", function () {
                var Expense = {
                    Category: 'VIH',
                    Description: $('#VIHdescription').val(),
                    Author: $('#VIHauthor').val(),
                    Amount: $('#VIHamount').val(),
                    isProfit: $('#VIHisProfit').val()
                };
                $.ajax({
                    type: 'POST',
                    url: '/api/Expenses',
                    data: JSON.stringify(Expense),
                    contentType: 'application/json; charset=utf-8',
                    dataType: 'json'
                });
                setTimeout(function () {
                    window.location.reload();
                }, 1000);
            });

            $('#VLGsendExpense').bind("click", function () {
                var Expense = {
                    Category: 'VLG',
                    Description: $('#VLGdescription').val(),
                    Author: $('#VLGauthor').val(),
                    Amount: $('#VLGamount').val(),
                    isProfit: $('#VLGisProfit').val()
                };
                $.ajax({
                    type: 'POST',
                    url: '/api/Expenses',
                    data: JSON.stringify(Expense),
                    contentType: 'application/json; charset=utf-8',
                    dataType: 'json'
                });
                setTimeout(function () {
                    window.location.reload();
                }, 1000);
            });

            $('#FRDsendExpense').bind("click", function () {
                var Expense = {
                    Category: 'FRD',
                    Description: $('#FRDdescription').val(),
                    Author: $('#FRDauthor').val(),
                    Amount: $('#FRDamount').val(),
                    isProfit: $('#FRDisProfit').val()
                };
                $.ajax({
                    type: 'POST',
                    url: '/api/Expenses',
                    data: JSON.stringify(Expense),
                    contentType: 'application/json; charset=utf-8',
                    dataType: 'json'
                });
                setTimeout(function () {
                    window.location.reload();
                }, 1000);
            });

            $('#KSHsendExpense').bind("click", function () {
                var Expense = {
                    Category: 'KSH',
                    Description: $('#KSHdescription').val(),
                    Author: $('#KSHauthor').val(),
                    Amount: $('#KSHamount').val(),
                    isProfit: $('#KSHisProfit').val()
                };
                $.ajax({
                    type: 'POST',
                    url: '/api/Expenses',
                    data: JSON.stringify(Expense),
                    contentType: 'application/json; charset=utf-8',
                    dataType: 'json'
                });
                setTimeout(function () {
                    window.location.reload();
                }, 1000);
            });

            $('#CEXsendExpense').bind("click", function () {
                var Expense = {
                    Category: 'CEX',
                    Description: $('#CEXdescription').val(),
                    Author: $('#CEXauthor').val(),
                    Amount: $('#CEXamount').val(),
                    isProfit: $('#CEXisProfit').val()
                };
                $.ajax({
                    type: 'POST',
                    url: '/api/Expenses',
                    data: JSON.stringify(Expense),
                    contentType: 'application/json; charset=utf-8',
                    dataType: 'json'
                });
                setTimeout(function () {
                    window.location.reload();
                }, 1000);
            });

        });// $(document).ready(function () {
    </script>
</body>
</html>
