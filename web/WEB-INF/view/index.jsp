<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2015/3/4
  Time: 15:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head lang="en">
  <meta charset="UTF-8">
  <title>博客系统</title>
  <link rel="stylesheet" href="${contextPath}/css/bootstrap.css"/>
  <link rel="stylesheet" href="${contextPath}/css/bootstrap-theme.css"/>
</head>
<body>
<div class="container-fluid">
    <div class="row">
  <h1><strong><em>My-Blog</em></strong></h1>
</div>
    <div class="row">
  <nav class="navbar navbar-inverse">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <a class="navbar-brand" href="#">首页</a>
    </div>

    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav">
        <li class="active"><a href="#">发表博客<span class="sr-only">(current)</span></a></li>
        <li><a href="#">留言</a></li>
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">个人中心
            <span class="caret"></span></a>
          <ul class="dropdown-menu" role="menu">
            <li><a href="#">空间</a></li>
            <li><a href="#">我的博客</a></li>
            <li><a href="#">设置</a></li>
          </ul>
        </li>
      </ul>

      <form class="navbar-form navbar-left">
        <div class="form-group">
          <input type="text" class="form-control" placeholder="热门话题...">
        </div>
        <button type="submit" class="btn btn-default">搜索</button>
      </form>

          <ul class="nav navbar-nav navbar-right">
              <c:if test="${login_user.username != null}">
                  <li><span class="navbar-text">欢迎您：${login_user.username}</span></li>
                  <li>
                      <a href="${contextPath}/admin/loginOut">退出</a>
                  </li>
              </c:if>
              <c:if test="${login_user.username == null}">
                  <li><a href="${contextPath}/admin">登录</a></li>
              </c:if>
          </ul>
    </div>
  </nav>
</div>
    </div>
<!--<div>
    <div class="pull-left">
        <div class="row text-center">
            <span class="text-info"><b>本周最受欢迎TOP</b></span>
        </div>
        <div class="row">
            <div class="col-md-6">
                <div class="row text-center">
                    <img class="circle" width="100" height="100" src="dog.jpg" alt="Responsive image">
                </div>
                <div class="row text-center">用户1</div>
            </div>
            <div class="col-md-6">
                <div class="row text-center">
                    <img class="circle" width="100" height="100" src="dog.jpg" alt="Responsive image">
                </div>
                <div class="row text-center">用户2</div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-6">
                <div class="row text-center">
                    <img class="circle" width="100" height="100" src="dog.jpg" alt="Responsive image">
                </div>
                <div class="row text-center">用户3</div>
            </div>
            <div class="col-md-6">
                <div class="row text-center">
                    <img class="circle" width="100" height="100" src="dog.jpg" alt="Responsive image">
                </div>
                <div class="row text-center">用户3</div>
            </div>
        </div>
    </div>
    <div class="pull-right">
        <div class="col-md-4">
            <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
                &lt;!&ndash; Wrapper for slides &ndash;&gt;
                <div class="carousel-inner" role="listbox">
                    <div class="item active">
                        <img class="circle" src="blog_title.jpg" alt="Responsive image">

                        <div class="carousel-caption">图片1</div>
                    </div>
                    <div class="item">
                        <img class="circle" src="blog_title.jpg" alt="Responsive image">

                        <div class="carousel-caption">图片1</div>
                    </div>
                </div>

                &lt;!&ndash; Controls &ndash;&gt;
                <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
                    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                    <span class="sr-only">Previous</span>
                </a>
                <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
                    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                    <span class="sr-only">Next</span>
                </a>
            </div>
        </div>
    </div>
</div>-->
</div>
<script src="${contextPath}/js/jquery-2.1.1.js"></script>
<script src="${contextPath}/js/bootstrap.js"></script>
<script>

</script>
</body>
</html>