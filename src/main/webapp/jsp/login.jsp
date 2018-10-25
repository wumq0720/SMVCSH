<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="<c:url value="/style/bootstrap/css/bootstrap.min.css"/>">
    <link rel="stylesheet" href="<c:url value="/style/bootstrap/css/bootstrap-theme.min.css"/>">
    <link rel="stylesheet" href="<c:url value="/style/css/app.css"/>">
    <title>登录</title>
</head>
<body>
<div class="container-fluid bg-primary" style="height: 200px"></div>
<div class="container mt10" style="width: 600px">
    <div class="panel panel-primary">
        <div class="panel-heading">登录</div>
        <div class="panel-body">
            <form class="form-horizontal" role="form" method="post" action="<c:url value="/person/doLogin"/>/">
                <div class="form-group">
                    <label class="col-sm-5 control-label text-danger">${error}</label>
                </div>
                <div class="form-group">
                    <label for="userName" class="col-sm-2 control-label">用户名</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="userName" name="userName" placeholder="username"
                               value="admin">
                    </div>
                </div>
                <div class="form-group">
                    <label for="passWord" class="col-sm-2 control-label">密码</label>
                    <div class="col-sm-10">
                        <input type="password" class="form-control" id="passWord" name="passWord"
                               placeholder="password" value="admin">
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-sm-offset-2 col-sm-3">
                        <button type="submit" class="btn btn-primary btn-block"><i
                                class="glyphicon glyphicon-log-in"></i> 登录
                        </button>
                    </div>
                    <div class="col-sm-offset-3 col-sm-3 ">
                        <button type="reset" class="btn btn-primary btn-block"><i
                                class="glyphicon glyphicon-refresh"></i> 重置
                        </button>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>
</body>
<script src="<c:url value="/style/js/jquery.js"/>"></script>
<script src="<c:url value="/style/bootstrap/js/bootstrap.min.js"/>"></script>
<script src="<c:url value="/style/js/app.js"/>"></script>
</html>
