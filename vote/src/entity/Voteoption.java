package entity;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

/**
 * Voteoption entity. @author MyEclipse Persistence Tools
 */

public class Voteoption implements java.io.Serializable {

	// Fields

	private Long void_;
	private Votesubject votesubject;
	private String vooption;
	private Long voorder;
	private List<Voteitem> voteitems = new ArrayList<Voteitem>(0);

	// Constructors

	/** default constructor */
	public Voteoption() {
	}

	/** minimal constructor */
	public Voteoption(Votesubject votesubject, String vooption, Long voorder) {
		this.votesubject = votesubject;
		this.vooption = vooption;
		this.voorder = voorder;
	}

	/** full constructor */
	public Voteoption(Votesubject votesubject, String vooption, Long voorder,
			List voteitems) {
		this.votesubject = votesubject;
		this.vooption = vooption;
		this.voorder = voorder;
		this.voteitems = voteitems;
	}

	// Property accessors

	public Long getVoid_() {
		return this.void_;
	}

	public void setVoid_(Long void_) {
		this.void_ = void_;
	}

	public Votesubject getVotesubject() {
		return this.votesubject;
	}

	public void setVotesubject(Votesubject votesubject) {
		this.votesubject = votesubject;
	}

	public String getVooption() {
		return this.vooption;
	}

	public void setVooption(String vooption) {
		this.vooption = vooption;
	}

	public Long getVoorder() {
		return this.voorder;
	}

	public void setVoorder(Long voorder) {
		this.voorder = voorder;
	}

	public List getVoteitems() {
		return this.voteitems;
	}

	public void setVoteitems(List voteitems) {
		this.voteitems = voteitems;
	}

}