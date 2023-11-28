<%@ page pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Login</title>
    <style>
        html{
            width: 100%;
            height: 100%;
            overflow: hidden;
        }
        body{
            width: 100%;
            height: 100%;
            font-family: 'Open Sans',sans-serif;
            margin: 0;
            background-color: #4A374A;
        }
        #login{
            position: absolute;
            top: 50%;
            left:50%;
            margin: -150px 0 0 -150px;
            width: 300px;
            height: 300px;
        }
        #login h1{
            color: #fff;
            text-shadow:0 0 10px;
            letter-spacing: 1px;
            text-align: center;
        }
        h1{
            font-size: 2em;
            margin: 0.67em 0;
        }
        input{
            width: 278px;
            height: 18px;
            margin-bottom: 10px;
            outline: none;
            padding: 10px;
            font-size: 13px;
            color: #fff;
            text-shadow:1px 1px 1px;
            border-top: 1px solid #312E3D;
            border-left: 1px solid #312E3D;
            border-right: 1px solid #312E3D;
            border-bottom: 1px solid #56536A;
            border-radius: 4px;
            background-color: #2D2D3F;
        }
        .but{
            width: 300px;
            min-height: 20px;
            display: block;
            background-color: #4a77d4;
            border: 1px solid #3762bc;
            color: #fff;
            padding: 9px 14px;
            font-size: 15px;
            line-height: normal;
            border-radius: 5px;
            margin: 0;
        }
    </style>
</head>
<body>
<div id="login">
    <h1>Login</h1>
    <form action="login" method="post">
        <input type="text" required="required" placeholder="用户名" name="username"><br>
        <input type="password" required="required" placeholder="密码" name="pwd"><br>
        <div class="identifyingcode">
            <div>
                <input class="inputIdentifyingcode" id="code" type="text"
                       name="code" placeholder="验证码">
            </div>
            <div>
                <div style="float: left;">
                    <img class="imgcode" alt="Code" id="scode"
                         src="ImageServlet"/>
                </div>
                <div style="float: left;">
                    <button class="but" href="#" onclick="flushCode()" style="width: 200px;height: 40px;background-color: #84c659">看不清楚，换一张</button>
                </div>
            </div>
        </div>
        <br>
        <br>
        <button class="but" type="submit">登录</button>
    </form>
</div>
</body>
</html>  