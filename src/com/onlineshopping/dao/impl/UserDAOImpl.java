package com.onlineshopping.dao.impl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.onlineshopping.bean.User;
import com.onlineshopping.dao.UserDAO;

public class UserDAOImpl extends HibernateDaoSupport implements UserDAO {

	@Override
	public void insert(User user) {
		this.getHibernateTemplate().save(user);
	}

	@Override
	public void delete(Integer id) {
		Session session = this.getSession();
		Query query = session.createQuery("delete User where id=:id");
		query.setParameter("id", id);
		query.executeUpdate();
	}

	@Override
	public void update(User user) {
		this.getHibernateTemplate().saveOrUpdate(user);
	}

	@Override
	public List<?> findAll() {
		List<?> userList = this.getHibernateTemplate().find("from User");
		return userList;
	}

	@Override
	public List<?> findAllBuyers() {
		List<?> buyerList = this.getHibernateTemplate().find(
				"from User where role=2");
		return buyerList;
	}

	@Override
	public List<?> findByProperty(String userName, String password) {
		String hql = "from User as user where user.userName=" + userName
				+ " and user.password=" + password;
		Session session = getSession();
		Query query = session
				.createQuery("from User where username=:userName and password=:password");
		query.setParameter("userName", userName);
		query.setParameter("password", password);
		return query.list();
	}
	@Override
	public List<?> findById(Integer id) {
		Session session = getSession();
		Query query = session.createQuery("from User where id=:id");
		query.setParameter("id", id);
		return query.list();

	}
}
