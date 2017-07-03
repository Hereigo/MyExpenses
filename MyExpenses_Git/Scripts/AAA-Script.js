$(document).ready(function () {

    var myValues = $('#ulValues');

    $('#btn').click(function () {
        $.ajax({
            type: "GET",
            url: "/api/Expenses",
            dataType: "json",
            success: function (data) {
                $.each(data, function (index, Expense) {

                    //TODO:  GET VALUES FROM OBJECT !!!

                    //var currVal = Expense.id + ' - ' + Expense.Created + ' - ' + Expense.Category + ' - ' + Expense.Description;
                    //myValues.append('<li>' + currVal + '</li>');

                    myValues.append('<li>' + Expense + '</li>');
                });
            }
        });
    });
});