package com.onlineshopping.action;

import java.util.List;

import org.apache.struts2.ServletActionContext;

import com.onlineshopping.bean.Item;
import com.onlineshopping.bean.ItemType;
import com.onlineshopping.service.ItemService;
import com.onlineshopping.service.ItemTypeService;
import com.opensymphony.xwork2.ModelDriven;

public class ItemAction extends AdminAction {

	private static final long serialVersionUID = 1L;
	private Item item;
	private ItemService itemService;
	private ItemTypeService itemTypeService;
	private List<?> itemTypeList;
	private List<?> itemList;
	private ItemType itemType;
	private String[] itemPics;
	private Integer id;

	// 分页
	private Integer curPage = 1;
	private Integer totalPage = 0;
	private Integer pageRecord = 0;

	public ItemAction() {
		itemType = new ItemType();
	}

	public List<?> getItemTypeList() {
		return itemTypeList;
	}

	public void setItemTypeList(List<?> itemTypeList) {
		this.itemTypeList = itemTypeList;
	}

	public List<?> getItemList() {
		return itemList;
	}

	public void setItemList(List<?> itemList) {
		this.itemList = itemList;
	}

	public ItemType getModel() {
		return itemType;
	}

	public Item getItem() {
		return item;
	}

	public void setItem(Item item) {
		this.item = item;
	}

	public void setItemService(ItemService itemService) {
		this.itemService = itemService;
	}

	public void setItemTypeService(ItemTypeService itemTypeService) {
		this.itemTypeService = itemTypeService;
	}

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

	public String[] getItemPics() {
		return itemPics;
	}

	public void setItemPics(String[] itemPics) {
		this.itemPics = itemPics;
	}
	

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String itemList() throws Exception {
		// itemList = itemService.getAllItem();
		if (totalPage == 0) {
			totalPage = itemService.getTotalPage(4);
		}
		if (totalPage == 0) {
			pageRecord = itemService.getAllItem().size();
		}
		if (curPage < 0) {
			curPage = 1;
		}
		itemList = itemService.getPage(curPage);
		
		for(int i=0;i<itemList.size();i++){
			Item item = (Item) itemList.get(i);
			String[] itemPic = item.getItemPic().substring(1).split(",");
			item.setPicPath(itemPic);
		}
		return SUCCESS;
	}

	// 添加页面用
	/*
	 * public String addItem() throws Exception { listItemType(); return
	 * SUCCESS; }
	 */

	// 表单提交用
	public String saveItem() throws Exception {
		itemService.insert(item);
		return SUCCESS;
	}

	public String deleteItem(Integer id) throws Exception {
		itemService.delete(id);
		return SUCCESS;
	}

	// 添加商品或分类时，列出所有商品类备选
	public String listItemType() throws Exception {
		itemTypeList = itemTypeService.getAllType();
		ServletActionContext.getRequest().getSession()
				.setAttribute("itemTypeList", itemTypeList);
		return SUCCESS;
	}

	/*
	 * public String addItemType() throws Exception { listItemType(); return
	 * SUCCESS; }
	 */
	public String saveItemType() throws Exception {
		itemTypeService.save(itemType);
		return SUCCESS;
	}

	public String delItemType() throws Exception {
		itemTypeService.delete(itemType.getId());
		return SUCCESS;
	}
	public String modifyItem() throws Exception {
		itemService.modify(item);
		return SUCCESS;
	}
	public String updateItem() throws Exception {
		System.out.println(id);
		item = itemService.getById(id);
		return SUCCESS;
	}
}