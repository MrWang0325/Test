<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UsersManger.aspx.cs" Inherits="NET55.PetBlog.Server.Admin.Page.UsersManger" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>用户管理</title>
    <meta name="description" content="这是一个 index 页面">
    <meta name="keywords" content="index">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="renderer" content="webkit">
    <meta http-equiv="Cache-Control" content="no-siteapp" />
    <link rel="icon" type="image/png" href="../assets/i/favicon.png">
    <link rel="apple-touch-icon-precomposed" href="../assets/i/app-icon72x72@2x.png">
    <meta name="apple-mobile-web-app-title" content="Amaze UI" />
    <link rel="stylesheet" href="../assets/css/amazeui.min.css" />
    <link rel="stylesheet" href="../assets/css/amazeui.datatables.min.css" />
    <link rel="stylesheet" href="../assets/css/app.css">
    <script src="../assets/js/jquery.min.js"></script>
    <link href="../Sweet/sweet1.css" rel="stylesheet" />
    <script src="../Sweet/sweet1.js"></script>
    <script>
        $(function () {
            //添加
            $('#add_user').click(function () {
                window.location.href = "/Admin/Page/Add_users.aspx";
            })
            //修改
            $('.update').click(function () {
                var id = $(this).prev().val();
                window.location.href = "/Admin/Page/Update_users.aspx?id=" + id;
            })
            //删除
            $('.tpl-table-black-operation-del').click(function () {
                var id = $(this).prev().prev().val();
                swal({
                    title: "提 示",
                    text: "确定删除吗？",
                    type: "warning",
                    showCancelButton: true,
                    confirmButtonColor: "#DD6B55",
                    confirmButtonText: "确定删除！",
                    closeOnConfirm: false
                },
                function () {
                    $.post("../Ashx/Delete_user.ashx", { id: id }, function (msg) {
                        if (msg == "ok") {
                            swal("删除！", "该条数据已经被删除。", "success");
                        }
                        swal({
                            title: "提 示",
                            text: "删除成功！",
                            type: "success",
                        },
                        function () {
                            window.location.reload();
                        });
                    })
                });
            })
        })
    </script>

</head>
<%
    NET55.PetBlog.Server.Model.UserInfo user = Session["admin"] as NET55.PetBlog.Server.Model.UserInfo;
