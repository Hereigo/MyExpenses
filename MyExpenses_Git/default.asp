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
                    <input type="text" id="ALFcatSum" placeholder="error!" maxlength="6" size="6" readonly />
                    <label>ALF </label>
                    <input type="text" id="ALFamount" placeholder="$$$  ->" maxlength="6" size="6">
                    <input type="text" id="ALFisProfit" placeholder="0" maxlength="1" size="1">
                    <input type="text" id="ALFauthor" placeholder="Author...">
                    <input type="text" id="ALFdescription" placeholder="Description...">
                    <input type="button" id="ALFsendExpense" value="Send">
                </td>
            </tr>
            <tr>
                <td>
                    <input type="text" id="PRVcatSum" placeholder="error!" maxlength="6" size="6" readonly />
                    <label>PRV </label>
                    <input type="text" id="PRVamount" placeholder="$$$  ->" maxlength="6" size="6">
                    <input type="text" id="PRVisProfit" placeholder="0" maxlength="1" size="1">
                    <input type="text" id="PRVauthor" placeholder="Author...">
                    <input type="text" id="PRVdescription" placeholder="Description...">
                    <input type="button" id="PRVsendExpense" value="Send">
                </td>
            </tr>
        </table>
        <hr />
        <table id="ulValues"></table>
    </div>
    <!-- ----------------- S C R I P T S : ------------------- -->
    <script type="text/javascript">
        $(document).ready(function () {

            window.onload = (function GetAllExpenses() {

                clearTableFields();

                var myValues = $('#ulValues');
                myValues.empty();
                $.ajax({
                    type: "GET",
                    url: "/api/Expenses",
                    dataType: "json",
                    success: function (data) {
                        $.each(data, function (index, Expense) {
                            var fullStr = "";
                            myValues.append('<tr><td>' + Expense.id + '</td><td>' + Expense.Created + '</td><td>' +
                                Expense.Amount + '</td><td>' + Expense.isProfit + '</td><td>' +
                                Expense.Category + '</td><td>' + Expense.Description + '</td><td>' +
                                Expense.Author + '</td></tr>');
                        });
                    }
                });

                function clearTableFields() {
                    var container, inputs, index;
                    container = document.getElementById('xpensTbl');
                    inputs = container.getElementsByTagName('input');
                    for (index = 0; index < inputs.length; ++index) {
                        if (inputs[index].type == "text")
                            inputs[index].value = '';
                    }
                };

                // TODO: 
                // Fill the table !!!

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
                }, 5000);
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
                }, 5000);
            });

        });// $(document).ready(function () {
    </script>
</body>
</html>
