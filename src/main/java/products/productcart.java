package products;


public class productcart {
	private String product_name;
	private int price;
	private int quantity;
	public productcart(String product_name, int price,int quantity) {
		super();
		this.product_name = product_name;
		this.price = price;
		
	}
	public String getProduct_name() {
		return product_name;
	}
	public int getPrice() {
		return price;
	}
	@Override
	public String toString() {
		return "productcart [product_name=" + product_name + ", price=" + price + "]";
	}

}
