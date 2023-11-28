<%@ page pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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


        .imgst {
            background: rebeccapurple;
            padding: 20px 35px;
        }

        .topbox {
            width: 100%;
            height: 100%;
            background: rebeccapurple;
        }
        body {
            background-image:url("./image/wallhaven-dpo38l_1920x1080.png");
            background-repeat: no-repeat;
            background-size:100%;
        }
        .tit {
            background: plum;
            height: 550px;
            width: 100%;
            display: flex;
        }
        .iim {
            width: 400px;
            height: 240px;
            justify-content: center;
            text-align: center;
        }
        .iim1 {
            flex: 33%;
        }
        .iim2 {
            flex: 33%;
        }
        .iim3 {
            flex: 33%;
        }
        .tit p {
            text-align: center;
            font-size: large;
            font-family: 'Open Sans', sans-serif;
        }
    </style>
</head>
<body>
<div class="topbox">
    <img src="./image/dlalxy.png" class="imgst">
</div>
<div id="header">
    <%@include file="/jsp/header.jsp" %>
</div>
<div class="container">
    <div id="main">
        <div id="sidebar">
            <%@include file="/jsp/sidebar.jsp" %>
        </div>
        <div class="tit">
            <div class="iim1">
                <img src="./image/img_6.png" class="iim">
                <p>小组协作型智慧实验室</p>
            </div>
            <div class="iim2">
                <img src="./image/img_5.png" class="iim">
                <p>案例教学型智慧教室实验室</p>
            </div>
            <div class="iim3">
                <img src="./image/img_4.png" class="iim">
                <p>学术报告厅实验室</p>
            </div>
        </div>
    </div>
    <div id="footer">
        <%@include file="/jsp/footer.jsp" %>
    </div>
</div>
</body>
</html>