package com.lv.persisntece;

import java.io.Serializable;
import java.math.BigDecimal;
import java.text.DecimalFormat;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;



@Entity(name = "product")
@Table(name = "product")
public class Product implements Serializable {

	/**
	* 
	*/
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Long id;
	
	@Column
	private String name;
	
	@Column
	private String description;
	
	@Column
	private String photo;
	
	@Column	
	private BigDecimal price;

	public Product() {
		// TODO Auto-generated constructor stub
	}
	

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPrice() {
		DecimalFormat decFormat = new DecimalFormat("'R$ '0.##");		
		return price!=null?decFormat.format(price):"";
	}

	public void setPrice(String price) {
		this.price = new BigDecimal(price.replace("R$", "").replace(" ", "").replace(",", "."));
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getPhoto() {
		return photo;
	}

	public void setPhoto(String photo) {
		this.photo = photo;
	}
	
	
	
}