%>
<body data-type="widgets">
    <script src="../assets/js/theme.js"></script>
    <div class="am-g tpl-g">
        <!-- 头部 -->
        <header>
            <!-- logo -->
            <div class="am-fl tpl-header-logo">
                <a href="javascript:;">
                    <img src="../assets/img/logo.png" alt=""></a>
            </div>
            <!-- 右侧内容 -->
            <div class="tpl-header-fluid">
                <!-- 侧边切换 -->
                <div class="am-fl tpl-header-switch-button am-icon-list">
                    <span></span>
                </div>
                <!-- 搜索 -->
                <div class="am-fl tpl-header-search">
                    <form class="tpl-header-search-form" action="javascript:;">
                        <button class="tpl-header-search-btn am-icon-search"></button>
                        <input class="tpl-header-search-box" type="text" placeholder="搜索内容...">
                    </form>
                </div>
                <!-- 其它功能-->
                <div class="am-fr tpl-header-navbar">
                    <ul>
                        <!-- 欢迎语 -->
                        <li class="am-text-sm tpl-header-navbar-welcome">
                            <a href="javascript:;">欢迎你, <span><%=user.UserName %></span> </a>
                        </li>

                        <!-- 退出 -->
                        <li class="am-text-sm">
                            <a href="javascript:;">
                                <span class="am-icon-sign-out"></span>退出
                            </a>
                        </li>
                    </ul>
                </div>
            </div>

        </header>
        <!-- 风格切换 -->
        <div class="tpl-skiner">
            <div class="tpl-skiner-toggle am-icon-cog">
            </div>
            <div class="tpl-skiner-content">
                <div class="tpl-skiner-content-title">
                    选择主题
                </div>
                <div class="tpl-skiner-content-bar">
                    <span class="skiner-color skiner-white" data-color="theme-white"></span>
                    <span class="skiner-color skiner-black" data-color="theme-black"></span>
                </div>
            </div>
        </div>
        <!-- 侧边导航栏 -->
        <div class="left-sidebar">
            <!-- 用户信息 -->
            <div class="tpl-sidebar-user-panel">
                <div class="tpl-user-panel-slide-toggleable">
                    <div class="tpl-user-panel-profile-picture">
                        <img src="<%=user.HeadUrl %>" alt="">
                    </div>
                    <span class="user-panel-logged-in-text">
                        <i class="am-icon-circle-o am-text-success tpl-user-panel-status-icon"></i>
                        禁言小张
                    </span>
                    <a href="javascript:;" class="tpl-user-panel-action-link"><span class="am-icon-pencil"></span>账号设置</a>
                </div>
            </div>


            <!-- 菜单 -->
            <ul class="sidebar-nav">
                <li class="sidebar-nav-link">
                    <a href="index.html">
                        <i class="am-icon-home sidebar-nav-link-logo"></i>首页
                    </a>
                </li>
                <li class="sidebar-nav-link">
                    <a href="/Admin/Page/UsersManger.aspx">
                        <i class="am-icon-table sidebar-nav-link-logo"></i>用户管理
                    </a>
                </li>
                <li class="sidebar-nav-link">
                    <a href="/Admin/Page/ServerManager.aspx">
                        <i class="am-icon-calendar sidebar-nav-link-logo"></i>萌宠服务管理
                    </a>
                </li>

                <li class="sidebar-nav-link">
                    <a href="/Admin/Page/ArticlManager.html">
                        <i class="am-icon-bar-chart sidebar-nav-link-logo"></i>禁用词管理

                    </a>
                </li>
                <li class="sidebar-nav-link">
                    <a href="javascript:;" class="sidebar-nav-sub-title">
                        <i class="am-icon-table sidebar-nav-link-logo"></i>新闻管理
                        <span class="am-icon-chevron-down am-fr am-margin-right-sm sidebar-nav-sub-ico sidebar-nav-sub-ico-rotate"></span>
                    </a>
                    <ul class="sidebar-nav sidebar-nav-sub" style="display: none;">
                        <li class="sidebar-nav-link">
                            <a href="/Admin/Page/NewsManager.aspx">
                                <span class="am-icon-angle-right sidebar-nav-link-logo"></span>新闻信息管理
                            </a>
                        </li>

                        <li class="sidebar-nav-link">
                            <a href="/Admin/Page/ImgListManager.aspx" class="sub">
                                <span class="am-icon-angle-right sidebar-nav-link-logo"></span>新闻图片管理
                            </a>
                        </li>
                    </ul>
                </li>
                <li class="sidebar-nav-link">
                    <a href="javascript:;" class="sidebar-nav-sub-title">
                        <i class="am-icon-table sidebar-nav-link-logo"></i>萌宠管理
                        <span class="am-icon-chevron-down am-fr am-margin-right-sm sidebar-nav-sub-ico sidebar-nav-sub-ico-rotate"></span>
                    </a>
                    <ul class="sidebar-nav sidebar-nav-sub" style="display: none;">
                        <li class="sidebar-nav-link">
                            <a href="/Admin/Page/PetManager.aspx">
                                <span class="am-icon-angle-right sidebar-nav-link-logo"></span>萌宠信息管理
                            </a>
                        </li>

                        <li class="sidebar-nav-link">
                            <a href="/Admin/Page/PetType.aspx" class="sub">
                                <span class="am-icon-angle-right sidebar-nav-link-logo"></span>萌宠类型管理
                            </a>
                        </li>
                    </ul>
                </li>

            </ul>
        </div>



        <!-- 内容区域 -->
        <div class="tpl-content-wrapper">
            <div class="row-content am-cf">
                <div class="row">
                    <div class="am-u-sm-12 am-u-md-12 am-u-lg-12">
                        <div class="widget am-cf">
                            <div class="widget-head am-cf">
                                <div class="widget-title  am-cf">文章列表</div>


                            </div>
                            <div class="widget-body  am-fr">

                                <div class="am-u-sm-12 am-u-md-6 am-u-lg-6">
                                    <div class="am-form-group">
                                        <div class="am-btn-toolbar">
                                            <div class="am-btn-group am-btn-group-xs">
                                                <button type="button" id="add_user" class="am-btn am-btn-default am-btn-success"><span class="am-icon-plus"></span>新增</button>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="am-u-sm-12">
                                    <table width="100%" class="am-table am-table-compact am-table-striped tpl-table-black ">
                                        <thead>
                                            <tr>
                                                <th>头像</th>
                                                <th>昵称</th>
                                                <th>电话号码</th>
                                                <th>年龄</th>
                                                <th>性别</th>
                                                <th>地址</th>
                                                <th>邮箱</th>
                                                <th>注册时间</th>

                                            </tr>
                                        </thead>
                                        <tbody>

                                            <!-- more data -->
                                            <%foreach (var item in Result)
                                              {
                                            %>
                                            <tr class="gradeX">
                                                <td>
                                                    <img src="<%=item.HeadImg %>" class="tpl-table-line-img" alt="">
                                                </td>
                                                <td class="am-text-middle"><%=item.UserName %></td>
                                                <td class="am-text-middle"><%=item.Phone %></td>
                                                <td class="am-text-middle"><%=item.Age %></td>
                                                <td class="am-text-middle"><%=item.Sex %></td>
                                                <td class="am-text-middle"><%=item.Address %></td>
                                                <td class="am-text-middle"><%=item.Eamil %></td>
                                                <td class="am-text-middle"><%=item.CreateTime %></td>
                                                <td class="am-text-middle">
                                                    <div class="tpl-table-black-operation">
                                                        <input type="hidden" name="h" value="<%=item.ID %>" />
                                                        <a href="javascript:;" class="update">
                                                            <i class="am-icon-pencil"></i>编辑
                                                        </a>
                                                        <a href="javascript:;" class="tpl-table-black-operation-del">
                                                            <i class="am-icon-trash"></i>删除
                                                        </a>
                                                    </div>
                                                </td>
                                            </tr>
                                            <%
                                              } %>
                                        </tbody>
                                    </table>
                                </div>
                                <div class="am-u-lg-12 am-cf">

                                    <div class="am-fr">
                                        <ul class="am-pagination tpl-pagination">
                                            <%=NET55.PetBlog.Server.Common.BarHelper.GetPagaBar(PageIndex,PageCount)%>
                                        </ul>

                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    </div>
    <script src="../assets/js/amazeui.min.js"></script>
    <script src="../assets/js/app.js"></script>

</body>

</html>
