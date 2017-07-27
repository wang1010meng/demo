package action;

import java.util.List;
import java.util.Map;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

import dao.*;
import dao.impl.*;

import entity.*;

public class IndexAction extends ActionSupport {

	private Voteuser user;
	private Votesubject subject;
	private Voteoption option;
	private Voteitem voteitem;
	private long vsid;
	private String result;//ajax封装的返回值
	private List<Votesubject> votesublist;
	private VoteuserDao vud=new VoteuserDaoImpl();
	private VotesubjectDao vdjd=new VotesubjectDaoImpl();
	private VoteitemDao vid=new VoteitemDaoImpl();
	private VoteoptionDao vod=new VoteoptionDaoImpl();
	
	Map<String,Object> session=ActionContext.getContext().getSession();
	public String login(){
		Voteuser user1=vud.getVuserByNamePwd(user.getUsername(), user.getVupassword());
		if(user1!=null){
			session.put("user", user1);
			return "tolist";
		}
		return "error";
	}
	public String list(){
		votesublist=vdjd.getAllSubject();
		return "listind";
	}
	public String add(){
		vdjd.addVotesubject(subject);
		return "tolist";
	}
	public String check(){
		subject=vdjd.getVotesubjectById(vsid);
		user=(Voteuser)session.get("user");
		return "check";
	}
	
	public String vote(){
		subject=vdjd.getVotesubjectById(vsid);
		return "vote";
		
	}
	public String mod(){
		subject=vdjd.getVotesubjectById(vsid);
		return "mod";
		
	}
	public String regcheck(){
		Voteuser user1=vud.getVoteuserByName(user.getUsername());
		if(user1!=null){
			result="false";
		}else{
			result="true";
		}
		return "regjson";
	}
	public String reg(){
		vud.addVuser(user);
		result="register";
		return "info";
	}
	public String logoff(){
		session.clear();
		return "input";
	}
	public String getResult() {
		return result;
	}
	public void setResult(String result) {
		this.result = result;
	}
	public Voteuser getUser() {
		return user;
	}
	public void setUser(Voteuser user) {
		this.user = user;
	}
	public VoteuserDao getVud() {
		return vud;
	}
	public void setVud(VoteuserDao vud) {
		this.vud = vud;
	}
	public VotesubjectDao getVdjd() {
		return vdjd;
	}
	public void setVdjd(VotesubjectDao vdjd) {
		this.vdjd = vdjd;
	}
	public List<Votesubject> getVotesublist() {
		return votesublist;
	}
	public void setVotesublist(List<Votesubject> votesublist) {
		this.votesublist = votesublist;
	}
	public Votesubject getSubject() {
		return subject;
	}
	public void setSubject(Votesubject subject) {
		this.subject = subject;
	}
	public Voteoption getOption() {
		return option;
	}
	public void setOption(Voteoption option) {
		this.option = option;
	}
	public long getVsid() {
		return vsid;
	}
	public void setVsid(long vsid) {
		this.vsid = vsid;
	}
	public Voteitem getVoteitem() {
		return voteitem;
	}
	public void setVoteitem(Voteitem voteitem) {
		this.voteitem = voteitem;
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
