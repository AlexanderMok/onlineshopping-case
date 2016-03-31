package com.onlineshopping.dao.impl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.SQLQuery;
import org.hibernate.Session;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.onlineshopping.bean.Item;
import com.onlineshopping.dao.ItemDAO;

public class ItemDAOImpl extends HibernateDaoSupport implements ItemDAO {

	@Override
	public void insert(Item item) {
		this.getHibernateTemplate().save(item);
	}

	@Override
	public void delete(Integer id) {
		Session session = this.getSession();
		Query query = session.createQuery("delete Item where id=:id");
		query.setParameter("id", id);
		query.executeUpdate();
	}

	@Override
	public void Update(Item item) {
		this.getHibernateTemplate().saveOrUpdate(item);
	}

	@Override
	public List<?> findAll() {
		List<?> itemList = this.getHibernateTemplate().find("from Item");
		return itemList;
	}

	@Override
	public Item findById(Integer id) {
		Session session = getSession();
		Query query = session.createQuery("from Item where id=:id");
		query.setParameter("id", id);
		return (Item) query.list().get(0);
	}

	@Override
	public Integer getTotalPage(Integer pageSize) {
		Integer rowTotal = this.getHibernateTemplate().find("from Item").size();
		Integer total = rowTotal / pageSize;
		if (rowTotal % pageSize > 0) {
			total++;
		}
		return total;
	}

	@Override
	public List<?> getPage(Integer curPage) {
		Session session = this.getHibernateTemplate().getSessionFactory()
				.getCurrentSession();
		Query query = session.createQuery("from Item");
		query.setMaxResults(4);
		query.setFirstResult((curPage - 1) * 4);
		return query.list();
	}

	@Override
	public List<?> findByProperty(String propName, Object value) {
		String queryString = "from Item as item where item." + propName
				+ "=? order by item.id desc";
		return this.getHibernateTemplate().find(queryString, value);
	}

}