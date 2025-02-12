package com.wipro.epass.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.wipro.epass.entity.Appointment;

public interface AppointmentRepository extends JpaRepository<Appointment, Integer>{

}
