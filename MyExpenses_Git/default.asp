<html>
<head>
    <title>My Expenses</title>
    <meta charset="utf-8">
    <meta name="keywords" content="asp.net sql asp .net hosting ajax 4.5 3.5 2.0 1.1 MSSQL2014 MSSQL2012 components windows webhosting framework iis7 iis8 iis8.5">
    <meta name="description" content="ASP.NET hosting, SQL hosting, AJAX Hosting, Silverlight hosting, LINQ Hosting, Microsoft Windows 2012 hosting, iis8 hosting, Windows 2012 R2 hosting, iis8.5 hosting.">
    <script src="Scripts/jquery-3.1.1.min.js"></script>
    <link rel="stylesheet" type="text/css" href="default.css" />
</head>
<body>
    <div>
        <ul id="last2days"></ul>
        <hr />
        <input type="text" id="XXXcatSum" style="width: 20%" readonly placeholder="error!" />
        <input type="text" id="Modif" style="width: 40%" readonly placeholder="error!" />
        <hr />
        <table id="xpensTbl">
            <tr>
                <td>
                    <input class="categorySum" type="text" id="PROcatSum" placeholder="error!" readonly /></td>
                <td>
                    <label>PRO</label></td>
                <td>
                    <input type="text" id="PROamount" placeholder="$$$  ->"></td>
                <td>
                    <input type="text" id="PROauthor" placeholder="Author..."></td>
                <td>
                    <input type="text" id="PROdescription" placeholder="Description..."></td>
                <td>
                    <input type="button" id="PROsendExpense" value="Test"></td>
            </tr>
            <tr>
                <td>
                    <input class="categorySum" type="text" id="MOOcatSum" placeholder="error!" readonly /></td>
                <td>
                    <label>MOO</label></td>
                <td>
                    <input type="text" id="MOOamount" placeholder="$$$  ->"></td>
                <td>
                    <input type="text" id="MOOauthor" placeholder="Author..."></td>
                <td>
                    <input type="text" id="MOOdescription" placeholder="Description..."></td>
                <td>
                    <input type="button" id="MOOsendExpense" value="Test"></td>
            </tr>
            <tr>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
            </tr>
            <tr>
                <td>
                    <input class="categorySum" type="text" id="ALFcatSum" placeholder="error!" /></td>
                <td>
                    <label>ALF</label></td>
                <td>
                    <input type="text" id="ALFamount" placeholder="$$$  ->"></td>
                <td>
                    <input type="text" id="ALFauthor" placeholder="Author..."></td>
                <td>
                    <input type="text" id="ALFdescription" placeholder="Description..."></td>
                <td>
                    <input type="button" id="ALFsendExpense" value="Test"></td>
            </tr>
            <tr>
                <td>
                    <input class="categorySum" type="text" id="PRVcatSum" placeholder="error!" readonly /></td>
                <td>
                    <label>PRV</label></td>
                <td>
                    <input type="text" id="PRVamount" placeholder="$$$  ->"></td>
                <td>
                    <input type="text" id="PRVauthor" placeholder="Author..."></td>
                <td>
                    <input type="text" id="PRVdescription" placeholder="Description..."></td>
                <td>
                    <input type="button" id="PRVsendExpense" value="Test"></td>
            </tr>
            <tr>
                <td>
                    <input class="categorySum" type="text" id="BKPcatSum" placeholder="error!" readonly /></td>
                <td>
                    <label>BKP</label></td>
                <td>
                    <input type="text" id="BKPamount" placeholder="$$$  ->"></td>
                <td>
                    <input type="text" id="BKPauthor" placeholder="Author..."></td>
                <td>
                    <input type="text" id="BKPdescription" placeholder="Description..."></td>
                <td>
                    <input type="button" id="BKPsendExpense" value="Test"></td>
            </tr>
            <tr>
                <td>
                    <input class="categorySum" type="text" id="CEXcatSum" placeholder="error!" readonly /></td>
                <td>
                    <label>CEX</label></td>
                <td>
                    <input type="text" id="CEXamount" placeholder="$$$  ->"></td>
                <td>
                    <input type="text" id="CEXauthor" placeholder="Author..."></td>
                <td>
                    <input type="text" id="CEXdescription" placeholder="Description..."></td>
                <td>
                    <input type="button" id="CEXsendExpense" value="Test"></td>
            </tr>
            <tr>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
            </tr>
            <tr>
                <td>
                    <input class="categorySum" type="text" id="WOKcatSum" placeholder="error!" readonly /></td>
                <td>
                    <label>WOK</label></td>
                <td>
                    <input type="text" id="WOKamount" placeholder="$$$  ->"></td>
                <td>
                    <input type="text" id="WOKauthor" placeholder="Author..."></td>
                <td>
                    <input type="text" id="WOKdescription" placeholder="Description..."></td>
                <td>
                    <input type="button" id="WOKsendExpense" value="Test"></td>
            </tr>
            <tr>
                <td>
                    <input class="categorySum" type="text" id="HOMcatSum" placeholder="error!" readonly /></td>
                <td>
                    <label>HOM</label></td>
                <td>
                    <input type="text" id="HOMamount" placeholder="$$$  ->"></td>
                <td>
                    <input type="text" id="HOMauthor" placeholder="Author..."></td>
                <td>
                    <input type="text" id="HOMdescription" placeholder="Description..."></td>
                <td>
                    <input type="button" id="HOMsendExpense" value="Test"></td>
            </tr>
            <tr>
                <td>
                    <input class="categorySum" type="text" id="KIDcatSum" placeholder="error!" readonly /></td>
                <td>
                    <label>KID</label></td>
                <td>
                    <input type="text" id="KIDamount" placeholder="$$$  ->"></td>
                <td>
                    <input type="text" id="KIDauthor" placeholder="Author..."></td>
                <td>
                    <input type="text" id="KIDdescription" placeholder="Description..."></td>
                <td>
                    <input type="button" id="KIDsendExpense" value="Test"></td>
            </tr>
            <tr>
                <td>
                    <input class="categorySum" type="text" id="KIUcatSum" placeholder="error!" readonly /></td>
                <td>
                    <label>KIU</label></td>
                <td>
                    <input type="text" id="KIUamount" placeholder="$$$  ->"></td>
                <td>
                    <input type="text" id="KIUauthor" placeholder="Author..."></td>
                <td>
                    <input type="text" id="KIUdescription" placeholder="Description..."></td>
                <td>
                    <input type="button" id="KIUsendExpense" value="Test"></td>
            </tr>
            <tr>
                <td>
                    <input class="categorySum" type="text" id="KIVcatSum" placeholder="error!" readonly /></td>
                <td>
                    <label>KIV</label></td>
                <td>
                    <input type="text" id="KIVamount" placeholder="$$$  ->"></td>
                <td>
                    <input type="text" id="KIVauthor" placeholder="Author..."></td>
                <td>
                    <input type="text" id="KIVdescription" placeholder="Description..."></td>
                <td>
                    <input type="button" id="KIVsendExpense" value="Test"></td>
            </tr>
            <tr>
                <td>
                    <input class="categorySum" type="text" id="QVNcatSum" placeholder="error!" readonly /></td>
                <td>
                    <label>QVN</label></td>
                <td>
                    <input type="text" id="QVNamount" placeholder="$$$  ->"></td>
                <td>
                    <input type="text" id="QVNauthor" placeholder="Author..."></td>
                <td>
                    <input type="text" id="QVNdescription" placeholder="Description..."></td>
                <td>
                    <input type="button" id="QVNsendExpense" value="Test"></td>
            </tr>
            <tr>
                <td>
                    <input class="categorySum" type="text" id="FOOcatSum" placeholder="error!" readonly /></td>
                <td>
                    <label>FOO</label></td>
                <td>
                    <input type="text" id="FOOamount" placeholder="$$$  ->"></td>
                <td>
                    <input type="text" id="FOOauthor" placeholder="Author..."></td>
                <td>
                    <input type="text" id="FOOdescription" placeholder="Description..."></td>
                <td>
                    <input type="button" id="FOOsendExpense" value="Test"></td>
            </tr>
            <tr>
                <td>
                    <input class="categorySum" type="text" id="COFcatSum" placeholder="error!" readonly /></td>
                <td>
                    <label>COF</label></td>
                <td>
                    <input type="text" id="COFamount" placeholder="$$$  ->"></td>
                <td>
                    <input type="text" id="COFauthor" placeholder="Author..."></td>
                <td>
                    <input type="text" id="COFdescription" placeholder="Description..."></td>
                <td>
                    <input type="button" id="COFsendExpense" value="Test"></td>
            </tr>
            <tr>
                <td>
                    <input class="categorySum" type="text" id="ENJcatSum" placeholder="error!" readonly /></td>
                <td>
                    <label>ENJ</label></td>
                <td>
                    <input type="text" id="ENJamount" placeholder="$$$  ->"></td>
                <td>
                    <input type="text" id="ENJauthor" placeholder="Author..."></td>
                <td>
                    <input type="text" id="ENJdescription" placeholder="Description..."></td>
                <td>
                    <input type="button" id="ENJsendExpense" value="Test"></td>
            </tr>
            <tr>
                <td>
                    <input class="categorySum" type="text" id="PEBcatSum" placeholder="error!" readonly /></td>
                <td>
                    <label>PEB</label></td>
                <td>
                    <input type="text" id="PEBamount" placeholder="$$$  ->"></td>
                <td>
                    <input type="text" id="PEBauthor" placeholder="Author..."></td>
                <td>
                    <input type="text" id="PEBdescription" placeholder="Description..."></td>
                <td>
                    <input type="button" id="PEBsendExpense" value="Test"></td>
            </tr>
            <tr>
                <td>
                    <input class="categorySum" type="text" id="HLScatSum" placeholder="error!" readonly /></td>
                <td>
                    <label>HLS</label></td>
                <td>
                    <input type="text" id="HLSamount" placeholder="$$$  ->"></td>
                <td>
                    <input type="text" id="HLSauthor" placeholder="Author..."></td>
                <td>
                    <input type="text" id="HLSdescription" placeholder="Description..."></td>
                <td>
                    <input type="button" id="HLSsendExpense" value="Test"></td>
            </tr>
            <tr>
                <td>
                    <input class="categorySum" type="text" id="CLOcatSum" placeholder="error!" readonly /></td>
                <td>
                    <label>CLO</label></td>
                <td>
                    <input type="text" id="CLOamount" placeholder="$$$  ->"></td>
                <td>
                    <input type="text" id="CLOauthor" placeholder="Author..."></td>
                <td>
                    <input type="text" id="CLOdescription" placeholder="Description..."></td>
                <td>
                    <input type="button" id="CLOsendExpense" value="Test"></td>
            </tr>
            <tr>
                <td>
                    <input class="categorySum" type="text" id="VIHcatSum" placeholder="error!" readonly /></td>
                <td>
                    <label>VIH</label></td>
                <td>
                    <input type="text" id="VIHamount" placeholder="$$$  ->"></td>
                <td>
                    <input type="text" id="VIHauthor" placeholder="Author..."></td>
                <td>
                    <input type="text" id="VIHdescription" placeholder="Description..."></td>
                <td>
                    <input type="button" id="VIHsendExpense" value="Test"></td>
            </tr>
            <tr>
                <td>
                    <input class="categorySum" type="text" id="VLGcatSum" placeholder="error!" readonly /></td>
                <td>
                    <label>VLG</label></td>
                <td>
                    <input type="text" id="VLGamount" placeholder="$$$  ->"></td>
                <td>
                    <input type="text" id="VLGauthor" placeholder="Author..."></td>
                <td>
                    <input type="text" id="VLGdescription" placeholder="Description..."></td>
                <td>
                    <input type="button" id="VLGsendExpense" value="Test"></td>
            </tr>
            <tr>
                <td>
                    <input class="categorySum" type="text" id="FRDcatSum" placeholder="error!" readonly /></td>
                <td>
                    <label>FRD</label></td>

                <td>
                    <input type="text" id="FRDamount" placeholder="$$$  ->"></td>
                <td>
                    <input type="text" id="FRDauthor" placeholder="Author..."></td>
                <td>
                    <input type="text" id="FRDdescription" placeholder="Description..."></td>
                <td>
                    <input type="button" id="FRDsendExpense" value="Test"></td>
            </tr>
            <tr>
                <td>
                    <input class="categorySum" type="text" id="KSHcatSum" placeholder="error!" readonly /></td>
                <td>
                    <label>KSH</label></td>
                <td>
                    <input type="text" id="KSHamount" placeholder="$$$  ->"></td>
                <td>
                    <input type="text" id="KSHauthor" placeholder="Author..."></td>
                <td>
                    <input type="text" id="KSHdescription" placeholder="Description..."></td>
                <td>
                    <input type="button" id="KSHsendExpense" value="Test"></td>
            </tr>
        </table>
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
                        $('#PROcatSum').val(data.Pro);
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
                        $('#Modif').val(data.Modif);
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
                    Amount: $('#ALFamount').val()
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
                }, 3000);
            });

            $('#PROsendExpense').bind("click", function () {
                var Expense = {
                    Category: 'PRO',
                    Description: $('#PROdescription').val(),
                    Author: $('#PROauthor').val(),
                    Amount: $('#PROamount').val()
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
                }, 3000);
            });

            $('#PRVsendExpense').bind("click", function () {
                var Expense = {
                    Category: 'PRV',
                    Description: $('#PRVdescription').val(),
                    Author: $('#PRVauthor').val(),
                    Amount: $('#PRVamount').val()
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
                }, 3000);
            });

            $('#BKPsendExpense').bind("click", function () {
                var Expense = {
                    Category: 'BKP',
                    Description: $('#BKPdescription').val(),
                    Author: $('#BKPauthor').val(),
                    Amount: $('#BKPamount').val()
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
                }, 3000);
            });

            $('#WOKsendExpense').bind("click", function () {
                var Expense = {
                    Category: 'WOK',
                    Description: $('#WOKdescription').val(),
                    Author: $('#WOKauthor').val(),
                    Amount: $('#WOKamount').val()
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
                }, 3000);
            });

            $('#MOOsendExpense').bind("click", function () {
                var Expense = {
                    Category: 'MOO',
                    Description: $('#MOOdescription').val(),
                    Author: $('#MOOauthor').val(),
                    Amount: $('#MOOamount').val()
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
                }, 3000);
            });

            $('#HOMsendExpense').bind("click", function () {
                var Expense = {
                    Category: 'HOM',
                    Description: $('#HOMdescription').val(),
                    Author: $('#HOMauthor').val(),
                    Amount: $('#HOMamount').val()
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
                }, 3000);
            });

            $('#KIDsendExpense').bind("click", function () {
                var Expense = {
                    Category: 'KID',
                    Description: $('#KIDdescription').val(),
                    Author: $('#KIDauthor').val(),
                    Amount: $('#KIDamount').val()
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
                }, 3000);
            });

            $('#KIUsendExpense').bind("click", function () {
                var Expense = {
                    Category: 'KIU',
                    Description: $('#KIUdescription').val(),
                    Author: $('#KIUauthor').val(),
                    Amount: $('#KIUamount').val()
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
                }, 3000);
            });

            $('#KIVsendExpense').bind("click", function () {
                var Expense = {
                    Category: 'KIV',
                    Description: $('#KIVdescription').val(),
                    Author: $('#KIVauthor').val(),
                    Amount: $('#KIVamount').val()
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
                }, 3000);
            });

            $('#QVNsendExpense').bind("click", function () {
                var Expense = {
                    Category: 'QVN',
                    Description: $('#QVNdescription').val(),
                    Author: $('#QVNauthor').val(),
                    Amount: $('#QVNamount').val()
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
                }, 3000);
            });

            $('#FOOsendExpense').bind("click", function () {
                var Expense = {
                    Category: 'FOO',
                    Description: $('#FOOdescription').val(),
                    Author: $('#FOOauthor').val(),
                    Amount: $('#FOOamount').val()
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
                }, 3000);
            });

            $('#COFsendExpense').bind("click", function () {
                var Expense = {
                    Category: 'COF',
                    Description: $('#COFdescription').val(),
                    Author: $('#COFauthor').val(),
                    Amount: $('#COFamount').val()
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
                }, 3000);
            });

            $('#ENJsendExpense').bind("click", function () {
                var Expense = {
                    Category: 'ENJ',
                    Description: $('#ENJdescription').val(),
                    Author: $('#ENJauthor').val(),
                    Amount: $('#ENJamount').val()
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
                }, 3000);
            });

            $('#PEBsendExpense').bind("click", function () {
                var Expense = {
                    Category: 'PEB',
                    Description: $('#PEBdescription').val(),
                    Author: $('#PEBauthor').val(),
                    Amount: $('#PEBamount').val()
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
                }, 3000);
            });

            $('#HLSsendExpense').bind("click", function () {
                var Expense = {
                    Category: 'HLS',
                    Description: $('#HLSdescription').val(),
                    Author: $('#HLSauthor').val(),
                    Amount: $('#HLSamount').val()
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
                }, 3000);
            });

            $('#CLOsendExpense').bind("click", function () {
                var Expense = {
                    Category: 'CLO',
                    Description: $('#CLOdescription').val(),
                    Author: $('#CLOauthor').val(),
                    Amount: $('#CLOamount').val()
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
                }, 3000);
            });

            $('#VIHsendExpense').bind("click", function () {
                var Expense = {
                    Category: 'VIH',
                    Description: $('#VIHdescription').val(),
                    Author: $('#VIHauthor').val(),
                    Amount: $('#VIHamount').val()
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
                }, 3000);
            });

            $('#VLGsendExpense').bind("click", function () {
                var Expense = {
                    Category: 'VLG',
                    Description: $('#VLGdescription').val(),
                    Author: $('#VLGauthor').val(),
                    Amount: $('#VLGamount').val()
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
                }, 3000);
            });

            $('#FRDsendExpense').bind("click", function () {
                var Expense = {
                    Category: 'FRD',
                    Description: $('#FRDdescription').val(),
                    Author: $('#FRDauthor').val(),
                    Amount: $('#FRDamount').val()
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
                }, 3000);
            });

            $('#KSHsendExpense').bind("click", function () {
                var Expense = {
                    Category: 'KSH',
                    Description: $('#KSHdescription').val(),
                    Author: $('#KSHauthor').val(),
                    Amount: $('#KSHamount').val()
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
                }, 3000);
            });

            $('#CEXsendExpense').bind("click", function () {
                var Expense = {
                    Category: 'CEX',
                    Description: $('#CEXdescription').val(),
                    Author: $('#CEXauthor').val(),
                    Amount: $('#CEXamount').val()
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
                }, 3000);
            });

        });// $(document).ready(function () {
    </script>
</body>
</html>
