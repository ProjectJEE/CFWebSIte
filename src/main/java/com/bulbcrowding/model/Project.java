package com.bulbcrowding.model;

import java.io.Serializable;
import java.util.List;

import javax.persistence.Basic;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;

@Entity

public class Project implements Serializable {

	@OneToMany(cascade = {
			CascadeType.ALL }, targetEntity = Participate.class, mappedBy = "project", fetch = FetchType.EAGER)
	private List<Participate> participations;

	@OneToMany(cascade = {
			CascadeType.ALL }, targetEntity = Comment.class, mappedBy = "project", fetch = FetchType.EAGER)
	private List<Comment> comments;

	@Basic
	private String name_project;

	@Basic
	private String category_project;

	@Basic
	private String img_project;

	@Basic
	private String description_project;

	@OneToMany(cascade = { CascadeType.ALL }, targetEntity = Vote.class, mappedBy = "project", fetch = FetchType.EAGER)
	private List<Vote> votes;

	@Basic
	private long nbr_days;

	@Column(unique = true)
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private long id_project;

	@Basic
	private long money_goal;

	@ManyToOne(cascade = { CascadeType.MERGE }, targetEntity = User.class)
	private User user;

	public Project() {

	}

	public List<Participate> getParticipations() {
		return this.participations;
	}

	public void setParticipations(List<Participate> participations) {
		this.participations = participations;
	}

	public List<Comment> getComments() {
		return this.comments;
	}

	public void setComments(List<Comment> comments) {
		this.comments = comments;
	}

	public String getName_project() {
		return this.name_project;
	}

	public void setName_project(String name_project) {
		this.name_project = name_project;
	}

	public String getCategory_project() {
		return this.category_project;
	}

	public void setCategory_project(String category_project) {
		this.category_project = category_project;
	}

	public String getImg_project() {
		return this.img_project;
	}

	public void setImg_project(String img_project) {
		this.img_project = img_project;
	}

	public String getDescription_project() {
		return this.description_project;
	}

	public void setDescription_project(String description_project) {
		this.description_project = description_project;
	}

	public List<Vote> getVotes() {
		return this.votes;
	}

	public void setVotes(List<Vote> votes) {
		this.votes = votes;
	}

	public long getNbr_days() {
		return this.nbr_days;
	}

	public void setNbr_days(long nbr_days) {
		this.nbr_days = nbr_days;
	}

	public double getId_project() {
		return this.id_project;
	}

	public void setId_project(long id_project) {
		this.id_project = id_project;
	}

	public long getMoney_goal() {
		return this.money_goal;
	}

	public void setMoney_goal(long money_goal) {
		this.money_goal = money_goal;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

}
