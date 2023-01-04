package com.axis.movieapp.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.axis.movieapp.entity.Cart;

@Repository(value = "CartRepository")
public interface CartRepository extends JpaRepository<Cart, Integer>{

}
