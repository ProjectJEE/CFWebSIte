package com.bulbcrowding.model;

import java.io.Serializable;

import javax.persistence.Basic;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;

@Entity

public class Vote implements Serializable {

	@Basic
	private long nbr_vote;

	@ManyToOne(cascade = { CascadeType.MERGE }, targetEntity = Project.class)
	private Project project;

	@Column(unique = true)
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id_vote;

	@ManyToOne(cascade = { CascadeType.MERGE }, targetEntity = User.class)
	private User user;

	public Vote() {

	}

	public long getNbr_vote() {
		return this.nbr_vote;
	}

	public void setNbr_vote(long nbr_vote) {
		this.nbr_vote = nbr_vote;
	}

	public Project getProject() {
		return this.project;
	}

	public void setProject(Project project) {
		this.project = project;
	}

	public Long getId_vote() {
		return this.id_vote;
	}

	public void setId_vote(Long id_vote) {
		this.id_vote = id_vote;
	}

	public User getUser() {
		return this.user;
	}

	public void setUser(User user) {
		this.user = user;
	}
}
