<%@ page pageEncoding="UTF-8" %>
<style>
    .i1{
        border-radius: 100%;
    }
    .tbut{
        background-color: lightcoral;
        color: white;
        padding: 8px 20px;
        text-decoration: none;
        display: inline-block;
        border-radius: 8px;
    }
    .tbut:hover{
        background-color: red;
    }
    .min{
        box-sizing: content-box;
        display: flex;
    }
    .card1,.card2,.card3{
        width: auto;
        margin: auto;
        border: 10px;
        padding: 10px;
        text-align: center;
    }
    .card1 {
        flex: 33%;
    }
    .card2 {
        flex: 33%;
    }
    .card3 {
        flex: 33%;
    }
    /*.card:hover{
        box-shadow: 0 0 8px black;
    }*/
    .headr{
        object-fit: contain;
        opacity: 0.5;
        transition: 1s;
    }
    .card1:hover .headr{
        opacity: 1;
    }
    .card2:hover .headr{
        opacity: 1;
    }
    .card3:hover .headr{
        opacity: 1;
    }
    .content{
        align-items: center;
        text-align: justify;
    }

    .content p{
        max-height: 0;
        overflow: hidden;
        transition: max-height 0.5s;
    }
    .card1:hover .content p{
        max-height: 666px;
    }
    .card2:hover .content p{
        max-height: 666px;
    }
    .card3:hover .content p{
        max-height: 666px;
    }
</style>
<div class="min">
    <div class="card1">
        <div class="headr">
            <img src="./image/img_3.png" alt="face" class="i1">
        </div>
        <div class="content">
            <p>于慧伶<br>
                副教授，硕士生导师<br>
                计算机科学与技术（联合办学）专业负责人，于2010年、2018年在美国佐治亚理工学院做访问学者。现任中国发明协会创新方法研究会理事、黑龙江省技术创新方法研究会林业分会副会长。从事模式识别、数据挖掘与计算机辅助创新工作，主持国家林业局公益性行业科研专项、国家人社部归国留学人员择优资助项目、黑龙江省自然科学基金等各级科研项目10余项，指导学生在iCAN国际大学生创新创业大赛、全国TRIZ杯创新方法大赛、全国“创意、创新、创业”大赛等国家级、省级比赛获奖40余项。被评为东北林业大学第十届我最喜爱的十佳教师荣誉称号。</p>
            <a href="" class="tbut">Read More</a>
        </div>
    </div>

    <div class="card2">
        <div class="headr">
            <img src="./image/img_1.png" alt="face" class="i1">
        </div>
        <div class="content">
            <p>董本志<br>
                博士，副教授<br>
                计算机科学与技术学科硕士研究生导师<br>
                E-mail  nefu_dbz@163.com;<br>
                主要研究方向为机器视觉在林业方面的应用研究、智能控制技术在木工机械产品上的应用研究与设计开发；作为技术负责人完成南兴装备股份有限公司数控锯CAD/CAM/CNC控制软件研制，累计发表学术论文30余篇。在计算机科学与技术学科和计算机技术专业学位 点招收硕士生。已指导毕业硕士研究生30人，多名研究生论文获评为校级优秀毕业论文。</p>
            <a href="" class="tbut">Read More</a>
        </div>
    </div>
    <div class="card3">
        <div class="headr">
            <img src="./image/img_2.png" alt="face" class="i1">
        </div>
        <div class="content">
            <p>史册，讲师，博士<br>
                主要研究方向：计算机视觉，进化算法</p>
            <a href="" class="tbut">Read More</a>
        </div>
    </div>
</div>
