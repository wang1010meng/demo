package dao.impl;

import org.hibernate.Session;
import org.hibernate.Transaction;

import util.HibernateSessionFactory;
import dao.VoteuserDao;
import entity.Voteuser;

public class VoteuserDaoImpl implements VoteuserDao {

	Session session=HibernateSessionFactory.getSession();
	Transaction tr=session.beginTransaction();
	public void addVuser(Voteuser user) {
		session.save(user);
		tr.commit();
	}

	public Voteuser getVuserByNamePwd(String name, String pwd) {

		Voteuser user=(Voteuser)session.createQuery("from Voteuser where username=? and vupassword=?")
					.setString(0,name).setString(1,pwd).uniqueResult();
		return user;
	}

	public Voteuser getVoteuserByName(String username) {
		
		return (Voteuser)session.createQuery("from Voteuser where username=?")
				.setString(0,username).uniqueResult();
	}

}
