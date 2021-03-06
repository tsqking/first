<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html style="background-color:#ecf0f5">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<!-- Tell the browser to be responsive to screen width -->
<meta
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no"
	name="viewport">
<link rel="shortcut icon"
	href="${pageContext.request.contextPath}/common/image/logo.ico" />
<s:include value="../../common.jsp"></s:include>
<!-- js页面 -->
<script
	src="${pageContext.request.contextPath}/question/paper/selectQuestion.js"></script>
<!-- js国际化 -->
<script src="${pageContext.request.contextPath}/question/paper/${system_lang}.js"></script>
<title>选择题目</title>
</head>
<body>
	<!-- Main content -->
	<section class="content"
		style="padding-top: 5px;padding-bottom: 5px;background-color:#ecf0f5">
	<!-- 搜索条件 -->
	<div class="box box-primary collapsed-box">
			<div class="box-header with-border" data-widget="collapse">
				<i class="fa fa-plus"></i>
				<h3 class="box-title" ><s:text name="searchTitle"/></h3>
			</div>
			<form id="searchForm">
				<input type="hidden" id="Ids" name="Ids"/><!-- 该试卷包含的题目Ids -->
				<div class="box-body">
					<div class="row">
				        <div class="col-md-4 col-xs-4">
							<div class="form-group">
				            	<label for="type"><s:text name="questionType"/></label>           
				            	<select class="form-control select"
									name="type" id="type" style="width: 100%;">
									<option value=""></option>
								</select>
				            </div>
				        </div>
				        <div class="col-md-4 col-xs-4">
							<div class="form-group">
								<label for="so_flag"><s:text name="so_flag"/></label>
								<select class="form-control select"
									name="so_flag" id="so_flag" style="width: 100%;">
									<option value=""></option>
								</select>
							</div>
				        </div>
				        <div class="col-md-4 col-xs-4">
							<div class="form-group">
				            	<label for="name"><s:text name="tagName"/></label>           
				            	<select class="form-control select"
									name="tagVo_name" id="name" style="width: 100%;">
									<option value=""></option>
								</select>
				            </div>
				        </div>
					</div>
					<div class="row">
				        <div class="col-md-4 col-xs-4">
					        <div class="form-group">
								<label for="skillFirst"><s:text name="skill.firstSkill"/></label> <select class="form-control select" class="skillFirst"
									name="skillFirst" id="first_skill_id" style="width: 100%;">
									<option value=""></option>
								</select>
							</div>
						</div>
						<div class="col-md-4 col-xs-4">
							<div class="form-group">
								<label for="skillSecond"><s:text name="skill.secondSkill"/></label> <select class="form-control select" class="skillSecond"
									name="skillSecond" id="second_skill_id" style="width: 100%;">
									<option value=""></option>
								</select>
							</div>
						</div>
						<div class="col-md-4 col-xs-4">
							<div class="form-group">
								<label for="skillThird"><s:text name="skill.thirdSkill"/></label> <select class="form-control select" class="skillThird"
									name="skillThird" id="third_skill_id" style="width: 100%;">
									<option value=""></option>
								</select>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-md-4 col-xs-4">
							<div class="form-group">
								<label for="pointName"><s:text name="pointName"/></label> 
									<select class="form-control select"
											name="pointVo_name" id="point_id" style="width: 100%;">
									<option value=""></option>
								</select>
							</div>
				        </div>
						<div class="col-md-4 col-xs-4">
							<div class="form-group">
				            	<label for="difficulty"><s:text name="difficulty"/></label>           
				            	<select class="form-control select"
									name="difficulty" id="difficulty" style="width: 100%;">
									<option value=""></option>
								</select>
				            </div>
				        </div>
					</div>
				</div>
				<div class="box-footer" style="padding: 0 0 0 0">
					<div class="col-md-12 col-xs-12" style="margin-bottom:10px;">
						<div class="col-md-3 col-xs-3 col-md-offset-6 col-xs-offset-6">
							<button type="button" id="resetButton"
									class="btn btn-block btn-primary btn-sm"><i class="fa fa-reply"></i>&nbsp;&nbsp;&nbsp;<s:text name="resetButton"/></button>
						</div>
						<div class="col-md-3 col-xs-3">
							<button type="button" id="searchButton"
									class="btn btn-block btn-primary btn-sm"><i class="fa fa-search"></i>&nbsp;&nbsp;&nbsp;<s:text name="searchButton"/></button>
						</div>
					</div>
				</div>
			</form>
		</div>
		<!-- 数据表格 -->
		<div class="row">
			<div class="col-xs-12">
				<div class="box box-primary" style="margin-bottom: 5px;">
					<div class="box-body">
						<table id="table" class="table table-bordered table-striped table-hover"
								data-toggle="tooltip" >
						</table>	
					</div>
				</div>
			</div>
		</div>
		<div class="box-footer" style="padding: 0 0 0 0">
			<div class="col-md-12 col-xs-12" style="margin-bottom:10px;">
				<div class="col-md-3 col-xs-3 col-md-offset-6 col-xs-offset-6">
					<button type="button" id="closeButton" onclick="javascript: parent.layer.close(index);"
							class="btn btn-block btn-primary btn-sm"><i class="fa fa-close"></i>&nbsp;&nbsp;&nbsp;<s:text name="closeButton"/></button>
				</div>
				<div class="col-md-3 col-xs-3">
					<button type="button" id="addCommitButton"
							class="btn btn-block btn-primary btn-sm"><i class="fa fa-plus"></i>&nbsp;&nbsp;&nbsp;<s:text name="addCommitButton"/></button>
				</div>
			</div>
		</div>
	</section>
</body>
</html>