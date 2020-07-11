 package com.example.hotelmanagement.entity;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;


@Entity
@Table(name="guests")
public class Guest {
	
	@Id
	@Column(name="guestId")
	@GeneratedValue(strategy=GenerationType.IDENTITY )
	private int guestId;
	
	@Column(name="guestName")
	private String guestName;
	
	@Column(name="phoneNumber")
	private String phoneNumber;
	
	@Column(name="guestEmail")
	private String guestEmail;
	
	@OneToMany(mappedBy="guest")
	//@JoinColumn(name="guestId")
	private List<Reservation> reservations;
	
	public Guest() {
		
	}

	public Guest(String guestName, String phoneNumber, String guestEmail, List<Reservation> reservations) {
		super();
		this.guestName = guestName;
		this.phoneNumber = phoneNumber;
		this.guestEmail = guestEmail;
		this.reservations = reservations;
	}

	public int getGuestId() {
		return guestId;
	}

	public String getGuestName() {
		return guestName;
	}

	public void setGuestName(String guestName) {
		this.guestName = guestName;
	}

	public String getPhoneNumber() {
		return phoneNumber;
	}

	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}

	public String getGuestEmail() {
		return guestEmail;
	}

	public void setGuestEmail(String guestEmail) {
		this.guestEmail = guestEmail;
	}

	public List<Reservation> getReservations() {
		return reservations;
	}

	public void setReservations(List<Reservation> reservations) {
		this.reservations = reservations;
	}
	
}
