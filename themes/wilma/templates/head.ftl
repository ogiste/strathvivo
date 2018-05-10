<#-- $This file is distributed under the terms of the license in /doc/license.txt$ -->

<meta charset="utf-8" />
<!-- Google Chrome Frame open source plug-in brings Google Chrome's open web technologies and speedy JavaScript engine to Internet Explorer-->
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="generator" content="VIVO ${version.label}" />

<title>${(title?html)!siteName!}</title>

<#-- VIVO OpenSocial Extension by UCSF -->
<#if openSocial??>
    <#if openSocial.visible>
        <#-- Required to add these BEFORE stylesheets.flt and headScripts.ftl are processed -->
        ${stylesheets.add('<link rel="stylesheet" href="${urls.theme}/css/openSocial/gadgets.css" />')}			
        ${headScripts.add('<script type="text/javascript" src="${openSocial.containerJavascriptSrc}"></script>',
                          '<script type="text/javascript" language="javascript">${openSocial.gadgetJavascript}</script>',
                          '<script type="text/javascript" src="${urls.base}/js/openSocial/orng.js"></script>')}
    </#if>	
</#if>	
<script type="text/javascript" src="${urls.theme}/css/bootstrap/js/jquery.js" ></script>
<script type="text/javascript" src="${urls.theme}/css/bootstrap/js/bootstrap.min.js" ></script>

<#include "stylesheets.ftl">
<link rel="stylesheet" href="${urls.theme}/css/screen.css" />
<link rel="stylesheet" href="${urls.theme}/css/bootstrap/css/bootstrap.min.css" />
<link rel="stylesheet" href="${urls.theme}/css/strath.css" />


<#include "headScripts.ftl">

<#if metaTags??>
    ${metaTags.list()}
</#if>

<!--[if (gte IE 6)&(lte IE 8)]>
<script type="text/javascript" src="${urls.base}/js/selectivizr.js"></script>
<![endif]-->

<#-- Inject head content specified in the controller. Currently this is used only to generate an rdf link on 
an individual profile page. -->
${headContent!}

<link rel="shortcut icon" type="image/x-icon" href="${urls.base}/favicon.ico">