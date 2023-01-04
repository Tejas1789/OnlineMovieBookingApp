package com.axis.movieapp.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.axis.movieapp.entity.User;

@Repository(value = "UserRepository")
public interface UserRepository extends JpaRepository<User, Integer>{

	@Query(nativeQuery = true , value = "select * from user where USERNAME= :username AND PASSWORD= :password")
	public User checkUserCredential(@Param("username") String username , @Param("password") String password);
}
