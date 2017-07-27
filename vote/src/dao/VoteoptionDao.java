package dao;

import entity.Voteoption;

public interface VoteoptionDao {

	public void updateItem(Voteoption vop);
	public Voteoption getVoptionById(Long id);
}
