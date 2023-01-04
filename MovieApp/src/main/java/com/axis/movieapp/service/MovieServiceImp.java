package com.axis.movieapp.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.axis.movieapp.entity.Movie;
import com.axis.movieapp.repository.MovieRepository;

@Service
public class MovieServiceImp implements IMovieService{

	@Autowired
	MovieRepository repo;
	
	@Override
	public Movie addMovie(Movie movie) {
		// TODO Auto-generated method stub
		return repo.save(movie);
	}

	@Override
	public Movie updateMovie(Movie movie) {
		// TODO Auto-generated method stub
		return repo.save(movie);
	}

	@Override
	public List<Movie> getAll() {
		// TODO Auto-generated method stub
		return repo.findAll();
	}

	@Override
	public Movie getMovieById(int mid) {
		// TODO Auto-generated method stub
		return repo.findById(mid).orElse(null);
	}

	@Override
	public void deleteMovieById(int mid) {
		// TODO Auto-generated method stub
		repo.deleteById(mid);
	}

}
