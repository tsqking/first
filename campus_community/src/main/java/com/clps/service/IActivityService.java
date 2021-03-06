/**
 * Project Name:campus_community
 * File Name:IActivityService.java
 * Package Name:com.clps.service
 * Date:2017年3月27日下午10:02:37
 * Copyright (c) 2017, tsqking@163.com All Rights Reserved.
 *
*/

package com.clps.service;

import java.util.List;
import java.util.Map;

import com.clps.common.bean.Activity;
import com.clps.common.exception.ActivityServiceException;
import com.clps.common.util.PageVo;

/**
 * ClassName:IActivityService <br/>
 * Function: TODO ADD FUNCTION. <br/>
 * Reason: TODO ADD REASON. <br/>
 * Date: 2017年3月27日 下午10:02:37 <br/>
 * 
 * @author Charles
 * @version
 * @since JDK 1.8
 * @see
 */

public interface IActivityService {
	/**
	 * listAllActivity:(分页查询所有可用活动). <br/>
	 * 
	 * @author Charles
	 * @param pv
	 * @return
	 * @throws ActivityServiceException
	 * @since JDK 1.8
	 */
	PageVo<Activity> listAllActivity(PageVo<Activity> pv) throws ActivityServiceException;

	/**
	 * listActivityMng:(管理员分页查询所有活动条数). <br/>
	 * 
	 * @author Charles
	 * @param pv
	 * @return
	 * @throws ActivityServiceException
	 * @since JDK 1.8
	 */
	PageVo<Activity> listActivityMng(PageVo<Activity> pv) throws ActivityServiceException;

	/**
	 * addAcMng:(后台管理员添加活动). <br/>
	 * 
	 * @author Charles
	 * @param activity
	 * @return
	 * @throws ActivityServiceException
	 * @since JDK 1.8
	 */
	boolean addAcMng(Activity activity) throws ActivityServiceException;

	/**
	 * updateAcMng:(后台管理员更新活动). <br/>
	 * 
	 * @author Charles
	 * @param activity
	 * @return
	 * @throws ActivityServiceException
	 * @since JDK 1.8
	 */
	boolean updateAcMng(Activity activity) throws ActivityServiceException;

	/**
	 * deleteAcMng:(管理员通过id删除活动). <br/>
	 * 
	 * @author Charles
	 * @param id
	 * @return
	 * @throws ActivityServiceException
	 * @since JDK 1.8
	 */
	boolean deleteAcMng(Integer id) throws ActivityServiceException;

	/**
	 * applyAct:(批量报名活动). <br/>
	 * 
	 * @author Charles
	 * @param applylist
	 * @return
	 * @throws ActivityServiceException
	 * @since JDK 1.8
	 */
	boolean applyAct(List<Map<String, Object>> applylist) throws ActivityServiceException;

	/**
	 * listAcApply:(分页查询所有活动报名情况). <br/>
	 * 
	 * @author Charles
	 * @param pv
	 * @return
	 * @throws ActivityServiceException
	 * @since JDK 1.8
	 */
	PageVo<Map<String, Object>> listAcApply(PageVo<Map<String, Object>> pv) throws ActivityServiceException;
}
