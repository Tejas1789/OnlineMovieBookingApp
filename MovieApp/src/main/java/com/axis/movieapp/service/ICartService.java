package com.axis.movieapp.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.axis.movieapp.entity.Cart;

@Service
public interface ICartService {

	public abstract Cart addToCart(Cart cart);
	public abstract List<Cart> getAllCart();
	public abstract void removeFromCart(int cid);	
}
