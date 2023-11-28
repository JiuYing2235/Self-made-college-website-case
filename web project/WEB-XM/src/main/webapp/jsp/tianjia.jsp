<%@ page pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <c:url var="base" value="/"/>
    <base href="${base}">
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
        form {
            width: 100%;
            background: plum;
            opacity: 0.5;
            height: 550px;
            text-align: center;
            list-style:none;
        }
        .bt,.nr {
            color: black;
            font-size: medium;
        }
        .inp {
            width: 80%;
        }
        button {
            -webkit-transition-duration: 0.4s; /* Safari */
            transition-duration: 0.4s;
            width: 50px;
            height: 30px;
        }

        button:hover {
            background-color: #4CAF50; /* Green */
            color: white;
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
        <form action="update" method="post">
            <h2 class="bt">新闻标题:</h2><input type="text" name="name" class="inp" required></br>
            <h2 class="nr">新闻内容:</h2><textarea cols="150" rows="30" name="content" required></textarea>
            <br>
            <button type="submit">提交</button>
        </form>
    </div>
    <div id="footer">
        <%@include file="/jsp/footer.jsp" %>
    </div>
</div>

</body>
</html>