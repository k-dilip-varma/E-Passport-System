package com.wipro.epass.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.wipro.epass.entity.User;

public interface UserRepository extends JpaRepository<User, Integer> {
	
User findByEmail(String email);
	
	@Query("select m from User m where m.email= :email and m.password= :password")
	 User findByEmailAndPassword(String email,String password);

}
