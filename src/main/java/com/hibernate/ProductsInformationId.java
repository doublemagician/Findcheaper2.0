package com.hibernate;

/**
 * ProductsInformationId entity. @author MyEclipse Persistence Tools
 */

public class ProductsInformationId implements java.io.Serializable {

	// Fields

	private String productTitle;
	private String productUrl;
	private String produatComment;

	// Constructors

	/** default constructor */
	public ProductsInformationId() {
	}

	/** full constructor */
	public ProductsInformationId(String productTitle, String productUrl, String produatComment) {
		this.productTitle = productTitle;
		this.productUrl = productUrl;
		this.produatComment = produatComment;
	}

	// Property accessors

	public String getProductTitle() {
		return this.productTitle;
	}

	public void setProductTitle(String productTitle) {
		this.productTitle = productTitle;
	}

	public String getProductUrl() {
		return this.productUrl;
	}

	public void setProductUrl(String productUrl) {
		this.productUrl = productUrl;
	}

	public String getProduatComment() {
		return this.produatComment;
	}

	public void setProduatComment(String produatComment) {
		this.produatComment = produatComment;
	}

	public boolean equals(Object other) {
		if ((this == other))
			return true;
		if ((other == null))
			return false;
		if (!(other instanceof ProductsInformationId))
			return false;
		ProductsInformationId castOther = (ProductsInformationId) other;

		return ((this.getProductTitle() == castOther.getProductTitle()) || (this.getProductTitle() != null
				&& castOther.getProductTitle() != null && this.getProductTitle().equals(castOther.getProductTitle())))
				&& ((this.getProductUrl() == castOther.getProductUrl()) || (this.getProductUrl() != null
						&& castOther.getProductUrl() != null && this.getProductUrl().equals(castOther.getProductUrl())))
				&& ((this.getProduatComment() == castOther.getProduatComment())
						|| (this.getProduatComment() != null && castOther.getProduatComment() != null
								&& this.getProduatComment().equals(castOther.getProduatComment())));
	}

	public int hashCode() {
		int result = 17;

		result = 37 * result + (getProductTitle() == null ? 0 : this.getProductTitle().hashCode());
		result = 37 * result + (getProductUrl() == null ? 0 : this.getProductUrl().hashCode());
		result = 37 * result + (getProduatComment() == null ? 0 : this.getProduatComment().hashCode());
		return result;
	}

}