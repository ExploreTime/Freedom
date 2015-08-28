package com.oralce.model;

/**
 * Tiezi entity. @author MyEclipse Persistence Tools
 */

public class Tiezi implements java.io.Serializable {
	private Integer tieziid;
	private Mokuai mokuai;
	private Users users;
	private String title;
	private String content;
	private String sendtime;
	private Integer status;
	private Integer clickcount;
	private Integer ownerid;
	public Integer getTieziid() {
		return tieziid;
	}
	public void setTieziid(Integer tieziid) {
		this.tieziid = tieziid;
	}
	public Mokuai getMokuai() {
		return mokuai;
	}
	public void setMokuai(Mokuai mokuai) {
		this.mokuai = mokuai;
	}
	public Users getUsers() {
		return users;
	}
	public void setUsers(Users users) {
		this.users = users;
	}
	public String getTitle() {
		System.out.println("get title");
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getSendtime() {
		return sendtime;
	}
	public void setSendtime(String sendtime) {
		this.sendtime = sendtime;
	}
	public Integer getStatus() {
		return status;
	}
	public void setStatus(Integer status) {
		this.status = status;
	}
	public Integer getClickcount() {
		return clickcount;
	}
	public void setClickcount(Integer clickcount) {
		this.clickcount = clickcount;
	}
	public Integer getOwnerid() {
		return ownerid;
	}
	public void setOwnerid(Integer ownerid) {
		this.ownerid = ownerid;
	}
	
	public Tiezi(Integer tieziid, Mokuai mokuai, Users users, String title,
			String content, String sendtime, Integer status,
			Integer clickcount, Integer ownerid) {
		super();
		this.tieziid = tieziid;
		this.mokuai = mokuai;
		this.users = users;
		this.title = title;
		this.content = content;
		this.sendtime = sendtime;
		this.status = status;
		this.clickcount = clickcount;
		this.ownerid = ownerid;
	}
	public Tiezi(String title) {
		this.title = title;
	}
	public Tiezi() {
	}

}