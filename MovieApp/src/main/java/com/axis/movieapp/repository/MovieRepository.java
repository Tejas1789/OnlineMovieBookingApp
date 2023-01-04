package com.axis.movieapp.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.axis.movieapp.entity.Movie;

@Repository(value = "MovieRepository")
public interface MovieRepository extends JpaRepository<Movie, Integer>{
	
	public List<Movie> findByMname(String mname);
	public List<Movie> findByGenre(String genre);
	public List<Movie> findByLanguage(String language);
	
	@Query(value = "select * from movie where status = 'Available' ", nativeQuery = true)
	public List<Movie> findByStatus();
	
	@Query(value = "select * from movie where genre = 'Action' ", nativeQuery = true)
	public List<Movie> findbyGenreAction();
	
	@Query(value = "select * from movie where genre = 'Thriller' ", nativeQuery = true)
	public List<Movie> findbyGenreThriller();
	
	@Query(value = "select * from movie where genre = 'Comedy' ", nativeQuery = true)
	public List<Movie> findbyGenreComedy();
	
	@Query(value = "select * from movie where genre = 'Romantic' ", nativeQuery = true)
	public List<Movie> findbyGenreRomance();
	

}
