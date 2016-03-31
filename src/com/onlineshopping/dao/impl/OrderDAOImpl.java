package com.onlineshopping.dao.impl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.onlineshopping.bean.Order;
import com.onlineshopping.dao.OrderDAO;

public class OrderDAOImpl extends HibernateDaoSupport implements OrderDAO {

	@Override
	public void insert(Order order) {
		// TODO Auto-generated method stub
		this.getHibernateTemplate().save(order);
	}

	@Override
	public List<?> findByUid(Integer uid) {
		//String hql = "from Order as o where o.uid = ?";
		//return this.getHibernateTemplate().find(hql, id);
		Session session = getSession();
		Query query = session.createQuery("from Order where uid=:uid");
		query.setParameter("uid", uid);
		return query.list();
	}

	@Override
	public List<?> findAll() {
		// TODO Auto-generated method stub
		return this.getHibernateTemplate().find("from Order");
	}

	@Override
	public List<?> getPage(Integer curPage) {
		Session session = this.getHibernateTemplate().getSessionFactory()
				.getCurrentSession();
		Query query = session.createQuery("from Order");
		query.setMaxResults(10);
		query.setFirstResult((curPage - 1) * 10);
		return query.list();
	}

	@Override
	public Integer getTotalPage(Integer pageSize) {
		Integer rowTotal = this.getHibernateTemplate().find("from Order").size();
		Integer total = rowTotal / pageSize;
		if (rowTotal % pageSize > 0) {
			total++;
		}
		return total;
	}

	@Override
	public List<?> findById(Integer id) {
		
		Session session = getSession();
		Query query = session.createQuery("from Order where id=:id");
		query.setParameter("id", id);
		return query.list();
	}

	@Override
	public void update(Order order) {
		// TODO Auto-generated method stub
		this.getHibernateTemplate().update(order);
	}
}