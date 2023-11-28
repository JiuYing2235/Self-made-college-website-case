<%@ page pageEncoding="UTF-8" %>
<style>
    * {
        padding: 0;
        margin: 0;
        box-sizing: border-box;
    }
    /* 左侧边栏容器宽度 */
    aside {
        width: 200px;
        background: mediumpurple;
    }
    /* 导航标题 */
    .sidebar > h2 {
        padding: 15px 20px;
        background: #4A374A;
        color: white;
    }
    /* 添加标题悬浮样式 */
    .sidebar > h2:hover {
        cursor: pointer;
        background: #000;
    }
    .sidebar ul {
        display: none;
    }
    .sidebar li a {
        display: block;
        color: black;
        text-decoration: none;
        padding: 10px 20px;
    }
    /* 二级菜单悬浮样式 */
    aside li a:hover {
        font-weight: bold;
        background-color: #555;
        color: white;
    }

</style>

<aside>
    <div class="sidebar">
        <h2>专业介绍</h2>
        <ul>
            <li><a href="zhuanye">专业简介</a></li>
            <li><a href="zhuanye">方向简介</a></li>
            <li><a href="zhuanye">未来就业</a></li>
        </ul>
    </div>
    <div class="sidebar">
        <h2>教师队伍</h2>
        <ul>
            <li><a href="teacher">教授</a></li>
            <li><a href="teacher">副教授</a></li>
            <li><a href="teacher">讲师</a></li>
        </ul>
    </div>
</aside>
<script src="https://cdn.bootcdn.net/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
    $(function () {
        $(".sidebar > h2").click(function () {
            // 被点击标题之后的ul元素，与标题平级
            let ul = $(this).next("ul");
            // 此二级导航，滑动切换
            ul.slideToggle();
            // 其他二级导航，排除当前导航，全部滑上
            $(".sidebar > ul").not(ul).slideUp();
        });
    })
</script>