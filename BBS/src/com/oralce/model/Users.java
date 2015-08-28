package com.oralce.model;

import java.util.HashSet;
import java.util.Set;

/**
 * Users entity. @author MyEclipse Persistence Tools
 */

public class Users implements java.io.Serializable {

	// Fields

	private Integer userid;
	private String username;
	private String nickname;
	private String password;
	private String headimage;
	private Set<Tiezi> tiezis = new HashSet<Tiezi>();
	private Mokuai mokuai;
	private String signature;

	// Constructors

	/** default constructor */
   
	
	public String getSignature() {
		return signature;
	}


	public void setSignature(String signature) {
		this.signature = signature;
	}


	public Users(Integer userid) {
		super();
		this.userid = userid;
	}


	

	public Users(String signature) {
		super();
		this.signature = signature;
	}


	public Users(String username,String nickname, String headimage,String signature) {
		super();
		this.username = username;
		this.nickname = nickname;
		this.headimage = headimage;
		this.signature=signature;
	}


	/** minimal constructor */
	public Users(String username, String password) {
		this.username = username;
		this.password = password;
	}

	/** full constructor */
	

	// Property accessors

	public Integer getUserid() {
		return this.userid;
	}

	public Users(Integer userid, String username, String nickname,
			String password, String headimage, Set<Tiezi> tiezis,
			Mokuai mokuai, String signature) {
		super();
		this.userid = userid;
		this.username = username;
		this.nickname = nickname;
		this.password = password;
		this.headimage = headimage;
		this.tiezis = tiezis;
		this.mokuai = mokuai;
		this.signature = signature;
	}


	public void setUserid(Integer userid) {
		this.userid = userid;
	}

	public String getUsername() {
		return this.username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getNickname() {
		return this.nickname;
	}

	public void setNickname(String nickname) {
		this.nickname = nickname;
	}

	public String getPassword() {
		return this.password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getHeadimage() {
		return this.headimage;
	}

	public void setHeadimage(String headimage) {
		this.headimage = headimage;
	}

	

	public Set<Tiezi> getTiezis() {
		return tiezis;
	}

	public void setTiezis(Set<Tiezi> tiezis) {
		this.tiezis = tiezis;
	}

	public Mokuai getMokuai() {
		return this.mokuai;
	}

	public void setMokuai(Mokuai mokuai) {
		this.mokuai = mokuai;
	}


	public Users() {
		super();
	}

}