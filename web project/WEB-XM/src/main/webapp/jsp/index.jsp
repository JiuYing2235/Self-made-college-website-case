<%@ page pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <style>
        .container {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            display: flex;
            flex-direction: column;
        }

        #main {

            display: flex;
        }

        #article {
            margin: 0 15px;
            height: 100%;
            background: rebeccapurple;
        }

        #sidebar {
            margin: 0 15px;
        }

        #footer {
            margin: 40px 0 0 0;
        }
        ul {
            list-style: none;
        }

        table {
            width: 100%;
            table-layout: fixed;
            border-collapse: collapse;
        }

        table thead {
            background-color: #4A374A;
            color: white;
        }

        table th, table td {
            padding: 8px;
            text-align: center;
            border-bottom: 1px solid #ddd;
        }

        a.at {
            color: #fff;
            padding: 10px 15px;
            text-decoration: none;

        }

        .imgst {
            background: rebeccapurple;
            padding: 20px 35px;
        }
        .button1 {
            display: inline-block;
            padding: 10px 15px;
            border-radius: 5px;
            background-color: #4A374A;
            float: right;
            margin: 50px 50px 0 0;
        }
        #dl {
            text-decoration: none;
            color: #fff;
            text-shadow:0 0 10px;
        }
        .topbox {
            width: 100%;
            height: 100%;
            background: rebeccapurple;
        }
        body {
            background-image: url("./image/wallhaven-dpo38l_1920x1080.png");
            background-repeat: no-repeat;
            background-size:100%;
        }
        tbody td {
            color: #fff;
            text-shadow:0 0 10px;
        }
    </style>
</head>
<body>
<div class="topbox">
    <img src="./image/dlalxy.png" class="imgst">
    <li class="button1"><a href="login" id="dl">登录</a></li>
</div>
<div id="header">
    <%@include file="/jsp/header.jsp" %>
</div>
<div id="lunbo">
    <%@include file="/jsp/lunbotu.jsp" %>
</div>
<div class="container">
    <div id="main">
        <div id="sidebar">
            <%@include file="/jsp/sidebar.jsp" %>
        </div>
        <div id="article">
            <table>
                <thead>
                <tr>
                    <td>新闻公告</td>
                    <td>发布时间</td>
                </tr>
                </thead>
                <tbody>
                <c:forEach items="${newss }" var="u" varStatus="v" begin="0" end="4" step="1" >
                    <tr>
                        <td><a class="at" href="getnews?uid=${u.id }">${u.name }
                        <td>${u.inserttime }</td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
    <div id="footer">
        <%@include file="/jsp/footer.jsp" %>
    </div>
</div>

</body>
</html>