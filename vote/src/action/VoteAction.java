package action;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

import dao.*;
import dao.impl.*;
import entity.*;

public class VoteAction extends ActionSupport {

	private Votesubject subject;
	private Long[] chooses;
	private VoteitemDao vid=new VoteitemDaoImpl();
	private VoteoptionDao vod=new VoteoptionDaoImpl();
	
	public String add(){
		for(Long id:chooses){
			Voteitem voit=new Voteitem();
			voit.setVotesubject(subject);
			voit.setVoteoption(vod.getVoptionById(id));
			voit.setVoteuser((Voteuser)ActionContext.getContext().getSession().get("user"));
			vid.additem(voit);
		}
		return "tolist";
	}
	
	public Votesubject getSubject() {
		return subject;
	}
	public void setSubject(Votesubject subject) {
		this.subject = subject;
	}
	public Long[] getChooses() {
		return chooses;
	}
	public void setChooses(Long[] chooses) {
		this.chooses = chooses;
	}
	public VoteitemDao getVid() {
		return vid;
	}
	public void setVid(VoteitemDao vid) {
		this.vid = vid;
	}

	public VoteoptionDao getVod() {
		return vod;
	}

	public void setVod(VoteoptionDao vod) {
		this.vod = vod;
	}
	
}
