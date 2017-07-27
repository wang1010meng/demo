package dao;

import java.util.List;

import entity.PageInfo;
import entity.Votesubject;

public interface VotesubjectDao {

	public List<Votesubject> getAllSubject();
	public void addVotesubject(Votesubject vsub);
	public Votesubject getVotesubjectById(long id);
	public PageInfo<Votesubject> getPageSubject(PageInfo<Votesubject> pi);
}
