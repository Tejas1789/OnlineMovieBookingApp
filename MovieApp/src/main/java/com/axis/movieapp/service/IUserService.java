package com.axis.movieapp.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.axis.movieapp.entity.User;
import com.axis.movieapp.entity.Movie;

@Service
public interface IUserService {

	public abstract List<Movie> getAllMovie(); 
	public abstract List<Movie> getByMname(String mname);
	public abstract List<Movie> getByGenre(String genre);
	public abstract List<Movie> getByLanguage(String language);
	
	public abstract User getById(int uid);
	public abstract boolean isValid(String username , String password);
	public abstract User findUser(String username , String password);
	public User addUser(User user);
	
	public List<Movie> findByStatus();
	public List<Movie> findbyGenreAction();
	public List<Movie> findbyGenreThriller();
	public List<Movie> findbyGenreComedy();
	public List<Movie> findbyGenreRomance();
}
