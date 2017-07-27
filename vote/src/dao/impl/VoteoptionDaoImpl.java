package dao.impl;

import org.hibernate.Session;
import org.hibernate.Transaction;

import util.HibernateSessionFactory;
import dao.VoteoptionDao;
import entity.Voteoption;

public class VoteoptionDaoImpl implements VoteoptionDao {

	Session session=HibernateSessionFactory.getSession();
	public void updateItem(Voteoption vop) {
		Transaction tr=session.beginTransaction();
		session.update(vop);
		tr.commit();
	}
	public Voteoption getVoptionById(Long id) {
		return (Voteoption)session.get(Voteoption.class, id);
	}

}
