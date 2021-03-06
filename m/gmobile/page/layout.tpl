{%strip%}
<!DOCTYPE html>

<link rel="import" href="config.tpl?__inline">
{%* 自定义变量 *%}
{%block name="block_assign"%}
    {%$Data=[] scope='global'%}
{%/block%}
{%* 使用html插件替换普通html标签，同时注册JS组件化库 *%}
{%html framework="gmobile:static/lib/js/lib.js" lang="zh-cn"%}
<!--STATUS OK-->
    {%* 使用head插件替换head标签，主要为控制加载同步静态资源使用 *%}
    {%head%}
        {%* 头部meta，seo相关可以写在这里面 *%}
        {%block name="block_meta"%}
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width,initial-scale=1.0,maximum-scale=1.0,user-scalable=no">
        <meta name="format-detection" content="telephone=no">
        <meta name="apple-touch-fullscreen" content="yes">
        <meta name="apple-mobile-web-app-capable" content="yes">
        <meta name="apple-mobile-web-app-status-bar-style" content="black">
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
        {%* 页面title *%}
        <title>
            {%block name="block_title"%}{%$tplData.pageTitle%}{%/block%}
        </title>
        <meta content="{%$tplData.pageDescription%}" name="description">
        <meta content="{%$tplData.pageKeyword%}" name="keywords">
        <link rel="apple-touch-icon" href="http://s.emao.net//mobile/wap/imgs/common/desktop_icon.png"/>
        {%/block%}

        {%* 头部css *%}
        {%block name="block_global_css"%}
        {%require name="gmobile:static/lib/css/global.css"%}
        {%/block%}
        {%block name="block_head_css"%}
        {%/block%}
        {%* 头部js *%}
        {%block name="block_head_js"%}
            {%widget name="gmobile:widget/headJs/headJs.tpl"%}
        {%/block%}
        {%block name="block_ad_head"%}
        {%/block%}
    {%/head%}
    {%* 使用body插件替换body标签，主要为可控制加载JS资源 *%}
    {%body class="$bodyCls"%}
         {%block name="block_body"%}
            {%block name="block_header"%}
            {%widget name="gmobile:widget/header/header.tpl"%}
            {%/block%}
            {%block name="block_content"%}
            {%/block%}
            {%block name="block_footer"%}
                {%widget name="gmobile:widget/footer/footer.tpl"%}
            {%/block%}
            {%* 底部js区域 *%}
            {%block name="block_foot_js"%}{%/block%}
        {%/block%}
    {%/body%}
{%/html%}
{%/strip%}