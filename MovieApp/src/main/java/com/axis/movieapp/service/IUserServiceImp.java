package com.axis.movieapp.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.axis.movieapp.repository.MovieRepository;
import com.axis.movieapp.repository.UserRepository;
import com.axis.movieapp.entity.Movie;
import com.axis.movieapp.entity.User;

@Service
public class IUserServiceImp implements IUserService{

	@Autowired
	UserRepository repo ;
	
	@Autowired
	MovieRepository movierepo;
	
	@Override
	public List<Movie> getAllMovie() {
		// TODO Auto-generated method stub
		return movierepo.findAll();
	}

	@Override
	public List<Movie> getByMname(String mname) {
		// TODO Auto-generated method stub
		return movierepo.findByMname(mname);
	}

	@Override
	public List<Movie> getByGenre(String genre) {
		// TODO Auto-generated method stub
		return movierepo.findByGenre(genre);
	}

	@Override
	public List<Movie> getByLanguage(String language) {
		// TODO Auto-generated method stub
		return movierepo.findByLanguage(language);
	}

	@Override
	public User getById(int uid) {
		// TODO Auto-generated method stub
		return repo.findById(uid).orElse(null);
	}

	@Override
	public boolean isValid(String username, String password) {
		User user = repo.checkUserCredential(username, password);
		if(user == null) {
			return false ;
		}
		return true ;
	}

	@Override
	public User findUser(String username, String password) {
		// TODO Auto-generated method stub
		return repo.checkUserCredential(username, password);
	}

	@Override
	public User addUser(User user) {
		// TODO Auto-generated method stub
		return repo.save(user);
	}

	@Override
	public List<Movie> findByStatus() {
		// TODO Auto-generated method stub
		return movierepo.findByStatus();
	}

	@Override
	public List<Movie> findbyGenreAction() {
		// TODO Auto-generated method stub
		return movierepo.findbyGenreAction();
	}

	@Override
	public List<Movie> findbyGenreThriller() {
		// TODO Auto-generated method stub
		return movierepo.findbyGenreThriller();
	}

	@Override
	public List<Movie> findbyGenreComedy() {
		// TODO Auto-generated method stub
		return movierepo.findbyGenreComedy();
	}

	@Override
	public List<Movie> findbyGenreRomance() {
		// TODO Auto-generated method stub
		return movierepo.findbyGenreRomance();
	}
	

}
