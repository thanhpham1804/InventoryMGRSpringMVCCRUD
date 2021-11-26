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
		Product p = null;
		for (Product product : inventory) {
			if (product.getID() == ID) {
				p = product;
				break;
			}
		}
		return p;
	}

	@Override
	public void addProduct(Product newProd) {
		/*
		Product p = new Product();
		p.setID(inventory.get(inventory.size()-1).getID()+1);
		p.setBrand(newProd.getBrand());
		p.setType(newProd.getType());
		p.setSize(newProd.getSize());
		p.setBatch(newProd.getBatch());
		p.setQtyCarton(newProd.getQtyCarton());
		p.setQtyPallet(newProd.getQtyPallet());
		inventory.add(p);
		*/
		newProd.setLocation(db.getWarehouse(1));
		db.addProduct(newProd);
	}

	@Override
	public List<Product> editProduct(Product prod) {

		int index = 0;
		for (Product product : inventory) {
			if (product.getID() == prod.getID()) {
				index = inventory.indexOf(product);
				break;
			}
		}
		Product p = inventory.get(index);
		p.setBrand(prod.getBrand());
		p.setType(prod.getType());
		p.setSize(prod.getSize());
		p.setBatch(prod.getBatch());
		p.setQtyCarton(prod.getQtyCarton());
		p.setQtyPallet(prod.getQtyPallet());
		return inventory;
	}

	@Override
	public void deleteProduct(Product prod) {
		db.removeProduct(prod);
	}

}