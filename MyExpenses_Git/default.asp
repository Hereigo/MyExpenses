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

        #lbl {
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
        <table id="ulValues"></table>
        <hr />
        <table>
            <tr>
                <td>
                    <input type="text" id="categSum" placeholder="error!" maxlength="6" size="6" readonly />
                    <input type="text" id="lbl" value="ALF" maxlength="4" size="4">
                    <input type="text" id="Amount" placeholder="$$$  ->" maxlength="6" size="6">
                    <input type="text" id="isProfit" value="0" maxlength="1" size="1">
                    <input type="text" id="Author" placeholder="Author...">
                    <input type="text" id="Description" placeholder="Description...">
                    <input id="sendExpense" value="Send" type="button">
                </td>
            </tr>
            <tr>
                <td>
                    <input type="text" id="categSum" placeholder="error!" maxlength="6" size="6" readonly />
                    <input type="text" id="lbl" value="PRV" maxlength="4" size="4">
                    <input type="text" id="Amount" placeholder="$$$  ->" maxlength="6" size="6">
                    <input type="text" id="isProfit" value="0" maxlength="1" size="1">
                    <input type="text" id="Author" placeholder="Author...">
                    <input type="text" id="Description" placeholder="Description...">
                    <input id="sendExpense" value="Send" type="button">
                </td>
            </tr>
        </table>
    </div>
    <!-- ----------------- S C R I P T S : ------------------- -->
    <script type="text/javascript">
        $(document).ready(function () {

            window.onload = (function GetAllExpenses() {

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
            })();

            $('#sendExpense').bind("click", GeneralPost);

            function GeneralPost() {

                var Expense = {
                    Category: $('#Category').val(),
                    Description: $('#Description').val(),
                    Author: $('#Author').val(),
                    Amount: $('#Amount').val(),
                    isProfit: $('#isProfit').val()
                };

                $.ajax({
                    type: 'POST',
                    url: '/api/Expenses',
                    data: JSON.stringify(Expense),
                    contentType: 'application/json; charset=utf-8',
                    dataType: 'json'
                });
            }

        });// $(document).ready(function () {
    </script>
</body>
</html>
