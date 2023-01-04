package com.axis.movieapp.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.axis.movieapp.entity.Cart;
import com.axis.movieapp.repository.CartRepository;

@Service
public class CartServiceImp implements ICartService{

	@Autowired
	CartRepository repo;
	
	@Override
	public Cart addToCart(Cart cart) {
		// TODO Auto-generated method stub
		return repo.save(cart);
	}

	@Override
	public List<Cart> getAllCart() {
		// TODO Auto-generated method stub
		return repo.findAll();
	}

	@Override
	public void removeFromCart(int cid) {
		// TODO Auto-generated method stub
		repo.deleteById(cid);
	}

}
