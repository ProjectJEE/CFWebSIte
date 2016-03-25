package com.bulbcrowding.model;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.persistence.Basic;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;

import org.hibernate.annotations.Fetch;
import org.hibernate.annotations.FetchMode;
import org.springframework.context.annotation.Scope;
import org.springframework.context.annotation.ScopedProxyMode;

@Entity
@Scope(value="session", proxyMode=ScopedProxyMode.TARGET_CLASS)
public class User implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Basic
	private String salt_user;

	@Basic
	private String img_user;

	@Basic
	private Date joinDate_user;

	@OneToMany(cascade = {
			CascadeType.ALL }, targetEntity = Participate.class, mappedBy = "user", fetch = FetchType.EAGER)
	@Fetch(value = FetchMode.SUBSELECT)
	private List<Participate> participations = new ArrayList<>();

	@Basic
	private String name_user;

	@OneToMany(cascade = { CascadeType.ALL }, targetEntity = Comment.class, mappedBy = "user")
	private List<Comment> comments = new ArrayList<>();

	@Basic
	private String email_user;

	@Basic
	private String password_user;

	@OneToMany(cascade = { CascadeType.ALL }, targetEntity = Vote.class, mappedBy = "user", fetch = FetchType.EAGER)
	private List<Vote> votes = new ArrayList<>();

	@OneToMany(cascade = { CascadeType.ALL }, targetEntity = Project.class, mappedBy = "user", fetch = FetchType.EAGER)
	private List<Project> projects = new ArrayList<>();

	@Column(unique = true)
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private long id_user;

	public User() {

	}

	public String getSalt_user() {
		return this.salt_user;
	}

	public void setSalt_user(String salt_user) {
		this.salt_user = salt_user;
	}

	public String getImg_user() {
		return this.img_user;
	}

	public void setImg_user(String img_user) {
		this.img_user = img_user;
	}

	public Date getJoinDate_user() {
		return this.joinDate_user;
	}

	public void setJoinDate_user(Date joinDate_user) {
		this.joinDate_user = joinDate_user;
	}

	public List<Participate> getParticipations() {
		return this.participations;
	}

	public void setParticipations(List<Participate> participations) {
		this.participations = participations;
	}

	public String getName_user() {
		return this.name_user;
	}

	public void setName_user(String name_user) {
		this.name_user = name_user;
	}

	public List<Comment> getComments() {
		return this.comments;
	}

	public void setComments(List<Comment> comments) {
		this.comments = comments;
	}

	public String getEmail_user() {
		return this.email_user;
	}

	public void setEmail_user(String email_user) {
		this.email_user = email_user;
	}

	public String getPassword_user() {
		return this.password_user;
	}

	public void setPassword_user(String password_user) {
		this.password_user = password_user;
	}

	public List<Vote> getVotes() {
		return this.votes;
	}

	public void setVotes(List<Vote> votes) {
		this.votes = votes;
	}

	public long getId_user() {
		return this.id_user;
	}

	public void setId_user(long id_user) {
		this.id_user = id_user;
	}

	public List<Project> getProjects() {
		return projects;
	}

	public void setProjects(List<Project> projects) {
		this.projects = projects;
	}

}