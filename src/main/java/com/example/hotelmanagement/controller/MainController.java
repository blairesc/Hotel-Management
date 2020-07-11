package com.example.hotelmanagement.controller;


import java.util.Optional;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.hotelmanagement.entity.Guest;
import com.example.hotelmanagement.entity.Reservation;
import com.example.hotelmanagement.entity.User;
import com.example.hotelmanagement.service.UserService;
import com.example.hotelmanagement.service.GuestService;
import com.example.hotelmanagement.service.ReservationService;


@Controller
public class MainController {
	
	@Autowired
	private UserService userService;
	
	@Autowired
	private GuestService guestService;
	
	@Autowired
	private ReservationService reservationService;
	
	@RequestMapping("/")
	public String displayLogin() {
		
		return "login";
	}
	
	@RequestMapping ("/login-user")
	public String loginUser(@ModelAttribute User user, HttpServletRequest request) {
		if(userService.findByUsernameAndPassword(user.getUserName(), user.getPassword())!=null) {
			return "welcome";
		}
		else {
			return "error";
			
		}
	}
			
	@GetMapping("/guests")
	public String allGuests(HttpServletRequest request) {
		request.setAttribute("guests", guestService.findAllGuests());
		request.setAttribute("mode", "MODE_GUESTS");
		return "manageGuests";
	}
	
	@GetMapping("/new-guest")
	public String newGuest(HttpServletRequest request){
		request.setAttribute("mode", "GUES_NEW");
		return "manageGuests";
	}
	
	@PostMapping("/save-guest")
	public String saveGuest(@ModelAttribute Guest guest, BindingResult bindingResult, HttpServletRequest request){
		guestService.saveGues(guest);
		request.setAttribute("guests", guestService.findAllGuests());
		request.setAttribute("mode", "MODE_GUESTS");
		return "manageGuests";
	}
	
	@GetMapping("/update-guest")
	public String updateGuest(@RequestParam int id, HttpServletRequest request){
		Optional<Guest> guest = guestService.findGuest(id);
		if (guest.isPresent()) {
			request.setAttribute("guest", guest.get());
			request.setAttribute("mode", "GUES_UPDATE");
		}
		return "manageGuests";
	}
	
	@GetMapping("/delete-guest")
	public String deleteGuest(@RequestParam int id, HttpServletRequest request){
		guestService.deleteGues(id);
		request.setAttribute("guests", guestService.findAllGuests());
		request.setAttribute("mode", "MODE_GUESTS");
		return "manageGuests";
	}
	
	@GetMapping("/reservations")
	public String allReservations(HttpServletRequest request) {
		request.setAttribute("reservations", reservationService.findAllReservations());
		request.setAttribute("mode", "MODE_RESERVATIONS");
		return "manageReservations";
	}
	
	@GetMapping("/new-reservation")
	public String newReservation(HttpServletRequest request){
		request.setAttribute("mode", "RES_NEW");
		return "manageReservations";
	}
	
	@PostMapping("/save-reservation")
	public String saveReservation(@ModelAttribute Reservation reservation, BindingResult bindingResult, HttpServletRequest request){
		//reservation.setDateCreated(new Date());
		reservationService.saveRes(reservation);
		request.setAttribute("reservations", reservationService.findAllReservations());
		request.setAttribute("mode", "MODE_RESERVATIONS");
		return "manageReservations";
	}
	
	@GetMapping("/update-reservation")
	public String updateReservation(@RequestParam int id, HttpServletRequest request){
		Optional<Reservation> reservation = reservationService.findReservation(id);
		if (reservation.isPresent()) {
			request.setAttribute("reservation", reservation.get());
			request.setAttribute("mode", "RES_UPDATE");
		}
		return "manageReservations";
	}
	
	@GetMapping("/delete-reservation")
	public String deleteReservation(@RequestParam int id, HttpServletRequest request){
		reservationService.deleteRes(id);
		request.setAttribute("reservations", reservationService.findAllReservations());
		request.setAttribute("mode", "MODE_RESERVATIONS");
		return "manageReservations";
	}
}
	
