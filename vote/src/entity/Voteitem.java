package entity;

/**
 * Voteitem entity. @author MyEclipse Persistence Tools
 */

public class Voteitem implements java.io.Serializable {

	// Fields

	private Long viid;
	private Votesubject votesubject;
	private Voteuser voteuser;
	private Voteoption voteoption;

	// Constructors

	/** default constructor */
	public Voteitem() {
	}

	/** full constructor */
	public Voteitem(Votesubject votesubject, Voteuser voteuser,
			Voteoption voteoption) {
		this.votesubject = votesubject;
		this.voteuser = voteuser;
		this.voteoption = voteoption;
	}

	// Property accessors

	public Long getViid() {
		return this.viid;
	}

	public void setViid(Long viid) {
		this.viid = viid;
	}

	public Votesubject getVotesubject() {
		return this.votesubject;
	}

	public void setVotesubject(Votesubject votesubject) {
		this.votesubject = votesubject;
	}

	public Voteuser getVoteuser() {
		return this.voteuser;
	}

	public void setVoteuser(Voteuser voteuser) {
		this.voteuser = voteuser;
	}

	public Voteoption getVoteoption() {
		return this.voteoption;
	}

	public void setVoteoption(Voteoption voteoption) {
		this.voteoption = voteoption;
	}

}