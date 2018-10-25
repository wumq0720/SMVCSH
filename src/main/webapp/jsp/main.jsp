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
<div class="container-fluid bg-success" style="height: 100px"></div>
<div class="row">
    <div class="col-sm-3">
        <%@include file="left.jsp" %>
    </div>
    <div class="col-sm-9">
        <div class="panel panel-default">
            <div class="panel-heading">员工管理</div>
            <div>
                <table class="table table-bordered table-responsive">
                    <thead>
                    <tr>
                        <th>姓名</th>
                        <th>身份证号</th>
                        <th>电话</th>
                        <th>地址</th>
                        <th>操作</th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach items="${persons}" var="p">
                        <tr>
                            <td>${p.name}</td>
                            <td>${p.idCard}</td>
                            <td>${p.phone}</td>
                            <td>${p.address}</td>
                            <td>
                                <a href="<c:url value="/person/edit" />?id=${p.id}">编辑</a>
                                <a href="<c:url value="/person/deletePersonById" />?id=${p.id}" onclick="return confirm('你确定要删除吗？')">删除</a>
                            </td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>
</body>
<script src="<c:url value="/style/js/jquery.js"/>"></script>
<script src="<c:url value="/style/bootstrap/js/bootstrap.min.js"/>"></script>
<script src="<c:url value="/style/js/app.js"/>"></script>
</html>
