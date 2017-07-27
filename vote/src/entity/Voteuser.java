package entity;

import java.util.HashSet;
import java.util.Set;

/**
 * Voteuser entity. @author MyEclipse Persistence Tools
 */

public class Voteuser implements java.io.Serializable {

	// Fields

	private String username;
	private String vupassword;
	private Integer vustatus=0;
	private Set voteitems = new HashSet(0);

	// Constructors

	/** default constructor */
	public Voteuser() {
	}

	/** minimal constructor */
	public Voteuser(String vupassword) {
		this.vupassword = vupassword;
	}

	/** full constructor */
	public Voteuser(String vupassword, Integer vustatus, Set voteitems) {
		this.vupassword = vupassword;
		this.vustatus = vustatus;
		this.voteitems = voteitems;
	}

	// Property accessors

	public String getUsername() {
		return this.username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getVupassword() {
		return this.vupassword;
	}

	public void setVupassword(String vupassword) {
		this.vupassword = vupassword;
	}

	public Integer getVustatus() {
		return this.vustatus;
	}

	public void setVustatus(Integer vustatus) {
		this.vustatus = vustatus;
	}

	public Set getVoteitems() {
		return this.voteitems;
	}

	public void setVoteitems(Set voteitems) {
		this.voteitems = voteitems;
	}

}