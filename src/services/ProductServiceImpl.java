package services;

import java.util.List;

import data.Product;
import data.ProductDAO;

public class ProductServiceImpl implements ProductService {
	private ProductDAO productDAO;

	public void setProductDAO(ProductDAO productDAO) {
		this.productDAO = productDAO;
	}


	@Override
	public List<Product> getInventory() {
		return productDAO.getInventory();
	}

	@Override
	public Product getProduct(int ID) {
		return productDAO.getProduct(ID);
	}

	@Override
	public void addProduct(Product newProd) {
		productDAO.addProduct(newProd);
	}

	@Override
	public List<Product> editProduct(Product prod) {
		return productDAO.editProduct(prod);
	}

	@Override
	public void deleteProduct(int ID) {
		Product p = productDAO.getProduct(ID);
		productDAO.deleteProduct(p);
	}


	@Override
	public List<Product> getproductbycompany(String name) {
	 return productDAO.getproductbycompany(name);
		
		
	}
	
	@Override
	public List<Product> getproductbytype(String btype) {
		
		return productDAO.getproductbytype(btype);
		
	}

	@Override
	public List<Product> getproductbyprice(int price) {
		
		return productDAO.getproductbyprice(price);
		
	}


	@Override
	public List<Product> getproductbymodelname(String Mname) {
		// TODO Auto-generated method stub
		return productDAO.getproductbymodelname(Mname);
	}


	@Override
	public List<Product> getproductbyyear(int year) {
		// TODO Auto-generated method stub
		return productDAO.getproductbyyear(year);
	}
	
	public String getPasswordByUser(String username) {
		return productDAO.getPasswordByUser(username);
	}


	@Override
	public List<Product> getQuantityGroupByManufacturer() {
		// TODO Auto-generated method stub
		return productDAO.getQuantityGroupByManufacturer();
	}


	@Override
	public List<Product> getAssetsByWarehouse() {
		// TODO Auto-generated method stub
		return productDAO.getAssetsByWarehouse();
	}
	
	
}