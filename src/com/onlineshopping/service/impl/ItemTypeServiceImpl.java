package com.onlineshopping.service.impl;

import java.util.List;

import com.onlineshopping.bean.ItemType;
import com.onlineshopping.dao.ItemTypeDAO;
import com.onlineshopping.service.ItemTypeService;

public class ItemTypeServiceImpl implements ItemTypeService{
	private ItemTypeDAO itemTypeDao;//接口

	public void setItemTypeDao(ItemTypeDAO itemTypeDao) {
		this.itemTypeDao = itemTypeDao;
	}
	@Override
	public List<?> getAllType(){
		return itemTypeDao.findAll();
	}
	@Override
	public void save(ItemType itemType){
		itemTypeDao.insert(itemType);
	}
	@Override
	public void delete(Integer id) {
		itemTypeDao.deleteType(id);
	}
	@Override
	public List<?> findByPid(Integer id) {
		// TODO Auto-generated method stub
		return itemTypeDao.findByPid(id);
	}
	@Override
	public List<?> getTypeByPid(Integer tid) {
		// TODO Auto-generated method stub
		return itemTypeDao.findByProperty("pid", tid);
	}
}