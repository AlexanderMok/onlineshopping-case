package com.onlineshopping.action;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.onlineshopping.bean.Item;
import com.onlineshopping.service.ItemService;
import com.onlineshopping.service.ItemTypeService;
import com.opensymphony.xwork2.ActionSupport;

public class IndexAction extends ActionSupport {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private ItemService itemService;
	private ItemTypeService itemTypeService;
	private List<?> topItemTypeList;
	private List<?> list;//
	private List<?> nlist;
	private Item item;
	private Integer id;// 首页的商品id
	private List<?> secondTypeList;
	private List<?> thirdTypeList;
	// 分页
	private Integer curPage = 1;
	private Integer totalPage = 0;
	private Integer pageRecord = 0;

	public Integer getCurPage() {
		return curPage;
	}

	public void setCurPage(Integer curPage) {
		this.curPage = curPage;
	}

	public Integer getTotalPage() {
		return totalPage;
	}

	public void setTotalPage(Integer totalPage) {
		this.totalPage = totalPage;
	}

	public Integer getPageRecord() {
		return pageRecord;
	}

	public void setPageRecord(Integer pageRecord) {
		this.pageRecord = pageRecord;
	}

	public List<?> getThirdTypeList() {
		return thirdTypeList;
	}

	public void setThirdTypeList(List<?> thirdTypeList) {
		this.thirdTypeList = thirdTypeList;
	}

	public List<?> getSecondTypeList() {
		return secondTypeList;
	}

	public void setSecondTypeList(List<?> secondTypeList) {
		this.secondTypeList = secondTypeList;
	}

	public List<?> getTopItemTypeList() {
		return topItemTypeList;
	}

	public void setTopItemTypeList(List<?> topItemTypeList) {
		this.topItemTypeList = topItemTypeList;
	}

	public List<?> getList() {
		return list;
	}

	public void setList(List<?> list) {
		this.list = list;
	}

	public List<?> getNlist() {
		return nlist;
	}

	public void setNlist(List<?> nlist) {
		this.nlist = nlist;
	}

	public Item getItem() {
		return item;
	}

	public void setItem(Item item) {
		this.item = item;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public void setItemService(ItemService itemService) {
		this.itemService = itemService;
	}

	public void setItemTypeService(ItemTypeService itemTypeService) {
		this.itemTypeService = itemTypeService;
	}

	@Override
	// 商城首页显示顶层分类
	public String execute() throws Exception {
		list = itemService.getByType(4);//
		topItemTypeList = itemTypeService.findByPid(0);
		secondTypeList = itemTypeService.findByPid(1);
		thirdTypeList = itemTypeService.findByPid(2);
		return super.execute();
	}

	public String showSingleItem() throws Exception {
		item = itemService.getById(id);
		return SUCCESS;
	}

	public String home() throws Exception {
		topItemTypeList = itemTypeService.findByPid(0);
		secondTypeList = itemTypeService.findByPid(1);
		thirdTypeList = itemTypeService.findByPid(2);
		list = itemService.getByType(4);
		return SUCCESS;
	}

	public String product() throws Exception {
		topItemTypeList = itemTypeService.findByPid(0);
		secondTypeList = itemTypeService.findByPid(1);
		thirdTypeList = itemTypeService.findByPid(2);
		
		if (totalPage == 0) {
			totalPage = itemService.getTotalPage(5);
		}
		if (totalPage == 0) {
			pageRecord = itemService.getAllItem().size();
		}
		if (curPage < 0) {
			curPage = 1;
		}
		nlist = itemService.getPage(curPage);
		return SUCCESS;
	}

}
