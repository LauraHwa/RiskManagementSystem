<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ taglib prefix="s" uri="/struts-tags"%>
<html lang="zh"><head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="../../favicon.ico">

    <title>风险概述</title>

    <!-- Bootstrap core CSS -->
    <link href="<%=request.getContextPath()+"/css/bootstrap.min.css"%>" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="<%=request.getContextPath()+"/css/demo.css"%>" rel="stylesheet">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="http://cdn.bootcss.com/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="http://cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>

  <body>

    <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
      <div class="container-fluid">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand">风险管理系统</a>
        </div>
        <div>
          <ul class="nav navbar-nav">
            <li><s:a href="my.action"><span class="glyphicon glyphicon-dashboard"></span> 我的风险</s:a></li>
            <li><s:a href="summary.action"><span class="glyphicon glyphicon-stats"></span> 风险总览</s:a></li>
            <li><s:a href="all.action"><span class="glyphicon glyphicon-th-list"></span> 风险列表</s:a></li>
            <li><a href="<%=request.getContextPath()+"/issue/addIssue.jsp"%>" ><span class="glyphicon glyphicon-pencil"></span> 添加风险</a></li>
          </ul>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
          <ul class="nav navbar-nav navbar-right">
            <li><a href="#"><%=session.getAttribute("user")%></a></li>
            <li><s:a href="logout.action">退出登录</s:a></li>
          </ul>
          
        </div>
      </div>
    </nav>

    <div class="container-fluid">
      <div class="row">

        <div class="col-sm-12 col-md-12 main">
          <h2 class="sub-header">风险总览</h2>

          <div class="row">
            
              
              <div class="col-sm-6 col-md-6 ">
                <div class="section-title">按可能性</div>
              </div>
              <div class="col-sm-6 col-md-6">
                <div class="section-title">按影响程度</div>
              </div>

              <div class="col-sm-6 col-md-6">
                <div class="panel panel-default">
                  <div class="panel-body panel-pos-high">
                    <div class="panel-data">
                      <span><s:property value="#request.summary.p_h"/></span> 打开 / <s:property value="#request.summary.p_h"/>
                    </div>
                    <div>
                      <div class="panel-description">
                          高 可能性
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              <div class="col-sm-6 col-md-6">
                <div class="panel panel-default">
                  <div class="panel-body panel-aff-high">
                    <div class="panel-data">
                      <span><s:property value="#request.summary.s_h"/></span> 打开 / <s:property value="#request.summary.s_h"/>
                    </div>
                    <div>
                      <div class="panel-description">
                        高 影响程度 
                      </div>
                    </div>
                  </div>
                </div>
              </div>


              <div class="col-sm-6 col-md-6">
                <div class="panel panel-default">
                  <div class="panel-body panel-pos-middle">
                    <div class="panel-data">
                      <span><s:property value="#request.summary.p_m"/></span> 打开 / <s:property value="#request.summary.p_m"/>
                    </div>
                    <div>
                      <div class="panel-description">
                        中 可能性 
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              <div class="col-sm-6 col-md-6">
                <div class="panel panel-default">
                  <div class="panel-body panel-aff-middle">
                    <div class="panel-data">
                      <span><s:property value="#request.summary.s_m"/></span> 打开 / <s:property value="#request.summary.s_m"/>
                    </div>
                    <div>
                      <div class="panel-description">
                        中 影响程度 
                      </div>
                    </div>
                  </div>
                </div>
              </div>

              <div class="col-sm-6 col-md-6">
                <div class="panel panel-default">
                  <div class="panel-body panel-pos-low">
                    <div class="panel-data">
                      <span><s:property value="#request.summary.p_l"/></span> 打开 / <s:property value="#request.summary.p_l"/>
                    </div>
                    <div>
                      <div class="panel-description">
                        低 可能性
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              <div class="col-sm-6 col-md-6">
                <div class="panel panel-default">
                  <div class="panel-body panel-aff-low">
                    <div class="panel-data">
                      <span><s:property value="#request.summary.s_l"/></span> 打开 / <s:property value="#request.summary.s_l"/>
                    </div>
                    <div>
                      <div class="panel-description">
                        低 影响程度 
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            
            
              
            
              
              

              
            
            
            

          </div>

        </div>
      </div>
    </div>

    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="http://cdn.bootcss.com/jquery/1.11.1/jquery.min.js"></script>
    <script src="<%=request.getContextPath()+"/js/bootstrap.min.js"%>"></script>
  