package com.dao;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.LockOptions;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Example;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.context.ApplicationContext;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.hibernate.ProductsInformation;


/**
 * A data access object (DAO) providing persistence and search support for
 * ProductsInformation entities. Transaction control of the save(), update() and
 * delete() operations can directly support Spring container-managed
 * transactions or they can be augmented to handle user-managed Spring
 * transactions. Each of these methods provides additional information for how
 * to configure it for the desired type of transaction control.
 * 
 * @see com.hibernate.ProductsInformation
 * @author MyEclipse Persistence Tools
 */
@Service @Transactional
public class ProductsInformationDAO {
	private static final Logger log = LoggerFactory.getLogger(ProductsInformationDAO.class);
	// property constants
	public static final String PRODUCT_IMG_PATHS = "productImgPaths";
	public static final String PRODUCT_PRICE = "productPrice";

	@Resource SessionFactory sessionFactory;

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	private Session getCurrentSession() {
		return sessionFactory.getCurrentSession();
	}

	protected void initDao() {
		// do nothing
	}

	public void save(ProductsInformation transientInstance) {
		log.debug("saving ProductsInformation instance");
		try {
			getCurrentSession().save(transientInstance);
			log.debug("save successful");
		} catch (RuntimeException re) {
			log.error("save failed", re);
			throw re;
		}
	}

	public void delete(ProductsInformation persistentInstance) {
		log.debug("deleting ProductsInformation instance");
		try {
			getCurrentSession().delete(persistentInstance);
			log.debug("delete successful");
		} catch (RuntimeException re) {
			log.error("delete failed", re);
			throw re;
		}
	}

	public ProductsInformation findById(com.hibernate.ProductsInformationId id) {
		log.debug("getting ProductsInformation instance with id: " + id);
		try {
			ProductsInformation instance = (ProductsInformation) getCurrentSession()
					.get("com.hibernate.ProductsInformation", id);
			return instance;
		} catch (RuntimeException re) {
			log.error("get failed", re);
			throw re;
		}
	}

	public List findByExample(ProductsInformation instance) {
		log.debug("finding ProductsInformation instance by example");
		try {
			List results = getCurrentSession().createCriteria("com.hibernate.ProductsInformation")
					.add(Example.create(instance)).list();
			log.debug("find by example successful, result size: " + results.size());
			return results;
		} catch (RuntimeException re) {
			log.error("find by example failed", re);
			throw re;
		}
	}

	public List findByProperty(String propertyName, Object value) {
		log.debug("finding ProductsInformation instance with property: " + propertyName + ", value: " + value);
		try {
			String queryString = "from ProductsInformation as model where model." + propertyName + "= ?";
			Query queryObject = getCurrentSession().createQuery(queryString);
			queryObject.setParameter(0, value);
			return queryObject.list();
		} catch (RuntimeException re) {
			log.error("find by property name failed", re);
			throw re;
		}
	}

	public List findByProductImgPaths(Object productImgPaths) {
		return findByProperty(PRODUCT_IMG_PATHS, productImgPaths);
	}

	public List findByProductPrice(Object productPrice) {
		return findByProperty(PRODUCT_PRICE, productPrice);
	}

	public List findAll() {
		log.debug("finding all ProductsInformation instances");
		try {
			String queryString = "from ProductsInformation";
			Query queryObject = getCurrentSession().createQuery(queryString);
			return queryObject.list();
		} catch (RuntimeException re) {
			log.error("find all failed", re);
			throw re;
		}
	}

	public ProductsInformation merge(ProductsInformation detachedInstance) {
		log.debug("merging ProductsInformation instance");
		try {
			ProductsInformation result = (ProductsInformation) getCurrentSession().merge(detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public void attachDirty(ProductsInformation instance) {
		log.debug("attaching dirty ProductsInformation instance");
		try {
			getCurrentSession().saveOrUpdate(instance);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void attachClean(ProductsInformation instance) {
		log.debug("attaching clean ProductsInformation instance");
		try {
			getCurrentSession().buildLockRequest(LockOptions.NONE).lock(instance);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public static ProductsInformationDAO getFromApplicationContext(ApplicationContext ctx) {
		return (ProductsInformationDAO) ctx.getBean("ProductsInformationDAO");
	}
}