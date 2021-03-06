<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html style="background-color:#ecf0f5";>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<!-- Tell the browser to be responsive to screen width -->
<meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
	<link rel="shortcut icon" href="${pageContext.request.contextPath}/common/image/logo.ico" />
<s:include value="../../../common.jsp"></s:include>
<!-- 页面js -->
 <script src="${pageContext.request.contextPath}/campusRecruit/univ/workhist/workHistManage.js"></script> 
<!-- js国际化 -->
<script src="${pageContext.request.contextPath}/campusRecruit/univ/workhist/${system_lang}.js"></script>
 
<title>工作历史信息管理首页</title>
</head>
<body>
   <section class="content" style="padding-top: 5px;padding-bottom: 5px;background-color:#ecf0f5">
		<!-- 搜索条件 -->
	<div class="box box-primary collapsed-box">
		<div class="box-header with-border" data-widget="collapse">
			<i class="fa fa-plus"></i>
			<h3 class="box-title" ><s:text name="searchTitle"/></h3>
		</div>
		<form id="searchForm">
			<!-- /.box-header -->
			<div class="box-body">
			    <div class="row">
				     <div class="col-md-6 col-xs-6">
						<div class="form-group">
							<label><s:text name="workHist.op_time"/></label> 
							 <div class="input-group">
								<span class="input-group-addon"><i class="fa fa-calendar"></i></span>
								<input class="form-control select" class="opreationTime"
									 name="opeationTime" id="opreationTime" style="width: 100%;" placeholder="Operation Time">
						     </div>
						</div>
					 </div>
					 <div class="col-md-6 col-xs-6">
						     <div class="form-group">
								<label><s:text name="workHist.op_status"/></label> <select class="form-control select" class="op_status"
								 id="op_status" name="op_status" style="width: 100%;">
									<option value=""></option>
								</select>
						      </div>
				     </div>
				</div>
				<div class="row">
				     <div class="col-md-6 col-xs-6">
						<div class="form-group">
							<label><s:text name="workHist.univ_id"/></label> 
							<select class="form-control select" class="univ_id"
								name="univ_id" id="univ_id" style="width: 100%;">
								<option value=""></option>
							</select>
						</div>
					 </div>
					 <div class="col-md-6 col-xs-6">	
						<div class="form-group">
							<label><s:text name="workHist.univ_branch_id"/></label> 
							<select class="form-control select" class="univ_branch_id"
								name="univ_branch_id" id="univ_branch_id" style="width: 100%;">
								<option value=""></option>
							</select>
						</div>
					</div>
				</div>
				 
			<!-- /.box-body -->
			<div class="box-footer" style="padding: 0 0 0 0">
				<div class="col-md-12 col-xs-12" style="margin-bottom:10px;">
					<div class="col-md-3 col-xs-3 col-md-offset-6 col-xs-offset-6">
						<button type="button" id="resetButton"class="btn btn-block btn-primary btn-sm">
						<!-- onclick="javascript: parent.layer.close(parent.layer.getFrameIndex(window.name));" -->
							<i class="fa fa-reply"></i>&nbsp;&nbsp;&nbsp;<s:text name="resetButton"/>
						<tton>
					</div>
					<div class="col-md-3 col-xs-3">
						<button type="button" id="searchButton"class="btn btn-block btn-primary btn-sm">
							<i class="fa fa-search"></i>&nbsp;&nbsp;&nbsp;<s:text name="searchButton"/>
						<tton>
					</div>
				</div>
			</div>
			</div>
		</form>
	</div>

	 <div id="toolbar" class="btn-group">
      <button id="btn_add" type="button" class="btn btn-default">
        <span class="glyphicon glyphicon-plus" aria-hidden="true"></span>
        	<s:text name="addButton" />
      </button>
      <button id="btn_edit" type="button" class="btn btn-default">
        <span class="glyphicon glyphicon-pencil" aria-hidden="true"></span>
        	<s:text name="editButton" />
      </button>
      <button id="btn_delete" type="button" class="btn btn-default">
        <span class="glyphicon glyphicon-remove" aria-hidden="true"></span>
        	<s:text name="deleteButton" />
      </button>
    </div>
    <!-- 数据表格 -->
	<div class="row">
		<div class="col-xs-12">
			<div class="box box-primary" style="margin-bottom: 5px;">
				<div class="box-header">
					<h3 class="box-title"><s:text name="workHist.workHistListTitle"/></h3>
				</div>
				<div class="box-body">
					<table id="table" class="table table-bordered table-striped table-hover"
						data-toggle="tooltip" title="<s:text name="dbClickTableInfo"/>">
					</table>	
				</div>
			</div>
		</div>
	</div>
	</section>
</body>
</html>