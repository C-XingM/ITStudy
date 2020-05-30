var topNav = [{
    name: "首页",
    href: "index.html"
  },
  {
    name: "技术资源",
    href: "course.html"
  },
  {
    name: "实战项目",
    href: "project.html"
  },
  {
    name: "工具安装",
    href: "tool.html"
  },
  {
    name: "网站推荐",
    href: "webpage.html"
  },
  {
    name: "关于我们",
    href: "about.html"
  }
];
var footNav = [{
    name: "关于我们",
    href: "about.html#about0"
  },
  {
    name: "网站介绍",
    href: "about.html"
  },
  {
    name: "免责声明",
    href: "about.html"
  },
  {
    name: "人才招聘",
    href: "about.html"
  },
  {
    name: "广告服务",
    href: "about.html"
  },
  {
    name: "联系我们",
    href: "about.html"
  }
];
$(function () {
  //局部刷新，加载HTML
  $.ajax({
    url: './style.html',
    type: 'get',
    async: false, //同步，是页面先加载ajax文件在加载js文件。这样就能获取到元素的id和class值了。
    success: function (res) {
      var head = $(res).find('#header');
      var foot = $(res).find('#footer');
      $("#head").html(head);
      $("#foot").html(foot);
    }
  });
  //顶部导航栏内容显示
  $("#styleNavbar ul li").each(function () {
    $(this).find("a").text(topNav[$(this).index() + 1].name);
    $(this).find("a").attr("href", topNav[$(this).index() + 1].href);
  });
  //顶部导航栏高亮显示
  var currenturl = window.location.href;
  for (var x in topNav) {
    if (currenturl.indexOf(topNav[x].href) != -1) {
      $(".my-nav a").css("background-color", "#f01414");
      $(".my-nav a").eq(x).css("background-color", "#b11111");
    }

  }
  //固定导航栏回到顶部
  $(".fixednav .back-top").click(function (e) {
    $('html,body').animate({
      scrollTop: 0
    }, 500);
    e.preventDefault();
  })

});

/*
1.页面加载
  jq的onload()方法 
  $("#head").load("style.html #header");
    $("#foot").load("style.html #footer");  
  ajax异步加载局面页面
  a的href锚链接

2.为什么一定要是div里面的元素？
  find()与children()的区别

3.Ajax 动态载入html页面后不能执行其中的js快速解决方法

4. 使用jquery的委托事件，将该方法委托到页面已经存在的一个节点上
*/