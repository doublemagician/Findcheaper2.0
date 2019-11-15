package com.hibernate;

/**
 * ProductsInformation entity. @author MyEclipse Persistence Tools
 */

public class ProductsInformation implements java.io.Serializable {

	// Fields

	private ProductsInformationId id;
	private String productImgPaths;
	private Double productPrice;

	// Constructors

	/** default constructor */
	public ProductsInformation() {
	}

	/** minimal constructor */
	public ProductsInformation(ProductsInformationId id, String productImgPaths) {
		this.id = id;
		this.productImgPaths = productImgPaths;
	}

	/** full constructor */
	public ProductsInformation(ProductsInformationId id, String productImgPaths, Double productPrice) {
		this.id = id;
		this.productImgPaths = productImgPaths;
		this.productPrice = productPrice;
	}

	// Property accessors

	public ProductsInformationId getId() {
		return this.id;
	}

	public void setId(ProductsInformationId id) {
		this.id = id;
	}

	public String getProductImgPaths() {
		return this.productImgPaths;
	}

	public void setProductImgPaths(String productImgPaths) {
		this.productImgPaths = productImgPaths;
	}

	public Double getProductPrice() {
		return this.productPrice;
	}

	public void setProductPrice(Double productPrice) {
		this.productPrice = productPrice;
	}

}