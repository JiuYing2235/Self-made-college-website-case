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
            <h1>本科专业</h1>
            <p>计算机科学与技术（专业代码：080901H）：奥克兰大学（简称“奥大”）“计算机科学”，尤其是数据科学（大数据）具有世界领先的科研水平，是计算机R语言的发源地，2020年QS世界大学学科排名第82位。学院高水平引入奥大优质教育资源和先进的教育理念，使东林的计算机科学与技术与奥大的计算机科学深度融合，培养在计算机科学（大数据）研究与应用方面具备坚实的理论基础和专业技能、具有国际视野和国际竞争力的高水平专业人才。</p><br>
            <p>生物技术（专业代码：071002H）：奥大拥有的分子生物学研究中心，是新西兰的七个世界级顶尖研究中心之一，2020年QS世界大学学科排名第94位。生物技术专业引入奥大先进的教学理念和管理方法，以优质的师资为依托，使学生接受生物科学基础理论和研究方面的科研训练，培养具有先进的专业技能、良好的分析和解决生物技术领域问题能力、同时兼有国际视野、创新精神的优秀人才。</p><br>
            <p>化学（专业代码：070301H）：化学专业在奥克兰大学为其优势专业，2020年QS世界大学学科排名第120位。该专业引进奥大一流的师资、课程等教育资源，使学生接受化学基础理论和应用基础研究方面的科学思维和科学实验训练，培养具备扎实理论基础和良好科学素养，并能运用所学知识和实验技能进行应用基础研究、技术开发和科技管理，具有国际竞争力和实践能力的高素质创新人才。</p>
        </div>
    </div>
    <div id="footer">
        <%@include file="/jsp/footer.jsp" %>
    </div>
</div>
</body>
</html>