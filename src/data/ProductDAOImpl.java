package data;

import java.util.List;

import javax.annotation.PostConstruct;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.context.WebApplicationContext;

public class ProductDAOImpl implements ProductDAO {

	Database db;
	@Autowired
	private WebApplicationContext wac;

	/*
	 * The @PostConstruct method is called by Spring after object creation and
	 * dependency injection
	 */

	@PostConstruct
	public void init() {
		db = new Database();

	}

	@Override
	public List<Product> getInventory() {
		
		return db.getAll();
	}

	@Override
	public Product getProduct(int ID) {
		return db.searchbypid("" + ID).get(0);
	}



	@Override
	public List<Product> getproductbycompany(String name) 
	{
			return db.searchByManufacturer(name);
	}
	@Override
	public void addProduct(Product newProd) {
		newProd.setLocation(db.getWarehouse(newProd.locationID));
		db.addProduct(newProd);
	}

	@Override
	public List<Product> editProduct(Product prod) {
		prod.setLocation(db.getWarehouse(prod.locationID));
		db.updateProduct(prod);
		return db.getAll();

	}

	@Override
	public void deleteProduct(Product prod) {
		db.removeProduct(prod);
	}

	@Override
	public List<Product> getproductbyprice(int price) {
		// TODO Auto-generated method stub
		return db.listbyprice(0.00, Double.valueOf(price));
	}

	@Override
	public List<Product> getproductbytype(String btype) {
		// TODO Auto-generated method stub
		return db.searchbyBody(btype);
	}

	@Override
	public List<Product> getproductbymodelname(String Mname) {
		// TODO Auto-generated method stub
		return db.searchbypname(Mname);
	}

	@Override
	public List<Product> getproductbyyear(int year) {
		// TODO Auto-generated method stub
		return db.listbyyear(year);
	}
	
	public String getPasswordByUser(String username) {
		return db.getPasswordByUser(username);
	}

	@Override
	public List<Product> getQuantityGroupByManufacturer() {
		// TODO Auto-generated method stub
		return db.getQuantityGroupByManufacturer();
	}

	@Override
	public List<Product> getAssetsByWarehouse() {
		// TODO Auto-generated method stub
		return db.getAssetsByWarehouse();
	}
	
	
 
}