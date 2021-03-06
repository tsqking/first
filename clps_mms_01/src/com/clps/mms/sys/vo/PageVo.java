
/**
 * Project Name:clps_mms_copyright_201610
 * File Name:PageVo.java
 * Package Name:com.clps.mms.sys.vo
 * Date:2016年11月29日下午2:53:24
 * Copyright (c) 2016, tmbasama@163.com All Rights Reserved.
 *
 */
package com.clps.mms.sys.vo;

import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;

/**
 * ClassName: PageVo.
 * Function: TODO ADD FUNCTION.
 * Reason: TODO ADD REASON(可选).
 * date: 2016年11月29日 下午2:53:24 
 *
 * @author tony.tan
 * @version 
 * 
 */
public class PageVo<T> {
	    //精确查询条件
		private HashMap<String, String> where1;//条件存放
		//模糊查询条件
		private HashMap<String, String> where2;//条件存放
		
		//自定义搜索条件存放
		private HashMap<String, String> other;
		
		//排序
		private LinkedHashMap<String, String> sort;//请求参数
		
		//页码
		private int page;//请求参数
		
		//每页条数
		private int limitPage;//请求参数
		
		//数据
		private List<T> list;//返回参数
		
		//总条数
		private String allcount;//返回参数
		
		//时间范围搜索 yyyy-mm-dd HH:mm:ss
		private HashMap<String, String> dateTime;
		//时间范围搜索 yyyy-mm-dd HH:mm:ss
		private HashMap<String, String> dateTime2;
		public HashMap<String, String> getWhere1() {
			return where1;
		}
		public void setWhere1(HashMap<String, String> where1) {
			this.where1 = where1;
		}
		public HashMap<String, String> getWhere2() {
			return where2;
		}
		public void setWhere2(HashMap<String, String> where2) {
			this.where2 = where2;
		}
		public HashMap<String, String> getOther() {
			return other;
		}
		public void setOther(HashMap<String, String> other) {
			this.other = other;
		}
		public LinkedHashMap<String, String> getSort() {
			return sort;
		}
		public void setSort(LinkedHashMap<String, String> sort) {
			this.sort = sort;
		}
		public int getPage() {
			return page;
		}
		public void setPage(int page) {
			this.page = page;
		}
		public int getLimitPage() {
			return limitPage;
		}
		public void setLimitPage(int limitPage) {
			this.limitPage = limitPage;
		}
		public List<T> getList() {
			return list;
		}
		public void setList(List<T> list) {
			this.list = list;
		}
		public String getAllcount() {
			return allcount;
		}
		public void setAllcount(String allcount) {
			this.allcount = allcount;
		}
		public HashMap<String, String> getDateTime() {
			return dateTime;
		}
		public void setDateTime(HashMap<String, String> dateTime) {
			this.dateTime = dateTime;
		}
		public HashMap<String, String> getDateTime2() {
			return dateTime2;
		}
		public void setDateTime2(HashMap<String, String> dateTime2) {
			this.dateTime2 = dateTime2;
		}
		@Override
		public String toString() {
			return "PageVo [where1=" + where1 + ", where2=" + where2 + ", other=" + other + ", sort=" + sort + ", page="
					+ page + ", limitPage=" + limitPage + ", list=" + list + ", allcount=" + allcount + ", dateTime="
					+ dateTime + ", dateTime2=" + dateTime2 + "]";
		}
		
		
}

