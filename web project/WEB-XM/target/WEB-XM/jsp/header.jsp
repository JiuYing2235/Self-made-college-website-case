<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <style>
        header nav ul {
            display: flex;
            padding: 0;
            list-style-type: none;
            background-color: #4A374A;
            justify-content: center;
        }
        header nav li a {
            display: block;
            color: white;
            padding: 14px 25px;
            text-decoration: none;
        }
        header nav li a:hover {
            background-color: #4caf50;
        }
        header nav .right {
            margin-left: auto;
        }

        .dropbtn {
            background-color: #4A374A;
            color: white;
            border: none;
            cursor: pointer;
        }

        .dropdown {
            position: relative;
            display: inline-block;
        }

        .dropdown-content {
            display: none;
            position: absolute;
            background-color: mediumpurple;
            min-width: 160px;
            box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
        }

        .dropdown-content a {
            color: black;
            padding: 14px 25px;
            text-decoration: none;
            display: block;
        }
        .dropdown-content a:hover {
            background-color: #f1f1f1
        }
        .dropdown:hover .dropdown-content {
            display: block;
        }

        .dropdown:hover .dropbtn {
            background-color: #4caf50;
        }
        #bt,#bt1,#bt2,#bt3,#bt4 {
            padding: 10px 60px;
            color: #fff;
            text-shadow:0 0 10px;
        }
    </style>
</head>
<body>
<header>
    <nav>
        <ul>
            <li><a href="index" id="bt">首页</a></li>
            <div class="dropdown">
                <li><a href="https://icec.nefu.edu.cn/rcpy/bksjy/zsjz.htm" class="dropbtn" id="bt1">人才培养</a>
                    <div class="dropdown-content">
                        <a href="https://icec.nefu.edu.cn/rcpy/bksjy/zsjz.htm" title="本科生教育">本科生教育</a>
                        <a href="https://icec.nefu.edu.cn/rcpy/bksjy/zsjz.htm" title="研究生教育">研究生教育</a>
                    </div>
                </li>
            </div>
            <div class="dropdown">
                <li><a href="https://aulin.nefu.edu.cn/kxyj/kyly1.htm" class="dropbtn" id="bt2">科学研究</a>
                    <div class="dropdown-content">
                        <a href="https://aulin.nefu.edu.cn/kxyj/kyly1.htm" title="科研项目">科研项目</a>
                        <a href="https://aulin.nefu.edu.cn/kxyj/kyly1.htm" title="成果及奖励">成果及奖励</a>
                        <a href="https://aulin.nefu.edu.cn/kxyj/kyly1.htm" title="研究团队与创新平台">研究团队与创新平台</a>
                    </div>
                </li>
            </div>
            <li><a href="shiyan" id="bt3">实验室概况</a></li>
            <div class="dropdown">
                <li><a href="https://aulin.nefu.edu.cn/dqgz/xxll.htm" class="dropbtn" id="bt4">党建工作</a>
                    <div class="dropdown-content">
                        <a href="https://aulin.nefu.edu.cn/dqgz/xxll.htm" title="党委">党委</a>
                        <a href="https://aulin.nefu.edu.cn/dqgz/xxll.htm" title="学团">学团</a>
                        <a href="https://aulin.nefu.edu.cn/dqgz/xxll.htm" title="工会">工会</a>
                    </div>
                </li>
            </div>
        </ul>
    </nav>
</header>
</body>
</html>
