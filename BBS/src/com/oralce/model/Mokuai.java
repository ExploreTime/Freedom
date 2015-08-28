package com.oralce.model;

import java.util.HashSet;
import java.util.Set;

/**
 * Mokuai entity. @author MyEclipse Persistence Tools
 */

public class Mokuai implements java.io.Serializable {

	// Fields

	private Integer id;
	private Users users;
	private String name;
	private String image;
	private String description;
	private Set<Tiezi> tiezis = new HashSet<Tiezi>();

	// Constructors

	/** default constructor */
	public Mokuai() {
		
	}
    
	public Mokuai(Integer id, Users users, String name, String image,
			String description) {
		super();
		this.id = id;
		this.users = users;
		this.name = name;
		this.image = image;
		this.description = description;
	}

	public Mokuai(Integer id) {
		super();
		this.id = id;
	}

	/** full constructor */
	public Mokuai(Users users, String name, String image, String description,
			Set tiezis) {
		this.users = users;
		this.name = name;
		this.image = image;
		this.description = description;
		this.tiezis = tiezis;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Users getUsers() {
		return this.users;
	}

	public void setUsers(Users users) {
		this.users = users;
	}

	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getImage() {
		return this.image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public String getDescription() {
		return this.description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public Set<Tiezi> getTiezis() {
		return tiezis;
	}

	public void setTiezis(Set<Tiezi> tiezis) {
		this.tiezis = tiezis;
	}

	public Mokuai(String name) {
		super();
		this.name = name;
	}

	
}