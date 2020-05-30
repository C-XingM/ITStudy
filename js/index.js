var types = [
    ["前沿技术"],
    ["前端开发"],
    ["后端开发"],
    ["移动开发"],
    ["计算机基础", "云计算&大数据"],
    ["运维&测试", "数据库"]
];
var modelbgc = [
    ["img/advert/courseindex01.png"],
    ["img/advert/courseindex02.png"],
    ["img/advert/courseindex03.png"],
    ["./img/advert/courseindex01.png"],
    ["./img/index_model01/model05.png"],
    ["./img/index_model01/model06.png"]
];
var tool = [ ["环境配置问题"],["工具下载问题"],["工具安装问题"],];
$(function () {
    AddHideNav();
    $.ajax({
        url: 'http://127.0.0.1/bootstrap/mobang/ITStudy/php/techology.php', //也可以用$.getJSON()
        dataType: "json", //返回json数据    
        success: TypeData
    });

    $.ajax({
        url: 'http://127.0.0.1/bootstrap/mobang/ITStudy/php/advertIndex.php', //也可以用$.getJSON()
        dataType: "json", //返回json数据    
        success: AdvertData
    });

    $.ajax({
        url: 'http://127.0.0.1/bootstrap/mobang/ITStudy/php/advert.php', //也可以用$.getJSON()
        dataType: "json", //返回json数据    
        success: AdvertCarousel
    });
    $.ajax({
        url: 'http://127.0.0.1/bootstrap/mobang/ITStudy/php/project.php', //也可以用$.getJSON()
        dataType: "json", //返回json数据    
        success: project
    });
    $.ajax({
        url: 'http://127.0.0.1/bootstrap/mobang/ITStudy/php/webpage.php', //也可以用$.getJSON()
        dataType: "json", //返回json数据    
        success: webpage
    });
    $.ajax({
        url: 'http://127.0.0.1/bootstrap/mobang/ITStudy/php/tool.php', //也可以用$.getJSON()
        dataType: "json", //返回json数据    
        success: Tool
    });

    HideNav();
    /* 底部广告关闭 */
    $(".fixedadvert i").click(function () {
        $(".fixedadvert").hide();
    });

});
/* 加载首页图片 */
function AdvertCarousel(data){
    /* 加载首页轮播图图片 */
    var advertCarousel = data.filter(function (e) {
        return e.a_location == "首页轮播-广告";
    });
    $("#indexCarousel .carousel-inner .item").each(function(){
        $(this).find("a").attr("href",advertCarousel[$(this).index()].a_href);
        $(this).find("img").attr("src",advertCarousel[$(this).index()].a_img);
    });
    /* 加载首页免费课程图片 */
    var indexCarousel = data.filter(function (e) {
        return e.a_location == "首页课程-广告";
    });
   $(".model01 .row>div").each(function () {
        $(this).css({"background-image":"url(./"+indexCarousel[$(this).index()].a_img+")"});
        $(this).find("a").attr("href",indexCarousel[$(this).index()].a_href);
    });
}
//隐藏的分类菜单显示和隐藏
function HideNav() {
    $(".carousel-nav li").hover(function () {
        $('.carousel-rightnav').eq($(this).index()).show();
    }, function () {
        $('.carousel-rightnav').eq($(this).index()).hide();

    });

    $(".carousel-rightnav").hover(function () {
        $(this).show();
    }, function () {
        $(this).hide();
    });
}
// 动态添加隐藏的分类菜单
function AddHideNav() {
    for (var x = 0; x < types.length; x++) {
        var txt1 = $("<div></div>");
        var txt2 = $("<div></div>");
        txt1.attr("class", "carousel-rightnav");
        txt2.attr("class", "rightnav-top");
        for (var y = 0; y < types[x].length; y++) {
            var txt3 = $("<h5></h5>");
            txt3.text(types[x][y]);
            txt2.append(txt3);
        }
        txt1.append(txt2);
        $(".carousel-nav").append(txt1);
    }
}
//隐藏的分类菜单技术内容加载
function TypeData(data) {
    $(".rightnav-top h5").each(function () {
        var txt1 = $("<div></div>");
        var type = $(this).text();
        var type_data = data.filter(function (e) {
            return e.t_type == type;
        });
        for (var row of type_data) {
            var txt2 = $("<a></a>");
            txt2.attr("href", "course.html#typecode" + row.t_Ename);
            txt2.text(row.t_name);
            txt1.append(txt2);
        }
        $(this).after(txt1);
    });
}
//隐藏的分类菜单广告内容加载
function AdvertData(data) {
    var row = 0;
    $(".rightnav-top").each(function () {
        var txt0 = $("<div></div>");
        txt0.attr("class", "rightnav-bottom");

        for (var i = 0; i < 4; i++,row++) {
            var txt1 = $("<div></div>");
            var txt2 = $("<div></div>");
            var txt3 = $("<img></img>");
            var txt4 = $("<div></div>");
            var txt5 = $("<span></span>");
            var txt6 = $("<p></p>");
            var txt7 = $("<strong></strong>");
            var txt8 = $("<span></span>");
            var txt9 = $("<span></span>");
            txt1.attr("class", "media");
            txt2.attr("class", "media-left media-middle");
            txt3.attr({"class": "media-object","src": data[row].a_img});
            txt4.attr("class", "media-body");
            txt5.text(data[row].a_name);
            txt7.text("￥" + Number(data[row].a_money) + ".00");
            txt8.text(data[row].a_level);
            txt9.text(data[row].a_course + "节/" + data[row].a_time + "小时");

            txt6.append(txt7, txt8, txt9);
            txt4.append(txt5, txt6);
            txt2.append(txt3);
            txt1.append(txt2, txt4);
            txt0.append(txt1);
            if((row+1)==data.length){
              i=5;
            }
        }
        $(this).after(txt0);
    });
}
//加载实战项目信息--内容显示
function project(data) {
    var row=0;
    var x = (8<=data.length)?8:data.length;
    for (var i = 0 ; i < x; i++,row++) {
        /* var txt = $("<a></a>");
        var txt0 = $("<div></div>");
        var txt1 = $("<div></div>");
        var txt2 = $("<img></img>");
        var txt3 = $("<div></div>");
        var txt4 = $("<p></p>");
        var txt5 = $("<strong></strong>");
        var txt6 = $("<p></p>");
        var txt7 = $("<span></span>");
        var txt8 = $("<span></span>");
        var txt9 = $("<span></span>");
        var txt10 = $("<i></i>");
        txt.attr("class", "projecthref");
        txt.attr("href", "project.html#project"+data[row].id);
        txt0.attr("class", "col-xs-2 col-sm-4");
        txt1.attr("class", "img");
        txt2.attr("src", data[row].a_img);
        txt4.attr({
            "data-toggle": "tooltip",
            "title": data[row].a_name
        });
        txt5.attr("class", "name");
        txt7.attr("class", "level");
        txt8.attr("class", "course");
        txt9.attr("class", "watch");
        txt5.text(data[row].a_name);
        txt7.text(data[row].a_level);
        txt8.text(data[row].a_course + "节") ;//+ row.a_time + "/小时"
        txt10.attr("class", "fa fa-user-o");
        txt9.append(txt10, data[row].a_watch)
        txt6.append(txt7, txt8, txt9);
        txt4.append(txt5);
        txt3.append(txt4, txt6);//, txt11
        txt1.append(txt2);
        txt0.append(txt1, txt3);
        txt.append(txt0) */
          var txt = $("<a></a>");
          var txt0 = $("<div></div>");
          var txt1 = $("<div></div>");
          var txt2 = $("<img></img>");
          var txt3 = $("<div></div>");
          var txt4 = $("<p></p>");
          var txt5 = $("<strong></strong>");
          var txt6 = $("<p></p>");
          var txt7 = $("<span></span>");
          var txt8 = $("<span></span>");
          var txt9 = $("<span></span>");
          var txt10 = $("<i></i>");
          txt.attr("href", "project.html#project"+data[row].id);
          txt0.attr("class", "col-xs-2 col-sm-4");
          txt1.attr("class", "img");
          txt2.attr("src", data[row].a_img);
          txt4.attr({
              "data-toggle": "tooltip",
              "title": data[row].a_name
          });
          txt5.attr("class", "name");
          txt7.attr("class", "level");
          txt8.attr("class", "course");
          txt9.attr("class", "watch");
          txt5.text(data[row].a_name);
          txt7.text(data[row].a_level);
          txt8.text(data[row].a_course + "节") ;//+ row.a_time + "/小时"
          txt10.attr("class", "fa fa-user-o");
          txt9.append(txt10, "96")
          txt6.append(txt7, txt8, txt9);
          txt4.append(txt5);
          txt3.append(txt4, txt6);//, txt11
          txt1.append(txt2);
          txt0.append(txt1, txt3);
          txt.append(txt0)
        $(".model02 .row").append(txt);
    }
}
//加载工具安装信息--内容显示
function Tool(data) {
    var row = 0;
    for(var i = 0 ; i < 3; i++){
        var txt1 = $("<div></div>");
        var txt2 = $("<div></div>");
        var txt3 = $("<div></div>");
        var txt4 = $("<h3></h3>");
        var txt5 = $("<div></div>");
        var txt6 = $("<img></img>");
        txt1.attr("class", "col col-sm-3");
        txt2.attr("class", "panel panel-default");
        txt3.attr("class", "panel-heading");
        txt4.attr("class", "panel-title");
        txt5.attr("class", "panel-body");
        txt6.attr("src", "img/web/question01.jpg");
        txt4.text(tool[i]);
        txt5.append(txt6);
        for(var z = 0 ; z < 4; z++,row++){
            var txt7 = $("<a></a>");
            txt7.attr("href", "tool.html#tool"+data[row].id);
            txt7.text("▪ "+data[row].title);
            txt5.append(txt7);
        }
        txt3.append(txt4)
        txt2.append(txt3,txt5);
        txt1.append(txt2);
        $(".model03>.row").append(txt1);
        
    }
    
}
//加载网站推荐信息--内容显示
function webpage(data) {
    var rows=0;
    var x = (24<=data.length)?24:data.length;
    for (var i = 0 ; i < x; i++,rows++) {
        var txt1 = $("<div></div>");
        var txt2 = $("<div></div>");
        var txt3 = $("<a></a>");
        txt1.css("background-image", "url(./"+data[rows].w_img+")");
        txt1.attr("class", "webpage");
        txt2.attr("class", "shadow");
        txt3.attr({"href":data[rows].w_href,"target":"_blank"});
        txt3.text(data[rows].w_name);
        txt2.append(txt3)
        txt1.append(txt2);
        $(".model04 .index-webpage").append(txt1);
    }

    var width = $(".model04 .index-webpage").width();
        var index = width/80;
        var over = width%80;
        var marginw =over/(index*2);
        for(;marginw<5;){
            marginw = over/(index*2);
            index = index -1;
            over = width-(index*80);
        }
        $(".model04 .index-webpage>div").css("margin",marginw+"px");

    $(window).resize(function(){				         //  监控窗口宽度变化
        var width = $(".model04 .index-webpage").width();
        var index = width/80;
        var over = width%80;
        var marginw =over/(index*2);
        for(;marginw<5;){
            marginw = over/(index*2);
            index = index -1;
            over = width-(index*80);
        }
        $(".model04 .index-webpage>div").css("margin",marginw+"px");
    });
}