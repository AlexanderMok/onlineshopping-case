package com.onlineshopping.service.impl;

import java.util.List;

import com.onlineshopping.bean.Item;
import com.onlineshopping.dao.ItemDAO;
import com.onlineshopping.service.ItemService;

public class ItemServiceImpl implements ItemService{
	private ItemDAO itemDao;

	public void setItemDao(ItemDAO itemDao) {
		this.itemDao = itemDao;
	}
	
	@Override
	public void insert(Item item){
		itemDao.insert(item);
	}
	
	@Override
	public void delete(Integer id){
		itemDao.delete(id);
	}
	
	@Override
	public void modify(Item item){
		itemDao.Update(item);
	}
	
	@Override
	public List<?> getAllItem(){
		return itemDao.findAll();
	}

	@Override
	public Integer getTotalPage(Integer pageSize) {
		return itemDao.getTotalPage(pageSize);
	}
	@Override
	public List<?> getPage(Integer curPage) {
		return itemDao.getPage(curPage);
	}
	
	@Override
	public Item getByUid(Integer id) {
		List<?> itemList = itemDao.findByProperty("id",id);
		Item item = itemList.size()>0?(Item)itemList.get(0):null;
		return item;
	}

	@Override
	public List<?> getByType(Integer id) {
		return itemDao.findByProperty("itemType.id", id);
	}

	@Override
	public Item getById(Integer id) {
		Item item = itemDao.findById(id);
		System.out.println(item.getItemName());
		return item;
	}

	@Override
	public List<?> getLateItem() {
		return null;
	}
	
}