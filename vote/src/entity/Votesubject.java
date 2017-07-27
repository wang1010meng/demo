package entity;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

/**
 * Votesubject entity. @author MyEclipse Persistence Tools
 */

public class Votesubject implements java.io.Serializable {

	// Fields

	private Long vsid;
	private String vstitle;
	private Integer vstype;
	private List<Voteoption> voteoptions = new ArrayList<Voteoption>(0);//几个选项
	private List<Voteitem> voteitems = new ArrayList<Voteitem>(0);//几个人投了这个

	// Constructors

	/** default constructor */
	public Votesubject() {
	}

	/** minimal constructor */
	public Votesubject(String vstitle, Integer vstype) {
		this.vstitle = vstitle;
		this.vstype = vstype;
	}

	/** full constructor */
	public Votesubject(String vstitle, Integer vstype, List voteoptions,
			List voteitems) {
		this.vstitle = vstitle;
		this.vstype = vstype;
		this.voteoptions = voteoptions;
		this.voteitems = voteitems;
	}

	// Property accessors

	public Long getVsid() {
		return this.vsid;
	}

	public void setVsid(Long vsid) {
		this.vsid = vsid;
	}

	public String getVstitle() {
		return this.vstitle;
	}

	public void setVstitle(String vstitle) {
		this.vstitle = vstitle;
	}

	public Integer getVstype() {
		return this.vstype;
	}

	public void setVstype(Integer vstype) {
		this.vstype = vstype;
	}

	

	public List<Voteoption> getVoteoptions() {
		return voteoptions;
	}

	public void setVoteoptions(List<Voteoption> voteoptions) {
		this.voteoptions = voteoptions;
	}

	public List<Voteitem> getVoteitems() {
		return voteitems;
	}

	public void setVoteitems(List<Voteitem> voteitems) {
		this.voteitems = voteitems;
	}

	

}