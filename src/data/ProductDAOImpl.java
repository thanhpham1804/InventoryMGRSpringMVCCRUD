package data;

import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.ArrayList;
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

}