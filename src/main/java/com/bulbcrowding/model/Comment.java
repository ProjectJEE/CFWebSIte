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

public class Comment implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Basic
	private String description_comment;

	@ManyToOne(cascade = { CascadeType.MERGE }, targetEntity = Project.class)
	private Project project;

	@Column(unique = true)
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id_comment;

	@ManyToOne(cascade = { CascadeType.MERGE }, targetEntity = User.class)
	private User user;

	public Comment() {

	}

	public String getDescription_comment() {
		return this.description_comment;
	}

	public void setDescription_comment(String description_comment) {
		this.description_comment = description_comment;
	}

	public Project getProject() {
		return this.project;
	}

	public void setProject(Project project) {
		this.project = project;
	}

	public Long getId_comment() {
		return this.id_comment;
	}

	public void setId_comment(Long id_comment) {
		this.id_comment = id_comment;
	}

	public User getUser() {
		return this.user;
	}

	public void setUser(User user) {
		this.user = user;
	}
}
