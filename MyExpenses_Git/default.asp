<html>
<head>
    <title>My Expenses</title>
    <meta charset="utf-8">
    <meta name="keywords" content="asp.net sql asp .net hosting ajax 4.5 3.5 2.0 1.1 MSSQL2014 MSSQL2012 components windows webhosting framework iis7 iis8 iis8.5">
    <meta name="description" content="ASP.NET hosting, SQL hosting, AJAX Hosting, Silverlight hosting, LINQ Hosting, Microsoft Windows 2012 hosting, iis8 hosting, Windows 2012 R2 hosting, iis8.5 hosting.">
    <script src="Scripts/jquery-3.1.1.min.js"></script>
</head>
<body>
    <div>
        <table>
            <tr>
                <td>
                    <a href="/api/Expenses">Api_Expenses</a>
                    <br />
                    <br />
                    <input id="btn" type="button" value="Get All Values!" />
                    <br />
                    <br />
                    <ul id="ulValues"></ul>

                    <input type="text" id="Category" placeholder="Category...">
                    <br />
                    <input type="text" id="Description" placeholder="Description...">
                    <br />
                    <input type="text" id="Author" placeholder="Author...">
                    <br />
                    <input id="sendExpense" value="Send" type="button">
                </td>
            </tr>
        </table>
    </div>
    <!-- S C R I P T S : -->
    <script type="text/javascript">
        $(document).ready(function () {

            var myValues = $('#ulValues');

            $('#btn').click(function () {
                $.ajax({
                    type: "GET",
                    url: "/api/Expenses",
                    dataType: "json",
                    success: function (data) {
                        $.each(data, function (index, Expense) {
                            var currVal = Expense.id + ' - ' + Expense.Created + ' - ' +
                                Expense.Category + ' - ' + Expense.Description + ' - ' + Expense.Author;
                            myValues.append('<li>' + currVal + '</li>');
                        });
                    }
                });
            });

            $('#sendExpense').bind("click", GeneralPost);

            var Expense = {
                Category: $('#Category').val(),
                Description: $('#Description').val(),
                Author: $('#Author').val()
            };

            function GeneralPost() {
                $.ajax({
                    type: 'POST',
                    url: '/api/Expenses',
                    data: JSON.stringify(Expense),
                    contentType: 'application/json; charset=utf-8',
                    dataType: 'json'
                });
            }
        });
    </script>
</body>
</html>
