package com.example.hotelmanagement.dao;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;
import com.example.hotelmanagement.entity.Guest;

@Repository
public interface GuestRepository extends CrudRepository<Guest, Integer> {

}
