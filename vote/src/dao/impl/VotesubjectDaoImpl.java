package dao.impl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import util.HibernateSessionFactory;

import dao.VotesubjectDao;
import entity.PageInfo;
import entity.Votesubject;

public class VotesubjectDaoImpl implements VotesubjectDao {

	Session session=HibernateSessionFactory.getSession();
	public List<Votesubject> getAllSubject() {
		Query query=session.createQuery("from Votesubject");
		return query.list();
	}
	public void addVotesubject(Votesubject vsub) {
		Transaction tr=session.beginTransaction();
		session.saveOrUpdate(vsub);
		tr.commit();
		
	}
	public Votesubject getVotesubjectById(long id) {
		Votesubject vsub=(Votesubject)session.get(Votesubject.class, id);
		return vsub;
	}
	public PageInfo<Votesubject> getPageSubject(PageInfo<Votesubject> pi) {
		int curpage=pi.getCurpage();
		int pagesize=pi.getPagesize();
		int total=((Long)session.createQuery("select count(*) from Votesubject").uniqueResult()).intValue();
		
		return null;
	}

}
