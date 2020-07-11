package com.example.hotelmanagement.service;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.hotelmanagement.dao.ReservationRepository;
import com.example.hotelmanagement.entity.Reservation;

@Service
@Transactional
public class ReservationService {
	
	@Autowired
	private ReservationRepository reservationRepository;
	
	public ReservationService(ReservationRepository reservationRepo) {
		this.reservationRepository = reservationRepo;
	}
	
	public List<Reservation> findAllReservations() {
		List<Reservation> reservations = new ArrayList<>();
		for (Reservation reservation : reservationRepository.findAll()) {
			reservations.add(reservation);
		}
		
		return reservations;
	}
	
	public Optional<Reservation> findReservation(int id){
		return reservationRepository.findById(id);
	}
	
	public void saveRes(Reservation reservation){
		reservationRepository.save(reservation);
	}
	
	public void deleteRes(int id){
		reservationRepository.deleteById(id);
	}
}
