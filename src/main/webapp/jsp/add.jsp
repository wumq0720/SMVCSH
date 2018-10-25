<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="<c:url value="/style/bootstrap/css/bootstrap.min.css"/>">
    <link rel="stylesheet" href="<c:url value="/style/bootstrap/css/bootstrap-theme.min.css"/>">
    <link rel="stylesheet" href="<c:url value="/style/css/app.css"/>">
    <title>新增</title>
</head>
<body>
<div class="container-fluid bg-success" style="height: 100px"></div>
<div class="row">
    <div class="col-sm-3">
        <%@include file="left.jsp" %>
    </div>
    <div class="col-sm-9">
        <div class="panel panel-default">
            <div class="panel-heading">员工管理</div>
            <div>
                <form class="form-horizontal" role="form" action="<c:url value="/person/addPerson"/>" method="post">
                    <div class="form-group">
                        <label for="name" class="col-sm-2 control-label">name</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="name" name="name" placeholder="name">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="idCard" class="col-sm-2 control-label">idCard</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="idCard" name="idCard" placeholder="idCard">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="phone" class="col-sm-2 control-label">phone</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="phone" name="phone" placeholder="phone">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="address" class="col-sm-2 control-label">address</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="address" name="address" placeholder="address">
                        </div>
                    </div>

                    <div class="form-group">
                        <div class="col-sm-offset-2 col-sm-10">
                            <button type="submit" class="btn btn-default">保存</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
</body>
<script src="<c:url value="/style/js/jquery.js"/>"></script>
<script src="<c:url value="/style/bootstrap/js/bootstrap.min.js"/>"></script>
<script src="<c:url value="/style/js/app.js"/>"></script>
</html>
