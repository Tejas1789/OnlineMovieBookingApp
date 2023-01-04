package com.axis.movieapp.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.axis.movieapp.entity.Movie;

@Service
public interface IMovieService {

	public Movie addMovie(Movie movie);
	public Movie updateMovie(Movie movie);
	public List<Movie> getAll();
	public Movie getMovieById(int mid);
	public void deleteMovieById(int mid);
}
