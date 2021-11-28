package data;

import java.util.ArrayList;
import java.util.List;

public interface ProductDAO {
	public List<Product> getInventory();
	public Product getProduct(int ID);
	public void addProduct(Product newProd);
	public List<Product> editProduct(Product prod);
	public void deleteProduct(Product prod);
	public List<Product> getproductbycompany(String name);
	public List<Product> getproductbyprice(int price);
	public List<Product> getproductbytype(String btype);
	public List<Product> getproductbymodelname(String Mname);
	public List<Product> getproductbyyear(int year);
	// getProductsByType
	// getProductsByCarton
	// getProductsByPallet
}