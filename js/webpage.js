$(function () {
    $.ajax({
        url: 'http://127.0.0.1/bootstrap/mobang/ITStudy/php/webpage.php', //也可以用$.getJSON()
        async:false,
        dataType: "json", //返回json数据    
        success: function(data){
            $("#webTabContent>ul").each(function () {
                var type = $("#webTab>li>a").eq($(this).index()).text().trim().replace(/\s/g,"");
                var webpagedata = data.filter(function (e) {
                        return e.w_type == type;
                });
                for(var row of webpagedata){
                    var txt1 = $("<li></li>");
                    var txt2 = $("<a></a>");
                    var txt3 = $("<img>");
                    txt1.attr({"class":"list-group-item"})
                    txt2.attr({"href": row.w_href,"target":"_blank"})
                    txt3.attr({"src": row.w_img})
                    txt2.append(txt3);
                    txt2.append(row.w_name);
                    txt1.append(txt2);
                    txt1.append("-- "+row.w_describe);
                    $(this).append(txt1);
                }
            });
        }
    });
    
});
// // console.log(type);
// //去掉空白符.trim().replace(/\s/g,"")