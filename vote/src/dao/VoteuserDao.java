package dao;

import entity.Voteuser;

public interface VoteuserDao {

	public Voteuser getVuserByNamePwd(String name,String pwd);
	public void addVuser(Voteuser user);
	public Voteuser getVoteuserByName(String username);
}
