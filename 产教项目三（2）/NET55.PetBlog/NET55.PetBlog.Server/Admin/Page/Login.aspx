<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="NET55.PetBlog.Server.Admin.Page.Login" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>管理员登录</title>
    <meta name="description" content="这是一个 index 页面">
    <meta name="keywords" content="index">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="renderer" content="webkit">
    <meta http-equiv="Cache-Control" content="no-siteapp" />
    <link rel="icon" type="image/png" href="/Admin/assets/i/favicon.png">
    <link rel="apple-touch-icon-precomposed" href="/Admin/assets/i/app-icon72x72@2x.png">
    <meta name="apple-mobile-web-app-title" content="Amaze UI" />
    <link rel="stylesheet" href="/Admin/assets/css/amazeui.min.css" />
    <link rel="stylesheet" href="/Admin/assets/css/amazeui.datatables.min.css" />
    <link rel="stylesheet" href="/Admin/assets/css/app.css">
    <script src="/Admin/assets/js/jquery.min.js"></script>
    <script src="../assets/js/jquery.validate.min.js"></script>
    <script src="../assets/js/gt.js"></script>
    <link href="../Sweet/sweet1.css" rel="stylesheet" />
    <script src="../Sweet/sweet1.js"></script>
    <script>

        $(function () {

            $.ajax({
                // 获取id，challenge，success（是否启用failback）
                url: "../Ashx/CreateVali.ashx",
                type: "get",
                dataType: "json", // 使用jsonp格式
                success: function (data) {
                    // 使用initGeetest接口
                    // 参数1：配置参数，与创建Geetest实例时接受的参数一致
                    // 参数2：回调，回调的第一个参数验证码对象，之后可以使用它做appendTo之类的事件
                    initGeetest({
                        gt: data.gt,
                        challenge: data.challenge,
                        product: "float", // 产品形式
                        offline: !data.success
                    },
                     handler);
                }
            });
        });



        var handler = function (captchaObj) {
            // 将验证码加到id为captcha的元素里
            captchaObj.appendTo("#geetest-container");
            captchaObj.onSuccess(function () {
                $('#btn_login').removeAttr('disabled');
                $('#btn_login').click(function () {
                    var name = $('#user-name').val();
                    var Password = $('#Password').val();
                    if (name != "" && Password != "") {
                        $.post("../Ashx/Login.ashx", { uid: name, pid: Password }, function (msg) {
                            if (msg ==  "ok") {
                                window.location.href = "Index.aspx";
                            } else {
                                swal("提 示！", "用户名或秘密输入错误！！！", "error");
                                $('#Password').val("");
                                $('#btn_login').attr("disabled", "disabled");
                                captchaObj.reset();
                            }
                        });
                    }
                    else {
                        swal("提 示！", "请输入规范的用户名或秘密！！！", "error");
                    }
                });
            });

        };
    </script>
</head>

<body data-type="login">
    <script src="/Admin/assets/js/theme.js"></script>
    <div class="am-g tpl-g">
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
        <div class="tpl-login">
            <div class="tpl-login-content">
                <%--<div class="tpl-login-logo">
                </div>--%>



                <form class="am-form tpl-form-line-form" id="form1" runat="server">
                    <div class="am-form-group">
                        <input type="text" class="tpl-form-input" name="name" id="user-name" placeholder="请输入账号" value="">
                    </div>

                    <div class="am-form-group">
                        <input type="password" class="tpl-form-input" name="pwd" id="Password" placeholder="请输入密码" value="">
                    </div>
                    <div class="am-form-group" id="geetest-container"></div>
                    <div class="am-form-group tpl-login-remember-me">
                        <input id="remember-me" type="checkbox" name="copy">
                        <label for="remember-me">
                            记住密码
                        </label>

                    </div>






                    <div class="am-form-group">

                        <button id="btn_login" disabled="disabled" type="button" class="am-btn am-btn-primary  am-btn-block tpl-btn-bg-color-success  tpl-login-btn">提交</button>

                    </div>
                </form>
            </div>
        </div>
    </div>
    <script src="/Admin/assets/js/amazeui.min.js"></script>
    <script src="/Admin/assets/js/app.js"></script>

</body>

</html>
