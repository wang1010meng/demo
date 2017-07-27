package dao.impl;

import org.hibernate.Session;
import org.hibernate.Transaction;

import util.HibernateSessionFactory;
import dao.VoteitemDao;
import entity.Voteitem;

public class VoteitemDaoImpl implements VoteitemDao {

	Session session=HibernateSessionFactory.getSession();
	public void additem(Voteitem vi) {
		Transaction tr=session.beginTransaction();
		session.save(vi);
		tr.commit();

	}

}
