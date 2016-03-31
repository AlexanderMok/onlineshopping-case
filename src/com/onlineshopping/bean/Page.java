package com.onlineshopping.bean;

import java.util.List;

public class Page {

	private Integer curPage = 1;// 当前页数
	private Integer allPage;// 所有页数
	private Integer allRecord;// 所有记录数
	private Integer pageRecord;// 每页显示数
	private Integer nextPage;
	private Integer preivousPage;
	private List<?> pageData;// 一页数据

	public Page() {
	}

	public Page(Integer allRecord, Integer pageRecord, List<?> pageData) {
		this.allRecord = allRecord;
		this.pageRecord = pageRecord;
		this.pageData = pageData;
		this.allPage = (allRecord + pageRecord - 1) / pageRecord;
	}

	public Integer getCurPage() {
		return curPage;
	}

	public void setCurPage(Integer curPage) {
		this.curPage = curPage;
	}

	public Integer getAllPage() {
		return allPage;
	}

	public void setAllPage(Integer allPage) {
		this.allPage = allPage;
	}

	public Integer getAllRecord() {
		return allRecord;
	}

	public void setAllRecord(Integer allRecord) {
		this.allRecord = allRecord;
	}

	public Integer getPageRecord() {
		return pageRecord;
	}

	public void setPageRecord(Integer pageRecord) {
		this.pageRecord = pageRecord;
	}

	public Integer getNextPage() {
		return nextPage;
	}

	public void setNextPage(Integer nextPage) {
		this.nextPage = nextPage;
	}

	public Integer getPreivousPage() {
		return preivousPage;
	}

	public void setPreivousPage(Integer preivousPage) {
		this.preivousPage = preivousPage;
	}

	public List<?> getPageData() {
		return pageData;
	}

	public void setPageData(List<?> pageData) {
		this.pageData = pageData;
	}
}