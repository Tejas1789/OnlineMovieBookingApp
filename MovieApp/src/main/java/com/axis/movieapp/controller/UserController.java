package com.axis.movieapp.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.axis.movieapp.entity.Movie;
import com.axis.movieapp.entity.User;
import com.axis.movieapp.service.IUserServiceImp;

@Controller
@RequestMapping("/movie/user")
public class UserController {

	@Autowired
	IUserServiceImp service;
	
	@RequestMapping("/home")
	public ModelAndView home() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("homePage");
		return mv ;
	}
	
	
	@RequestMapping("/")
	public ModelAndView welcome() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("login");
		return mv ;
	}
	

	@RequestMapping(value = "/login" , method = RequestMethod.POST)
	public ModelAndView login(@RequestParam("username") String username, @RequestParam("password") String password,
			HttpSession session, HttpServletResponse response) {
		if (username.isBlank() == false && password.isBlank() == false) {
			boolean isValid = service.isValid(username, password);
			if (isValid == true) {
				User user1 = service.findUser(username, password);
				String role = user1.getRole();
				System.out.println(role);
				String name = user1.getUsername();
				System.out.println(name);
				int id = user1.getUid();
				System.out.println(id);
				ModelAndView mv = new ModelAndView();
				session.setAttribute("role", role);
				session.setAttribute("username", name);
				session.setAttribute("cid", id);
				if (role.equalsIgnoreCase("user")) {
					return new ModelAndView("redirect:/movie/user/user-dash");
				} else if (role.equalsIgnoreCase("admin")) {
					return new ModelAndView("redirect:/movie/user/admin-dash");
				}
			}
		}
		return new ModelAndView("redirect:/movie/user/error");

	}

//	@RequestMapping("/user-auth")
//	public ModelAndView hrLogin() {
//		ModelAndView mv = new ModelAndView();
//		return new ModelAndView("redirect:/food/user/get");
//	}
	
	@RequestMapping("/user-dash")
	public ModelAndView userDash() {
		ModelAndView mv=new ModelAndView();
		mv.setViewName("UserDashboard");
		return mv ;

	}
	
	@RequestMapping("/admin-dash")
	public ModelAndView adminDash() {
		ModelAndView mv=new ModelAndView();
		mv.setViewName("AdminDashboard");
		return mv ;

	}

	@RequestMapping("/admin-auth")
	public ModelAndView empLogin() {
		ModelAndView mv = new ModelAndView();
		return new ModelAndView("redirect:/user/get");
	}

	@RequestMapping("/error")
	public ModelAndView mnLogin() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("error");
		return mv;
	}

	@RequestMapping(value = "/signup" , method = RequestMethod.POST)
	public ModelAndView addUser( User user) {
		System.out.println(user);
		ModelAndView mv = new ModelAndView();
		service.addUser(user);
		return new ModelAndView("redirect:/movie/user/");
	}
	
	@RequestMapping(value = "/get" , method = RequestMethod.GET)
	public ModelAndView getAll() {
		List<Movie> MovieList = service.getAllMovie();
		ModelAndView mv = new ModelAndView();
		mv.addObject("list", MovieList);
		mv.setViewName("UserMovieList");
		return mv ;
	}
	
	@RequestMapping(value = "/add" , method = RequestMethod.GET)
	public ModelAndView regUser( ) {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("signUp");
		return mv;
	}
	
	@RequestMapping(value = "/get/mname" , method = RequestMethod.GET)
	public ModelAndView getByFName(@RequestParam("mname") String mname) {
		List<Movie> list = service.getByMname(mname);
		ModelAndView mv = new ModelAndView();
		mv.addObject("list", list);
		mv.setViewName("UserMovieList");
		return mv ;
	}
	@RequestMapping(value = "/get/genre" , method = RequestMethod.GET)
	public ModelAndView getByGenre(@RequestParam("genre") String genre) {
		List<Movie> list = service.getByGenre(genre);
		ModelAndView mv = new ModelAndView();
		mv.addObject("list", list);
		mv.setViewName("UserMovieList");
		return mv ;
	}
	
	@RequestMapping(value = "/get/language" , method = RequestMethod.GET)
	public ModelAndView getByLanguage(@RequestParam("language") String language) {
		List<Movie> list = service.getByLanguage(language);
		ModelAndView mv = new ModelAndView();
		mv.addObject("list", list);
		mv.setViewName("UserMovieList");
		return mv ;
	}
	
	@RequestMapping(value = "/unauthentication" , method = RequestMethod.GET)
	public ModelAndView unauth() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("UnAuthentication");
		return mv;
	}
	
	@RequestMapping("/logout")
	public void logout(HttpSession session , HttpServletResponse response) throws IOException {
		session.invalidate();
		response.sendRedirect("/movie/user/");
	}
}
