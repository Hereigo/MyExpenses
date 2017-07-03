$(document).ready(function () {

    var myValues = $('#ulValues');

    $('#btn').click(function () {
        $.ajax({
            type: "GET",
            url: "/api/Expenses",
            dataType: "json",
            success: function (data) {
                $.each(data, function (index, val) {
                    //var currVal = val.id + ' - ' + val.Created + ' - ' + val.Category + ' - ' + val.Description;
                    //myValues.append('<li>' + currVal + '</li>');
                    myValues.append('<li>' + val + '</li>');
                });
            }
        });
    });
});