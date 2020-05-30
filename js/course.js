var navCode = ["java应用技术", "操作系统原理", "机器学习", "软件工程", "数字图像"];
var codelist = ["【教学书籍】", "【教学PPT】", "【实验报告】", "【课程设计】", "【期末试卷】"];
var codelistname = ["book", "PPT", "word", "design", "test"];
var codelistword = ["教学书籍，是依据课程标准编制的、系统反映学科内容的教学用书",
    "PPT，在投影仪或者计算机上进行演示，也可以将演示文稿打印出来，制作成胶片，以便应用到更广泛的领域中",
    "实验报告是把实验的目的、方法、过程、结果等记录下来，经过整理，写成的书面汇报。",
    "课程设计(Curriculum design):是一个有目的、有计划、有结构的产生课程计划(教学计划)、课程标准(教学大纲)以及教材等系统化活动。",
    "大学资格考试中用以检验考生有关知识能力而进行评估的工具之一"
];
var types = [
    [{
        name: "前沿技术",
        Ename: "Cutting-edge"
    }],
    [{
        name: "前端开发",
        Ename: "Web"
    }],
    [{
        name: "后端开发",
        Ename: "backstage-supporter"
    }],
    [{
        name: "移动开发",
        Ename: "Mobile-development"
    }],
    [{
        name: "计算机基础",
        Ename: "Computer-Base"
    }, {
        name: "云计算&大数据",
        Ename: "Megadata"
    }],
    [{
        name: "运维&测试",
        Ename: "Operations"
    }, {
        name: "数据库",
        Ename: "Database"
    }]
];
var typesdata;
var codedata;
$(function () {
    $.ajax({
        url: 'http://127.0.0.1/bootstrap/mobang/ITStudy/php/techology.php', //也可以用$.getJSON()
        async:false,
        dataType: "json", //返回json数据    
        success: TypeNav
    });
    $.ajax({
        url: 'http://127.0.0.1/bootstrap/mobang/ITStudy/php/download.php', //也可以用$.getJSON()
        async:false,
        dataType: "json", //返回json数据    
        success: codeList
    });
    
    //顶部导航栏高亮显示
    NavClick();
    findurl();
    //给模态框传值
    $(".course-main .code").click(function(){
        //获取div的name属性的值
        var value = $(this).attr("name");
        var name = value.slice(0,value.indexOf(","));
        var url = "http://127.0.0.1:5500/"+value.slice(value.indexOf(",")+1)
        $("#courseModal .modal-body").text("你确定要下载【"+name+"】的相关学习资料？");
        $("#courseModal .modal-footer .btn-primary").click(function(){
            //直接下载，用户体验好
            var $form = $('<form method="GET"></form>');
            $form.attr('action', url);
            $form.appendTo($('body'));
            $form.submit();
            //空白页下载
            //window.open(url);
            $("#courseModal .modal-header .close").trigger("click");

        });
    });
});
/* 跳转页面定位 */
function findurl() {
    var url = window.location.href;
    if (url.indexOf("#") != -1 && url[url.length-1] != "#") {
        //从地址中提取技术页面的技术
        var find = url.slice(url.indexOf("#") + 9) ;
        //查找技术的类别
        var type_data = typesdata.filter(function (e) {
            return e.t_Ename == find;
        });
        codeListxy(type_data[0].t_type);
        //window.location.href=(url.slice(url.indexOf("#")));//锚定位
        $("[href=\'"+url.slice(url.indexOf("#"))+"\']").trigger("click");
    }else{
        codeListx();
    }
}
/* 加载下载内容 */
function codeList(data) {
    codedata=data;
    codeListx(data);
}
/* 动态添加侧边导航栏 */
function TypeNav(data) {
    typesdata = data;
    for (var x = 0; x < types.length; x++) {
        for (var y = 0; y < types[x].length; y++) {
            var txt1 = $("<li></li>");
            var txt2 = $("<a></a>");
            var txt3 = $("<ul></ul>");
            txt2.attr({
                "data-toggle": "collapse",
                "data-target": "#typenav" + types[x][y].Ename
            });
            //txt2.attr("href", "#"); txt2.attr("href", types[x][y]) 滚动监听，锚点
            txt2.text(types[x][y].name);
            txt3.attr({
                "class": "nav nav-pills nav-stacked collapse", //
                "id": "typenav" + types[x][y].Ename
            });
            txt1.append(txt2);
            txt1.append(txt3);
            $(".course-nav").append(txt1);
            var type_data = data.filter(function (e) {
                return e.t_type == types[x][y].name;
            });
            for (var row = 0; row < type_data.length; row++) {
                var txt4 = $("<li></li>");
                var txt5 = $("<a></a>");
                txt5.attr("href", "#typecode" + type_data[row].t_Ename);
                txt5.text(type_data[row].t_name);
                txt4.append(txt5);
                txt3.append(txt4);
            }
        }
    }
}
/*侧边导航栏点击事件*/
function NavClick() {
    $(".course-nav>li:eq(0)>a").click(function () {
        $(".course-main").empty();
        $(".course-nav li:gt(0) a").css({
            "background-color": "#ffffff",
            "color": "#333333"
        });
        codeListx();
    });

    $(".course-nav>li:gt(0) ul li a").click(function () {
        $(".course-main").empty();
        $(".course-nav>li:gt(0) a").css({
            "background-color": "#ffffff",
            "color": "#333333"
        });
        $(this).parent().parent().siblings("a").css({
            "background-color": "#eeeeee"
            // "background-color": "#f01414",
            // "color": "#ffffff"
        });
        $(this).css({
            "background-color": "#eeeeee"
            // "background-color": "#f36060",
            // "color": "#ffffff"
        });
        codeListxy($(this).parent().parent().siblings("a").text());
    });
}
/*动态添加内容模块--选中*/
function codeListxy(typex) {
    //筛选一级技术对应的二级技术，例如前沿技术-微服务等
    var type_data = typesdata.filter(function (e) {
        return e.t_type == typex;
    });
    //加载一级技术模块
    for (var row of type_data) {
        var txt1 = $("<div></div>");
        var txt2 = $("<h2></h2>");
        var txt3 = $("<i></i>");
        txt3.attr("class", "glyphicon glyphicon-th-large");
        txt3.append("&nbsp;" + row.t_name);
        txt1.attr("class", "codelist");
        txt1.attr("id", "typecode" + row.t_Ename); //滚动监听，锚点
        txt2.append(txt3);
        txt1.append(txt2);
        //筛选二级技术的三级技术，例如微服务-
        var type_datas = codedata.filter(function (e) {
            return e.l_type == row.t_name;
        });
        //alert(JSON.stringify(type_datas)); 
        for (var rowz of type_datas) {
            var txt4 = $("<div></div>");
            var txt5 = $("<h4></h4>");
            var txt6 = $("<img></img>");
            var txt7 = $("<strong></strong>");
            txt4.attr("class", "code");
            /*动态添加模态框---动态框传值*/
            txt4.attr({"data-toggle": "modal","data-target":"#courseModal","name":rowz.l_name+","+rowz.l_download});
            //txt4.attr("id", "code" + x);
            txt5.text("【"+rowz.l_name+"】");
            txt6.attr("src", rowz.l_img);
            txt7.text(rowz.l_describe);
            txt4.append(txt5, txt6, txt7);
            txt1.append(txt4);
        }

        $(".course-main").append(txt1);

    }
}
/*动态添加内容模块--全部*/
function codeListx() {
    for (x in types) {
        for (y in types[x]) {
            var txt1 = $("<div></div>");
            var txt2 = $("<h2></h2>");
            var txt3 = $("<i></i>");
            txt3.attr("class", "glyphicon glyphicon-th-large");
            txt3.append("&nbsp;" + types[x][y].name);
            txt1.attr("class", "codelist");
            //txt1.attr("id", types[x][y]); //滚动监听，锚点
            txt2.append(txt3);
            txt1.append(txt2);
            var codedatas = codedata.filter(function (e) {
                return e.l_types == types[x][y].name;
            });
            // 
            for (var rowz of codedatas) {
                var txt4 = $("<div></div>");
                var txt5 = $("<h4></h4>");
                var txt6 = $("<img></img>");
                var txt7 = $("<strong></strong>");
                txt4.attr("class", "code");
                /*动态添加模态框---动态框传值*/
                txt4.attr({"data-toggle": "modal","data-target":"#courseModal","name":rowz.l_name+","+rowz.l_download});
                //txt4.attr("id", "code" + x);
                txt5.text("【"+rowz.l_name+"】");
                txt6.attr("src", rowz.l_img);
                txt7.text(rowz.l_describe);
                txt4.append(txt5, txt6, txt7);
                txt1.append(txt4);
            }

            $(".course-main").append(txt1);
        }

    }
}

//alert(JSON.stringify(typesdata)); 打印JSON数据