package ma.lhope.models;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Basic;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;

@Entity

public class Participate implements Serializable {

	@Basic
	private long amount_participation;

	@Basic
	private Date date_participation;

	@Column(unique = true)
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id_participation;

	@Basic
	private long amount_profit;

	@ManyToOne(cascade = { CascadeType.MERGE }, targetEntity = Project.class)
	private Project project;

	@Basic
	private int flag_participation;

	@ManyToOne(cascade = { CascadeType.MERGE }, targetEntity = User.class)
	private User user;

	public Participate() {

	}

	public long getAmount_participation() {
		return this.amount_participation;
	}

	public void setAmount_participation(long amount_participation) {
		this.amount_participation = amount_participation;
	}

	public Date getDate_participation() {
		return this.date_participation;
	}

	public void setDate_participation(Date date_participation) {
		this.date_participation = date_participation;
	}

	public Long getId_participation() {
		return this.id_participation;
	}

	public void setId_participation(Long id_participation) {
		this.id_participation = id_participation;
	}

	public long getAmount_profit() {
		return this.amount_profit;
	}

	public void setAmount_profit(long amount_profit) {
		this.amount_profit = amount_profit;
	}

	public Project getProject() {
		return this.project;
	}

	public void setProject(Project project) {
		this.project = project;
	}

	public int getFlag_participation() {
		return this.flag_participation;
	}

	public void setFlag_participation(int flag_participation) {
		this.flag_participation = flag_participation;
	}

	public User getUser() {
		return this.user;
	}

	public void setUser(User user) {
		this.user = user;
	}
}
