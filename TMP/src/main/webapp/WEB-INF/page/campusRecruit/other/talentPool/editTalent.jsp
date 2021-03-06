<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html style="background-color:#ecf0f5;">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<!-- Tell the browser to be responsive to screen width -->
<meta
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no"
	name="viewport">
<link rel="shortcut icon"
	href="${pageContext.request.contextPath}/common/image/logo.ico" />
<s:include value="../../../common.jsp"></s:include>
<!-- 页面js -->
<script src="${pageContext.request.contextPath}/campusRecruit/other/talentPool/editTalent.js"></script>
<!-- js国际化 -->
<script src="${pageContext.request.contextPath}/campusRecruit/other/talentPool/${system_lang}.js"></script>
<title>修改人才信息</title>
<style type="text/css">
#univ,#position,#college,#major,#work_location,#proj_group {/*用于修复input-group时，上方显示一个小三角的bug*/
    width: 50%;
    display:none;
}

div{
padding:0;
margin: 0 auto;
overflow: hidden;
text-align: left;
}
</style>
</head>
<body>
	<div id="loading-mask" style="display:none;">
		<div style="z-index:20001;position: absolute; top: 0px; left: 0px; width: 100%; height: 100%; background: #C3C3C3; opacity: 0.5;"></div>
		<div id="pageloading" style="z-index:20002;position:absolute; top: 35%; left: 35%;text-align: center; width: 30%; height: 40px;">
			<div class="progress active">
				<div class="progress-bar progress-bar-primary progress-bar-striped"
					id="progressbar" role="progressbar" aria-valuenow="0" aria-valuemin="0"
					aria-valuemax="100" style="width: 0%">
					0
				</div>
			</div>
		</div>
	</div>
	<section class="content" style="padding-top: 5px;padding-bottom: 5px;background-color:#ecf0f5">
		<div class="box">
			<div class="box-body">
				<form id="editForm" method="post">
					<div style="display:none">
						<input type="hidden" id="id" name="id" class="form-control" value="${talentVo.id}" placeholder="">
						<input type="hidden" id="last_update_person" name="last_update_person" value="${talentVo.last_update_person }" placeholder="">
						<input type="hidden" id="last_update_time" name="last_update_time" value="${talentVo.last_update_time }" placeholder="">
						<input type="hidden" id="gender_hidden" name="gender_hidden" class="form-control" value="${talentVo.gender}" placeholder="">
						<input type="hidden" id="recruit_state_hidden" name="recruit_state_hidden" class="form-control" value="${talentVo.recruit_state}" placeholder="">
						<input type="hidden" id="degree_hidden" name="degree_hidden" class="form-control" value="${talentVo.degree}" placeholder="">
						<input type="hidden" id="engLevel_hidden" name="engLevel_hidden" class="form-control" value="${talentVo.english_level}" placeholder="">
						<input type="hidden" id="talSource_hidden" name="talSource_hidden" class="form-control" value="${talentVo.talent_source}" placeholder="">
						<input type="hidden" id="univ_hidden" name="univ_hidden" class="form-control" value="${talentVo.univ.id}" placeholder="">
						<input type="hidden" id="college_hidden" name="college_hidden" class="form-control" value="${talentVo.college.id}" placeholder="">
						<input type="hidden" id="position_hidden" name="position_hidden" class="form-control" value="${talentVo.position}" placeholder="">
						<input type="hidden" id="major_hidden" name="major_hidden" class="form-control" value="${talentVo.major}" placeholder="">
						<input type="hidden" id="proj_group_hidden" name="proj_group_hidden" class="form-control" value="${talentVo.proj_group}" placeholder="">
						<input type="hidden" id="work_location_hidden" name="work_location_hidden" class="form-control" value="${talentVo.work_location}" placeholder="">
						<input type="hidden" id="employmt_agreemt_hidden" name="employmt_agreemt_hidden" class="form-control" value="${talentVo.employmt_agreemt}" placeholder="">
							
						<input type="hidden" id="native_place_prov_hidden" name="work_location_hidden" class="form-control" value="${talentVo.native_place_prov}" placeholder="">
						<input type="hidden" id="native_place_city_hidden" name="employmt_agreemt_hidden" class="form-control" value="${talentVo.native_place_city}" placeholder="">					
					
					</div>
					<div class="row">
						<div class="col-md-8 col-xs-8">
							<div class="row">
								<div class="col-md-6 col-xs-6">
									<div class="form-group">
										<label for="name"><!-- 人才姓名 --><s:text name="tal.name"/><small><i class="fa fa-star notNull"></i></small></label>
										<div class="input-group">
											<span class="input-group-addon"><li class="fa fa-user"></li></span>
											<input type="text" id="name" name="name" class="form-control" value="${talentVo.name}" placeholder="Chinese Name">
										</div>
									</div>
								</div>
								<div class="col-md-6 col-xs-6">
									<div class="form-group">
										<label for="spell_name"><!-- 姓名拼音 --><s:text name="tal.spell_name"/></label>
										<div class="input-group">
											<span class="input-group-addon"><li class="fa fa-user"></li></span>
											<input type="text" id="spell_name" name="spell_name" class="form-control" value="${talentVo.spell_name }" placeholder="English Name">
										</div>
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-md-6 col-xs-6">
									<div class="form-group">
										<label for="gender"><!-- 人才性别 --><s:text name="tal.gender"/><small><i class="fa fa-star notNull"></i></small>	</label>
										<select class="form-control select" id="gender" name="gender" style="width: 100%;">
											<option value=""></option>
										</select>
									</div>
								</div>
								<div class="col-md-6 col-xs-6">
									<div class="form-group">
										<label for="age"><!-- 人才年龄 --><s:text name="tal.age"/></label>
										<div class="input-group">
											<span class="input-group-addon"><li class="fa fa-clock-o"></li></span>
											<input type="text" id="age" name="age" class="form-control" value="${talentVo.age }" placeholder="Talent Age">
										</div>
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-md-6 col-xs-6">
									<div class="form-group">
										<label for="birthday"><!-- 出生日期 --><s:text name="tal.birthday"/></label>
										<div class="input-group">
											<span class="input-group-addon"><li class="fa fa-birthday-cake"></li></span>
											 <input type="text" id="birthday" name="birthday" class="form-control" value="${talentVo.birthday }" >
										</div>
									</div>
								</div>
								<div class="col-md-6 col-xs-6">
									<div class="form-group">
										<label for="recruit_state"><!-- 招聘状态 --><s:text name="tal.rcState"/><small><i class="fa fa-star notNull"></i></small></label>
										<select class="form-control select" id="recruit_state" name="recruit_state" style="width: 100%;">
											<option value=""></option>
										</select>
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-md-12 col-xs-12">
									<div class="form-group">
										<label for="state_comment"><!-- 状态说明 --><s:text name="tal.state_comment"/></label>
										<textarea class="form-control" id="state_comment" name="state_comment" rows="2" 
					                				placeholder="Recruit State Comments ...">${talentVo.state_comment }</textarea>
									</div>
								</div>
							</div>
						</div>
						<div class="col-md-4 col-xs-4">
							<div class="form-group">
								<label><!-- 人才头像 --><s:text name="tal.photo"/></label>
								<button type="button" class="btn btn-block btn-primary btn-sm"
									style="width:50%;margin-left: auto;margin-right: auto;"
									onclick="document.getElementById('photo').click();">
									<li class="glyphicon glyphicon-pencil"></li>&nbsp;&nbsp;
									<!-- 修改头像 -->
									<s:text name="tal.editPhoto"/>
								</button>
								<div style="display: none;">
									<input id="photo" type="file" name="photo.file" onchange="change(this)" />
								</div>
								<div>
									<div style="text-align:center;width:80%;margin-left: auto;margin-right: auto;">
										<!-- style="text-align: center; vertical-align: middle; line-height: 200px; border: 0px solid #88C4F7; margin-bottom: 17px; margin-left: 28%; margin-top: 5%;" -->
										<img class="attachment-img"
											style="width: 130px;height: 130px;margin-top: 5%;;border:0px solid #88C4F7;"
											id="preview" onclick="clickInput()"
											src="../campusRC/talent!readTalentPhoto.do?id=${talentVo.id }"
											onerror="this.src='${pageContext.request.contextPath}/common/image/user2-160x160.jpg'"
											onclick="document.getElementById('photo').click();"
											alt="Attachment Image">
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-md-8 col-xs-8">
							<div class="row">
								<div class="col-md-6 col-xs-6">
									<div class="form-group">
										<label for="cardno"><!-- 身份证号 --><s:text name="tal.cardno"/></label>
										<div class="input-group">
											<span class="input-group-addon"><li class="fa fa-credit-card"></li></span>
											<input type="text" id="cardno" name="cardno" class="form-control" value="${talentVo.cardno }"  onblur="returnDate();" placeholder="ID Card">
										</div>
									</div>
								</div>
								<div class="col-md-6 col-xs-6">
									<div class="form-group">
										<label for="mobile"><!-- 手机号码--><s:text name="tal.mobile"/><small><i class="fa fa-star notNull"></i></small></label>
										<div class="input-group">
											<span class="input-group-addon"><li class="fa fa-mobile"></li></span>
											<input type="text" id="mobile" name="mobile" class="form-control" value="${talentVo.mobile }" placeholder="Mobile">
										</div>
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-md-6 col-xs-6">
									<div class="form-group">
										<label for="degree"><!-- 人才学历 --><s:text name="tal.degree"/></label>
										<select class="form-control select" id="degree" name="degree" style="width: 100%;">
											<option value=""></option>
										</select>
									</div>
								</div>
								<div class="col-md-6 col-xs-6">
									<div class="form-group">
										<label for="graduate_month"><s:text name="tal.graduateMonth"/></label>
										<div class="input-group">
											<div class="input-group-addon"><i class="fa fa-calendar"></i></div>
											<input type="text"  name="graduate_month"  id="graduate_month" class="form-control" value="${talentVo.graduate_month }"
											placeholder="Graduate Time">
										</div>
									</div>
								</div>	
							</div>
							<div class="row">
								<div class="col-md-6 col-xs-6">
									<div class="form-group">
										<label for="univ"><!-- 学校名称 --><s:text name="tal.univ"/></label>
										<div class="input-group" style="width: 100%;">
											<select class="form-control select" id="univ" name="univ.id" style="width: 50%;">
												<option value=""></option>
											</select>
											<input type="text" id="univComment" name="univComment" value="${talentVo.univComment}" class="form-control" style="width: 50%;float:right;" placeholder="No school.Please key in" >
										</div>
									</div>
								</div>
								<div class="col-md-6 col-xs-6">
									<div class="form-group"> 
										<label for="college"><!-- 学院名称--><s:text name="tal.college"/></label>
										<div class="input-group" style="width: 100%;">
										<select class="form-control select" id="college" name="college.id" style="width: 50%;">
											<option value=""></option>
										</select>
										<input type="text" id="collegeComment" name="collegeComment" class="form-control" style="width: 50%;float:right;" placeholder="No Colleage.Please key in" value="${talentVo.collegeComment}" >									
										</div> 
									</div> 
								</div>
							</div>
							<div class="row">
								<div class="col-md-6 col-xs-6">
									<div class="form-group">
										<label for="position"><!-- 岗位 --><s:text name="tal.position"/></label>
										<div class="input-group" style="width: 100%;">
											<select class="form-control select" id="position" name="position" style="width: 50%;">
												<option value=""></option>
											</select>
											<input type="text" id="positionComment" name="positionComment" value="${talentVo.positionComment}" class="form-control" style="width: 50%;float:right;" placeholder="No Position.Please key in" >
										</div>
									</div>
								</div>
								<div class="col-md-6 col-xs-6">
									<div class="form-group">
										<label for="employmt_agreemt"><!-- 就业协议 --><s:text name="tal.employmtAgreemt"/></label>
											<select class="form-control select" id="employmt_agreemt" name="employmt_agreemt" style="width: 100%;">
												<option value=""></option>
											</select>
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-md-6 col-xs-6">
										<div class="form-group">
										<label for="native_place_prov"><!-- 户籍--><s:text name="tal.nativePlaceProv"/></label>
										<div class="input-group" style="width: 100%;">
											<select class="form-control select" id="native_place_prov" name="native_place_prov" style="width: 32%">
												<option value=""></option>
											</select>
											<select class="form-control select" id="native_place_city" name="native_place_city" style="width: 32%">
												<option  value=""></option>
											</select>
											<input type="text" id="native_place_comment" name="native_place_comment" class="form-control" style="width: 34%;float:right;position:relative;" value="${talentVo.native_place_comment}" placeholder="No WorkLocation.Please key in" >
										</div>
									</div>
								</div>	
								<div class="col-md-6 col-xs-6">
									<div class="form-group">
										<label for="work_location"><!-- 工作地点--><s:text name="tal.workLocation"/></label>
										<div class="input-group" style="width: 100%;">
											<select class="form-control select" id="work_location" name="work_location" style="width: 50%;">
												<option value=""></option>
											</select>
											<input type="text" id="work_loc_comment" name="work_loc_comment" class="form-control"  value="${talentVo.work_loc_comment}" style="width: 50%;float:right;" placeholder="Detail Address" >
										</div>
									</div>
								</div>
 							</div>
 							<div class="row">
								<div class="col-md-6 col-xs-6">
									<div class="form-group">
										<label for="in_company_time"><s:text name="tal.inCompanyTime"/></label>
											<div class="input-group">
												<div class="input-group-addon"><i class="fa fa-calendar"></i></div>
													<input type="text"  name="in_company_time"  id="in_company_time" class="form-control" value="${talentVo.in_company_time}" placeholder=" Entry Company Time">
											</div>
									</div>
								</div>
								<div class="col-md-6 col-xs-6">
									<div class="form-group">
										<label for="in_proj_time"><s:text name="tal.inProjTime"/></label>
											<div class="input-group">
												<div class="input-group-addon"><i class="fa fa-calendar"></i></div>
													<input type="text"  name="in_proj_time"  id="in_proj_time" class="form-control" value="${talentVo.in_proj_time}" placeholder="Entry Project Time">
											</div>
									</div>
								</div>		
 							</div>
 							<div class="row">
 								<div class="col-md-12 col-xs-12">
									<div class="form-group">
										<label for="remark"><!-- 备注 --><s:text name="tal.remark"/></label>
										<textarea class="form-control" id="remark" name="remark" rows="1" 
					                				placeholder="Remark ..."> ${talentVo.remark}</textarea>
									</div>
								</div>					
 							</div>
						</div>
						<div class="col-md-4 col-xs-4">
							<div class="row">
								<div class="col-md-12 col-xs-12">
									<div class="form-group">
										<label for="email"><!-- 电子邮件--><s:text name="tal.email"/><small><i class="fa fa-star notNull"></i></small></label>
										<div class="input-group">
											<span class="input-group-addon"><li class="fa fa-envelope"></li></span>
											<input type="text" class="form-control" id="email" name="email" value="${talentVo.email }" placeholder="Email">
										</div>
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-md-12 col-xs-12">
									<div class="form-group">
										<label for="engLevel"><!-- 英语等级--><s:text name="tal.engLevel"/></label>
										<select class="form-control select" id="engLevel" name="english_level" style="width: 100%;">
											<option value=""></option>
										</select>
									</div>
								</div>
							</div>
							<div class="row">								
								<div class="col-md-12 col-xs-12">
									<div class="form-group"> 
										<label for="major"><!-- 专业--><s:text name="tal.major"/></label>
										<div class="input-group" style="width: 100%;">
										<select class="form-control select" id="major" name="major" style="width: 50%;">
											<option value=""></option>
										</select>
										<input type="text" id="major_comment" name="major_comment" class="form-control"  style="width: 50%;float:right;" value="${talentVo.major_comment }" placeholder="No Major.Please key in" >									
										</div> 
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-md-12 col-xs-12">
									<div class="form-group">
										<label for="talSource"><!-- 人才来源--><s:text name="tal.talSource"/></label>
										<select class="form-control select" id="talSource" name="talent_source" style="width: 100%;">
											<option value=""></option>
										</select>
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-md-12 col-xs-12">
									<div class="form-group">
										<label for="proj_group"><!-- 项目组--><s:text name="tal.projGrop"/></label>
											<div class="input-group" style="width: 100%;">
												<select class="form-control select" id="proj_group" name="proj_group" style="width: 50%;">
													<option value=""></option>
												</select>
												<input type="text" id="proj_group_comment" name="proj_group_comment" class="form-control"  value="${talentVo.proj_group_comment }" style="width: 50%;float:right;" placeholder="No ProjGroup.Please key in" >																			
											</div>
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-md-12 col-xs-12">
									<div class="form-group">
										<label for="leave_time"><s:text name="tal.leaveTime"/></label>
											<div class="input-group">
												<div class="input-group-addon"><i class="fa fa-calendar"></i></div>
													<input type="text"  name="leave_time"  id="leave_time" class="form-control" value="${talentVo.leave_time }" placeholder="Leave Time">
											</div>
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-md-12 col-xs-12">
									<div class="form-group">
					                	<label id="inputLabel"><!-- 简历附件--><s:text name="tal.resume"/></label>
			                			<div class="input-group">
			            					<input type="text" class="form-control" id="resumeFile_name" value="${talentVo.resume_url}" readonly>
			            					<span class="input-group-btn">
			            					<button type="button" id="downResumeBtn" class="btn btn-default btn-flat" onclick="downLoadResume(${talentVo.id})">
												<li class="fa fa-download"></li>&nbsp;&nbsp;
												<s:text name="tal.downLoadResumeFile"/>
											</button>
											<button type="button" id="downResumeBtn" class="btn btn-default btn-flat" onclick="document.getElementById('resume').click();">
												<li class="fa fa-upload"></li>&nbsp;&nbsp;
												<s:text name="chooseResumeFile"/>
											</button>
											<button type="button" id="downResumeBtn" class="btn btn-default btn-flat" onclick="removeResume(${talentVo.id})">
												<li class="fa fa-remove"></li>&nbsp;&nbsp;
												<s:text name="removeResumeFile"/>
											</button>
			               					</span>
			           					</div>
			           					<input type="file" style="display: none;" id="resume" name="resume.file" onchange="resumeChange(this)" />
			           					
			                			<%-- 
			                			<button type="button"
											class="btn btn-block btn-default btn-sm"
											onclick="document.getElementById('resume').click();">
											<li class="fa fa-upload"></li>&nbsp;&nbsp;
											<s:text name="chooseResumeFile"/>
										</button>
					                	<p class="help-block" id="resumeFile_name"></p>
					                	<input type="file" style="display: none;" id="resume" name="resume.file" onchange="resumeChange(this)" />
					                	 --%>
					                </div>
								</div>	
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-md-3 col-xs-3">
							<div class="form-group">
								<label for="create_person"><!-- 创建人员--><s:text name="createPerson"/></label>
								<div class="input-group">
									<span class="input-group-addon"><li class="fa fa-user"></li></span>
									<input type="text" class="form-control" id="create_person" name="create_person" value="${talentVo.create_person }" placeholder="" readonly>
								</div>
							</div>
						</div>
						<div class="col-md-3 col-xs-3">
							<div class="form-group">
								<label for="create_time"><!-- 创建时间--><s:text name="createTime"/></label>
								<div class="input-group">
									<span class="input-group-addon"><li class="fa fa-clock-o"></li></span>
									<input type="text" class="form-control" id="create_time" name="create_time" value="${talentVo.create_time }" placeholder="" readonly>
								</div>
							</div>
						</div>
						<div class="col-md-3 col-xs-3">
							<div class="form-group">
								<label for="update_person"><!-- 更新人员--><s:text name="updatePerson"/></label>
								<div class="input-group">
									<span class="input-group-addon"><li class="fa fa-user"></li></span>
									<input type="text" class="form-control" id="update_person" name="update_person" value="${talentVo.update_person }" placeholder="" readonly>
								</div>
							</div>
						</div>
						<div class="col-md-3 col-xs-3">
							<div class="form-group">
								<label for="update_time"><!-- 更新时间--><s:text name="updateTime"/></label>
								<div class="input-group">
									<span class="input-group-addon"><li class="fa fa-clock-o"></li></span>
									<input type="text" class="form-control" id="update_time" name="update_time" value="${talentVo.update_time }" placeholder="" readonly>
								</div>
							</div>
						</div>
					</div>
					<div class="row">
						<input type="file" style="display: none;" id="resume" name="resume.file" onchange="resumeChange(this)" />
					</div>
				</form>
			</div>
			<div class="box-footer" style="padding: 0 0 0 0;">
				<div class="col-md-12 col-xs-12">
					<div class="col-md-3 col-xs-3 col-md-offset-6 col-xs-offset-6">
						<button type="button" id="closeButton"
							class="btn btn-block btn-primary btn-sm" onclick="javascript: parent.layer.close(parent.layer.getFrameIndex(window.name));" >
							<i class="fa fa-close"></i>&nbsp;&nbsp;&nbsp;<s:text name="closeButton"/>
						</button>
					</div>
					<div class="col-md-3 col-xs-3">
						<button type="button" id="saveButton"
							class="btn btn-block btn-primary btn-sm" onclick="javascript: save();">
							<i class="fa fa-check"></i>&nbsp;&nbsp;&nbsp;<s:text name="saveButton"/>
						</button>
					</div>
				</div>
			</div>
		</div>
	</section>
</body>
</html>