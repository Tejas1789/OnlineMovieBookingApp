package com.axis.movieapp.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.axis.movieapp.entity.Movie;
import com.axis.movieapp.service.IMovieService;
import com.axis.movieapp.service.IUserService;

@Controller
@RequestMapping("/movie")
public class MovieController {
	
	@Autowired
	IMovieService service;
	
	@Autowired
	IUserService userservice;

	@RequestMapping("/dashboard")
	public ModelAndView dashboard() {
		ModelAndView mv = new ModelAndView();
		return new ModelAndView("redirect:/movie/get");
	}
	
	
	@RequestMapping(value = "/add" , method = RequestMethod.POST)
	public ModelAndView addMovie( Movie movie) {
		 service.addMovie(movie);
		 return new ModelAndView("redirect:/movie/get");
	}
	
	//for getting the update details
	@RequestMapping(value = "/update")
	public ModelAndView update(HttpServletRequest request) {
		int mid = Integer.parseInt(request.getParameter("mid"));
//		Movie oldData = service.getMovieById(mid);
		service.deleteMovieById(mid);
		ModelAndView mv = new ModelAndView();
//		mv.addObject("movie", oldData);
		mv.setViewName("UpdateMovie");
		
		return mv ;
//		 return new ModelAndView("redirect:/views/updateMovie.jsp");
	}
	
	@RequestMapping(value = "/updateDetails" , method = RequestMethod.POST)
	public ModelAndView saveUpdate( Movie movie) {
//		int mid = movie.getMid();
//		service.deleteMovieById(mid);
		service.addMovie(movie);
		return new ModelAndView("redirect:/movie/get");
	}
	
	
	@RequestMapping(value = "/get" , method = RequestMethod.GET)
	public ModelAndView getAll(){
		List<Movie> list =  service.getAll();
		ModelAndView mv = new ModelAndView();
		mv.addObject("movieList", list);
		mv.setViewName("AdminDashboard");
		return mv;
	}
	@RequestMapping(value = "/getUser" , method = RequestMethod.GET)
	public ModelAndView getAllMoviee(){
		List<Movie> list =  service.getAll();
		ModelAndView mv = new ModelAndView();
		System.out.println(list);
		mv.addObject("movieList", list);
		mv.setViewName("UserShowMovie");
		return mv;
	}
	
	@RequestMapping(value ="/delete")
	public ModelAndView deleteById(HttpServletRequest request) {
		int mid = Integer.parseInt(request.getParameter("mid"));
		service.deleteMovieById(mid);
		return new ModelAndView("redirect:/movie/get");
	}
	
	
	@RequestMapping(value ="/getUserMovie" , method = RequestMethod.GET)
	public ModelAndView getAllMovie(){
	List<Movie> list =  userservice.findByStatus();
	ModelAndView mv = new ModelAndView();
		System.out.println(list);
		mv.addObject("movieList", list);
		mv.setViewName("UserShowMovie");
		return mv;
	}
	
	@RequestMapping(value ="/getUserGenreAction" , method = RequestMethod.GET)
	public ModelAndView getByGenreAction(){
	List<Movie> list =  userservice.findbyGenreAction();
	ModelAndView mv = new ModelAndView();
		System.out.println(list);
		mv.addObject("movieList", list);
		mv.setViewName("UserShowMovie");
		return mv;
	}
	
	@RequestMapping(value ="/getUserGenreThriller" , method = RequestMethod.GET)
	public ModelAndView getByGenreThriller(){
	List<Movie> list =  userservice.findbyGenreThriller();
	ModelAndView mv = new ModelAndView();
		System.out.println(list);
		mv.addObject("movieList", list);
		mv.setViewName("UserShowMovie");
		return mv;
	}
	
	@RequestMapping(value ="/getUserGenreComedy" , method = RequestMethod.GET)
	public ModelAndView getByGenreComedy(){
	List<Movie> list =  userservice.findbyGenreComedy();
	ModelAndView mv = new ModelAndView();
		System.out.println(list);
		mv.addObject("movieList", list);
		mv.setViewName("UserShowMovie");
		return mv;
	}
	
	@RequestMapping(value ="/getUserGenreRomance" , method = RequestMethod.GET)
	public ModelAndView getByGenreRomance(){
	List<Movie> list =  userservice.findbyGenreRomance();
	ModelAndView mv = new ModelAndView();
		System.out.println(list);
		mv.addObject("movieList", list);
		mv.setViewName("UserShowMovie");
		return mv;
	}

	
	
}
