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
    <%--引入页面头部的jsp文件--%>
    <%@include file="head.jsp"%>

    <div class="row">
        <div class="col-md-4"></div>
        <div class="col-md-4">
            <span class="text-danger">${loginInfo}</span>

            <form action="${contextPath}/admin/login" method="post">
                <div class="form-group">
                    <div class="input-group">
                        <span class="input-group-addon glyphicon glyphicon-user"></span>
                        <input type="text" id="username" name="user.username" class="form-control" required="required"
                               placeholder="邮箱/账号"/>
                    </div>
                </div>
                <div class="form-group">
                    <div class="input-group">
                        <span class="input-group-addon glyphicon glyphicon-lock"></span>
                        <input type="password" id="password" name="user.password" required="required" class="form-control"
                               placeholder="请输入密码"/>
                        <a href="#" class="input-group-addon">忘记密码?</a>
                    </div>
                </div>
                <div class="checkbox">
                    <label>
                        <input type="checkbox" name="remind">记住登录信息<span class="text-danger">（请勿在公用电脑或者网吧内使用此项）</span>
                    </label>
                </div>
                <div class="form-group">
                    <div class="row">
                        <div class="col-md-3">
                            <button type="submit" class="btn btn-info btn-block">登录</button>
                        </div>
                        <div class="col-md-3">
                            <a data-toggle="modal" href="#register" class="btn btn-info btn-block" role="button">注册</a>
                        </div>
                    </div>
                </div>
            </form>
        </div>
    </div>


<%-- 注册页面 --%>
    <form action="${contextPath}/admin/register" method="post">
        <div class="modal fade" id="register">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header text-center">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                                aria-hidden="true">&times;</span></button>
                        <h4 class="modal-title text-info"><b>用户注册</b></h4>
                    </div>
                    <div class="modal-body form-group">

                        <div class="row">
                            <div class="col-lg-6">
                                <label for="register_username">用户名</label>
                                <input type="text" class="form-control" id="register_username" name="reg.username"
                                       required="required" onblur="checkUserName();" autofocus="true"/>
                                <span class="text-danger" id="register_info"></span>
                            </div>
                            <div class="col-lg-6">
                                <label for="register_password">密码</label>
                                <input type="text" class="form-control" id="register_password" name="reg.password"
                                       required="required"/>
                            </div>
                        </div>
                        <div class="row">&nbsp;</div>
                        <div class="row">
                            <div class="col-lg-6">
                                <label for="register_sex">性别</label>
                                <select name="reg.sex" id="register_sex" class="form-control">
                                    <option value="0" selected>男</option>
                                    <option value="1">女</option>
                                </select>
                            </div>
                            <div class="col-lg-6">
                                <label for="register_email">E-mail</label>
                                <input type="email" id="register_email" class="form-control" name="reg.email"/>
                            </div>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                        <button type="submit" class="btn btn-primary">提交</button>
                    </div>
                </div>
            </div>
        </div>
    </form>
</div>


<script src="${contextPath}/js/jquery-2.1.1.js"></script>
<script src="${contextPath}/js/bootstrap.js"></script>
<script>
    function checkUserName() {
        if($("#register_username").val() == '' || $("#register_username").val() == null){
            return;
        }
        $("#register_info").text("");
        $.ajax({
                    url:'${contextPath}/admin/checkUserName?username=' + $("#register_username").val(),
                    method:'get',
                    async:true,
                    dataType:'json',
                    success:function(data){
                        $("#register_info").text(data.checkInfo);

                    },
                    error: function (xhr) {
                        alert(xhr.responseText);
                    }
                }
        );
    }
</script>
</body>
</html>
