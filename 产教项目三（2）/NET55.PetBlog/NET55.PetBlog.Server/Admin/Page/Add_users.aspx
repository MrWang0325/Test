﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Add_users.aspx.cs" Inherits="NET55.PetBlog.Server.Admin.Page.Add_users" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>添加用户</title>
    <meta name="description" content="这是一个 index 页面">
    <meta name="keywords" content="index">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="renderer" content="webkit">
    <meta http-equiv="Cache-Control" content="no-siteapp" />
    <link rel="icon" type="image/png" href="../assets/i/favicon.png">
    <link rel="apple-touch-icon-precomposed" href="../assets/i/app-icon72x72@2x.png">
    <meta name="apple-mobile-web-app-title" content="Amaze UI" />
    <script src="../assets/js/echarts.min.js"></script>
    <link rel="stylesheet" href="../assets/css/amazeui.min.css" />
    <link rel="stylesheet" href="../assets/css/amazeui.datatables.min.css" />
    <link rel="stylesheet" href="../assets/css/app.css">
    <script src="../assets/js/jquery.min.js"></script>
    <style>
        #header {
            width: 260px;
            height: 190px;
        }
    </style>
    <script>
        $(function () {
            var reader = new FileReader();
            reader.onload = function (e) {
                $('#header').attr('src', e.target.result);
            }
            $('#File').change(function () {
                reader.readAsDataURL(document.querySelector("input[type=file]").files[0]);
            });
        });

    </script>
</head>

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
                            <a href="javascript:;">欢迎你, <span>Amaze UI</span> </a>
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
                        <img src="../assets/img/user04.png" alt="">
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

            <div class="row">

                <div class="am-u-sm-12 am-u-md-12 am-u-lg-12">
                    <div class="widget am-cf">
                        <div class="widget-head am-cf">
                            <div class="widget-title am-fl">添加用户信息</div>
                            <div class="widget-function am-fr">
                                <a href="javascript:;" class="am-icon-cog"></a>
                            </div>
                        </div>
                        <div class="widget-body am-fr">

                            <form class="am-form tpl-form-border-form tpl-form-border-br" runat="server" enctype="multipart/form-data" data-am-validator>
                                <div class="am-form-group">
                                    <label for="user-name" class="am-u-sm-3 am-form-label">昵称 <span class="tpl-form-line-small-title">Name</span></label>
                                    <div class="am-u-sm-9">
                                        <input type="text" class="tpl-form-input" id="Text1" name="uname" placeholder="请输入昵称" required>
                                        <small>请填写你的昵称</small>
                                    </div>
                                </div>
                                <div class="am-form-group">
                                    <label for="user-name" class="am-u-sm-3 am-form-label">电话号码 <span class="tpl-form-line-small-title">Phone</span></label>
                                    <div class="am-u-sm-9">
                                        <input type="text" class="tpl-form-input" id="Text3" name="phone" maxlength="11" minlength="11" placeholder="请输入号码" required>
                                        <small>请填写你的号码</small>
                                    </div>
                                </div>
                                <div class="am-form-group">
                                    <label for="user-name" class="am-u-sm-3 am-form-label">密码 <span class="tpl-form-line-small-title">Pwd</span></label>
                                    <div class="am-u-sm-9">
                                        <input type="text" class="tpl-form-input" id="Text2" maxlength="18" minlength="6" name="pwd1" placeholder="请输入6-18位密码" required>
                                        <small>请填写密码</small>
                                    </div>
                                </div>
                                <div class="am-form-group">
                                    <label for="user-name" class="am-u-sm-3 am-form-label">重复密码 <span class="tpl-form-line-small-title">Pwd</span></label>
                                    <div class="am-u-sm-9">
                                        <input type="text" class="tpl-form-input" id="Text5" name="pwd2" placeholder="请输入与上面一致的密码" data-equal-to="#Text2" required>
                                        <small>请填写密码</small>
                                    </div>
                                </div>
                                <div class="am-form-group">
                                    <label for="user-name" class="am-u-sm-3 am-form-label">年龄 <span class="tpl-form-line-small-title">Age</span></label>
                                    <div class="am-u-sm-9">
                                        <input type="text" class="tpl-form-input" id="Text4" onkeyup="value=value.replace(/[^\d]/g,'')" name="age" placeholder="只能输入数字" required>
                                        <small>请填写你的年龄</small>
                                    </div>
                                </div>
                                <div class="am-form-group">
                                    <label class="am-u-sm-3 am-form-label">性别 <span class="tpl-form-line-small-title">Sex</span></label>
                                    <div class="am-u-sm-9">
                                        <input type="radio" name="sex" value="男" required />男&nbsp;&nbsp;
                                        <input type="radio" name="sex" value="女" required />女
                                    </div>
                                </div>
                                <div class="am-form-group">
                                    <label class="am-u-sm-3 am-form-label">地址 <span class="tpl-form-line-small-title">Address</span></label>
                                    <div class="am-u-sm-9">
                                        <input type="text" name="address" placeholder="输入地址" required>
                                    </div>
                                </div>
                                <div class="am-form-group">
                                    <label class="am-u-sm-3 am-form-label">邮箱 <span class="tpl-form-line-small-title">Eamil</span></label>
                                    <div class="am-u-sm-9">
                                        <input type="email" name="eamil" placeholder="输入邮箱" required>
                                    </div>
                                </div>

                                <div class="am-form-group">
                                    <label for="user-weibo" class="am-u-sm-3 am-form-label">头像 <span class="tpl-form-line-small-title">Images</span></label>
                                    <div class="am-u-sm-9">
                                        <div class="am-form-group am-form-file">
                                            <div class="tpl-form-file-img">
                                                <img id="header" src="../Img/6.jpeg" alt="">
                                            </div>
                                            <button type="button" class="am-btn am-btn-danger am-btn-sm">
                                                <i class="am-icon-cloud-upload"></i>添加封面图片</button>
                                            <input id="File" name="file" type="file" multiple="" required>
                                        </div>

                                    </div>
                                </div>

                                <div class="am-form-group">
                                    <div class="am-u-sm-9 am-u-sm-push-3">
                                        <button type="submit" class="am-btn am-btn-primary tpl-btn-bg-color-success ">提交</button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>


        </div>
    </div>
    </div>
    </div>
    <script src="../assets/js/amazeui.min.js"></script>
    <script src="../assets/js/amazeui.datatables.min.js"></script>
    <script src="../assets/js/dataTables.responsive.min.js"></script>
    <script src="../assets/js/app.js"></script>

</body>

</html>
