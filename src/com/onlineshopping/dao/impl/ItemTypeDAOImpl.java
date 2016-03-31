package com.onlineshopping.dao.impl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.onlineshopping.bean.ItemType;
import com.onlineshopping.dao.ItemTypeDAO;

public class ItemTypeDAOImpl extends HibernateDaoSupport implements ItemTypeDAO {
	
	@Override
	public void insert(ItemType itemType){
		this.getHibernateTemplate().save(itemType);
	}
	@Override
	public void deleteType(Integer id) {
		Session session = this.getSession();
		Query query = session.createQuery("delete ItemType where id=:id");
		query.setParameter("id", id);
		query.executeUpdate();
	}
	@Override
	public List<?> findAll() {
		return this.getHibernateTemplate().find("from ItemType");
	}
	@Override
	public List<?> findByProperty(String propName, Object value) {
		String query ="from ItemType as type where type." + propName + "= ?";
		return this.getHibernateTemplate().find(query, value);
	}
	@Override
	public List<?> findByPid(Integer pid) {
		Session session = this.getSession();
		Query query = session.createQuery("from ItemType as t where t.pid=:pid");
		query.setParameter("pid", pid);
		return query.list();
	}
}