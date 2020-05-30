var toolpanel = "分享和推荐国内外知名、实用、高质量的IT自学站点,收录国外和国内各类实用IT技术网站,内容涵盖Java、python、C、C++、HTML、Javscript、CSS、...";
var tooladvert=[{img:"img/webadvert/webadvert01.png", href: "https://www.baidu.com/"},{img:"img/webadvert/webadvert02.png", href: "https://www.baidu.com/"},{img:"img/webadvert/webadvert03.png", href: "https://www.baidu.com/"},{img:"img/webadvert/webadvert04.png", href: "https://www.baidu.com/"}];
var toolpagedata,options,tooldatas;
$(function () {
    //更改提示板内容
    $(".tool-panel .panel-body p").text(toolpanel);
    //主要内容-分页功能
    $.ajax({
        url: 'http://127.0.0.1/bootstrap/mobang/ITStudy/php/tool.php', //也可以用$.getJSON()
        type: 'get',
        async:false,
        dataType: "json", //返回json数据    
        success: Tooldata
    });
    $.ajax({
        url: 'http://127.0.0.1/bootstrap/mobang/ITStudy/php/advert.php', //也可以用$.getJSON()
        type: 'get',
        async:false,
        dataType: "json", //返回json数据    
        success: ToolAdverts
    });
    findurl();   
    window.addEventListener('hashchange', function() { 
        findurl(); 
    });

});
//加载工具安装文章内容--分页内容显示
function Tooldata(data){
    tooldatas=data;
    var paging = data;
    $("#article-find .input-group-addon").click(function(){
        $(".article-show").hide();
        $(".tool-all").show();
        var find = $("#article-find .form-control").val();
        // window.location.replace("tool.html");
        pagings= data.filter(function (e) {
            find=find.trim().replace(/\s/g,"").toLowerCase();
             var i =(e.title.toLowerCase().indexOf(find) >= 0);
             return i;
        });
        Paging(pagings);
        $("#article-find .form-control").val("");
    });
    $(document).keydown(function(e) {
        if (e.keyCode == 13) {
            $("#article-find .input-group-addon").trigger("click");
              return false;
        }
    });
    Paging(paging);
}
//主要内容
function Paging(data){
   options = {
        "id": "page", //显示页码的元素
        "data": data, //显示数据
        "maxshowpageitem": 3, //最多显示的页码个数
        "pagelistcount": 8, //每页显示数据个数
        "callBack": function (result) {
            var cHtml = $("#demoContent");
            cHtml.html("");
            for (var i = 0; i < result.length; i++) {
                var txt0 = $("<a></a>");
                var txt1 = $("<div></div>");
                // var txt2 = $("<div></div>");
                // var txt3 = $("<img></img>");
                var txt2 = $("<span></span>");
                var txt4 = $("<div></div>");
                var txt5 = $("<h4></h4>");
                var txt6 = $("<p></p>");
                var txt7 = $("<p></p>");
                var txt8 = $("<span></span>");
                var txt9 = $("<span></span>");
                var txt10 = $("<hr>");
                txt0.attr({
                    "href": "tool.html#tool"+result[i].id
                });
                txt1.attr("class", "media");
                // txt2.attr("class", "media-left media-top");
                // txt3.attr({
                //     "class": "media-object",
                //     "src": result[i].img
                // });
                txt4.attr("class", "media-body");
                txt5.attr("class", "media-heading");
                txt6.attr("class", "media-content");
                txt7.attr("class", "media-about");
                txt8.attr("class", "media-glance");
                txt9.attr("class", "media-time");
                txt2.text(result[i].type);
                txt6.text(result[i].container);
                txt8.text(result[i].glance);
                txt9.text(result[i].time);
                // txt2.append(txt3);
                txt5.append(txt2,result[i].title);
                txt7.append("浏览量：",txt8,"时间：", txt9);
                txt4.append(txt5, txt6,txt7);
                txt0.append(txt4);
                txt1.append(txt0);
                cHtml.append(txt1, txt10);
            }
        }
    };
    page.init(data.length, 1, options);
}
//侧边栏--轮播广告
function ToolAdverts(data){
    var data1 = data.filter(function (e) {
        return e.a_location == "工具轮播-广告";
    });
    for(var i = 0; i< tooladvert.length; i++){
        $(".tooladvert-panel .carousel-inner img").eq(i).attr("src",data1[i].a_img);
        $(".tooladvert-panel .carousel-inner a").eq(i).attr("href",data1[i].a_href);
    }  
    $(".tooladvert-panel .tooladvert-footer button").click(function(){
        $("#tooladvert").carousel($(this).index());
        $(".tooladvert-panel .tooladvert-footer button").css("background-color","#dddddd");
        $(this).css("background-color","#f01414");
        $(this).css("border","0");
    });
    $('#tooladvert').on('slide.bs.carousel', function () {
        var index = ($(".tooladvert-panel .carousel-inner .active").index()+1)%4;
        $(".tooladvert-panel .tooladvert-footer button").css("background-color","#dddddd");
        $(".tooladvert-panel .tooladvert-footer button").eq(index).css("background-color","#f01414");
    });
}
/* 跳转页面定位 */
function findurl() {
    var url = window.location.href;
    if (url.indexOf("#tool") != -1) {
        //从地址中提取技术页面的技术
        var find = url.slice(url.indexOf("#") + 5) ;
        $(".article-show").show();
        $(".tool-all").hide();
        showaeticle(find);
    }else{
        $(".article-show").hide();
        $(".tool-all").show();
    }
}
//文章的显示
function showaeticle(id){
    var data = tooldatas.filter(function (e) {
        return e.id == id;
    });
    $(".article-show .title-article").text(data[0].title);
    $(".article-show .type").text(data[0].type);
    $(".article-show .time").text("最后发布于"+data[0].time);
    $(".article-show .read-count").text("阅读数 "+data[0].glance);
    $(".article-show .article-content>pre").text(data[0].container);
}