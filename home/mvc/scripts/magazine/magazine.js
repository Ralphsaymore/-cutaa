$(function () {
    var page = 1;
    var pageSize = $("#hiddPageSize").val();
    GetManazines(page,pageSize)
});


function GetManazines(page,pageSize)
{
    var url = "/api/MagazineApi/GetManazines?page=" + page + "&pageSize=" + pageSize;
    $.post(url, function (data) {
        $("#magazines").empty();
        $("#magazines").append(data);
        $("#viewall").remove();

    })
}