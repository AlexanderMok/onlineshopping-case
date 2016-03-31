package com.onlineshopping.service;

import java.util.List;

import com.onlineshopping.bean.Item;

public interface ItemService {

	void insert(Item item);

	void delete(Integer id);

	void modify(Item item);

	List<?> getAllItem();

	Integer getTotalPage(Integer pageSize);
	List<?> getPage(Integer curPage);

	List<?> getByType(Integer i);

	Item getByUid(Integer id);
	
	Item getById(Integer id);

	List<?> getLateItem();

}
