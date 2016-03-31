package com.onlineshopping.service;

import java.util.List;

import com.onlineshopping.bean.ItemType;

public interface ItemTypeService {
	List<?> getAllType();
	void save(ItemType itemType);
	List<?> findByPid(Integer i);
	void delete(Integer id);
	List<?> getTypeByPid(Integer tid);
}