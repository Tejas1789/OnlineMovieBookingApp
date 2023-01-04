package com.axis.movieapp.entity;

import java.sql.Time;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@AllArgsConstructor
@NoArgsConstructor
@Data

@Entity
@Table(name="Cart")
public class Cart {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int cid ;
	private int mid ;
	private int uid ;
	private String mname;
	private String genre;
	private String description;
	private double price;
	private String language;
	private int quantity;
	private String mimage;
	private String status;
	private Time movieStartTime;
	private Time movieEndTime;
}
