package services;

import java.util.List;

import data.Product;

public interface ProductService {
	public List<Product> getInventory();
	public Product getProduct(int ID);
	public void addProduct(Product newProd);
	public List<Product> editProduct(Product prod);
	public void deleteProduct(int ID);
	public List<Product> getproductbycompany(String name);
	public List<Product> getproductbytype(String btype);
	public List<Product> getproductbyprice(int price);
	public List<Product> getproductbymodelname(String Mname);
	public List<Product> getproductbyyear(int year);
	public String getPasswordByUser(String username);
	public List<Product> getQuantityGroupByManufacturer();
	public List<Product> getAssetsByWarehouse();


}