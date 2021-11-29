package data;


import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.sql.*;
//This class is used for all the data manipulation codes
public class Database {
	//replace Array
	//ArrayList<Product> data;
	private ArrayList<Warehouse> warehouses;

        Database(){
            warehouses = getWarehousesFromDB();
        }
        

        //Get the warehouse of the number that user inputs
	public Warehouse getWarehouse(int location) {
            return warehouses.get(location);
	}
        
        public int getIdByWarehouse(Warehouse wh){
            return warehouses.indexOf(wh);
        }
        
        
        private ArrayList<Warehouse> getWarehousesFromDB() {
            ArrayList<Warehouse> whList = new ArrayList<Warehouse>();
            String sql = "SELECT warehouseID, warehouseName from warehouse ORDER BY warehouseID";
            ResultSet rs = DatabaseConnector.executeQuery(sql);
            try {

                while(rs.next()) {
                    Warehouse wh = new Warehouse(rs.getString("warehouseName"));
                    int whid = rs.getInt("warehouseID");
                    whList.add(whid, wh);
                }
            } catch (SQLException ex) {
                throw new Error(ex);
            }
            return whList;
        }
        
        private ArrayList<Product> getProductsByQuery(String sql) {
            
            ArrayList<Product> products = new ArrayList<Product>();
            ResultSet rs = DatabaseConnector.executeQuery(sql);
            try {
                while(rs.next()){
                    
                    Product p = new Product();
                    p.id = rs.getString("ProductID");
                    p.name = rs.getString("ProductName");
                    p.modelType = rs.getString("ModelType");
                    p.manufacturer = rs.getString("Manufacturer");
                    p.year = rs.getInt("Model");
                    p.body = rs.getString("BodyStyle");
                    p.location = getWarehouse(rs.getInt("LocationCode"));
                    p.msrp = rs.getDouble("msrp");
                    p.unitcost = rs.getDouble("unitCost");
                    p.discount = rs.getDouble("DiscountRate");
                    p.quantity = rs.getInt("StockQty");
                    p.locationID = rs.getInt("LocationCode");
                    products.add(p);
                }
		return products;
            } catch (SQLException ex) {
                throw new Error(ex);
            }
        }
	//method for Show All products
	public ArrayList<Product> getAll(){

            String sql = "SELECT * from products";
            return getProductsByQuery(sql);

	}
	//method for add Product
        
	public void addProduct(Product p) {
		//data.add(p);
                //Do INSERT statement
                

            String sql = "INSERT INTO products " 
                    + " (ProductID, ProductName, ModelType, Manufacturer, Model,"
                    + " BodyStyle, LocationCode, msrp, unitCost, DiscountRate, StockQty)"
                    + "VALUES"
                    + "("
                    + "'" + p.id + "',"
                    + "'" + p.name + "',"
                    + "'" + p.modelType +"',"
                    + "'" + p.manufacturer + "',"
                    + p.year + ","
                    + "'" + p.body + "',"
                    + getIdByWarehouse(p.location) + ","
                    + p.msrp + ","
                    + p.unitcost + ","
                    + p.discount + ","
                    + p.quantity
                    +")";
            DatabaseConnector.executeQuery(sql);
                
	}
        
	//method to search product by ID
	public ArrayList<Product> searchbypid(String pid){
            String sql = "SELECT * from products WHERE ProductID = '" + pid + "'";
            return getProductsByQuery(sql);

			
	}
	//method to search product by Name
	public ArrayList<Product> searchbypname(String pname){
            String sql = "SELECT * from products WHERE ProductName = '" + pname + "'";
            //TODO make case insensitive?
            return getProductsByQuery(sql);

		
	}
	
	//method to show products by manufacturer
	public ArrayList<Product> searchByManufacturer(String manufacturer) {
            String sql = "SELECT * from products WHERE Manufacturer = '" + manufacturer + "'";
            //TODO make case insensitive?
            return getProductsByQuery(sql);

		
	}
	//method to show products by bodyType
        public ArrayList<Product> searchbyBody(String body){
            String sql = "SELECT * from products WHERE BodyStyle = '" + body + "'";
            //TODO make case insensitive?
            return getProductsByQuery(sql);

		
	}
	//method to show products by availability
        public ArrayList<Product> searchbyAvailibility(){
            String sql = "SELECT * from products WHERE StockQty > 0";
            
            return getProductsByQuery(sql);
            
        }
	//method to show products by year
	public ArrayList<Product>  listbyyear(Integer year) {
            String sql = "SELECT * from products WHERE Model =" + year ;
            
            return getProductsByQuery(sql);

	}
	//method to show products by price
	public ArrayList<Product>  listbyprice(Double price1, Double price2) {
		
		
            String sql = "SELECT * from products " 
                    + "WHERE MSRP > " + price1 + " "
                    + "AND MSRP < " + price2;
     
            return getProductsByQuery(sql);
			
		
	}
	//method to show products with discounts
	public ArrayList<Product> showdiscountitems() {
		
            String sql = "SELECT * from products WHERE DiscountRate > 0";
            
            return getProductsByQuery(sql);
	}
	
        
        public boolean removeProduct(Product p) {
            //return data.remove(p);
            String sql = "DELETE FROM products WHERE ProductID = '" + p.id + "'";
            DatabaseConnector.executeQuery(sql);
            return true;
        }

        void updateProduct(Product p) {
            String sql = "UPDATE products"
                    + " SET ProductName = '" + p.name + "'"
                    + ", ModelType = '" + p.modelType +"'"
                    + ", Manufacturer = '" + p.manufacturer +"'"
                    + ", Model = " + p.year 
                    + ", BodyStyle = '" + p.body + "'"
                    + ", LocationCode = " + getIdByWarehouse(p.location)
                    + ", msrp = " + p.msrp
                    + ", unitCost = " + p.unitcost
                    + ", DiscountRate = " + p.discount
                    + ", StockQty = " + p.quantity
                    + " WHERE ProductID = '" + p.id + "'";
            DatabaseConnector.executeQuery(sql);

        }


		public String getPasswordByUser(String username) {
			ResultSet rs = DatabaseConnector.executeQuery("SELECT Password FROM user_t WHERE username = '" + username +"'");
            try {
				while(rs.next()) {
					return rs.getString("Password");
				}
			} catch (SQLException e) {
				throw new Error(e);
			}
            return null;
		}
		
		public List<Product> getQuantityGroupByManufacturer() {
			
			ArrayList<Product> list = new ArrayList<Product>();
			ResultSet rs = DatabaseConnector.executeQuery("select manufacturer,"
					+ " sum(StockQty) as 'quantity'"
					+ " from products"
					+ " group by manufacturer");

			try {
				while(rs.next()) {
					Product  p = new Product();
					p.manufacturer = rs.getString("manufacturer");
					p.quantity = rs.getInt("quantity");
					list.add(p);

					
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				throw new Error(e);
			}
			return list;
		}
		
		public List<Product> getAssetsByWarehouse() {
			
			ArrayList<Product> list = new ArrayList<Product>();
			ResultSet rs = DatabaseConnector.executeQuery("select LocationCode ,"
					+ " sum(StockQty) as 'quantity'"
					+ " ,sum(unitcost * StockQty) as 'Total_Assets_cost'"
					+ " ,sum(unitcost * MSRP) as 'Total_Assets_MSRP'"
					+ " from products"
					+ " group by LocationCode");

			try {
				while(rs.next()) {
					Product  p = new Product();
					p.location = getWarehouse(rs.getInt("LocationCode"));
					p.quantity = rs.getInt("quantity");
					p.unitcost = rs.getDouble("Total_Assets_cost");
					p.msrp = rs.getDouble("Total_Assets_MSRP");
					list.add(p);
					
				}
			} catch (SQLException e) {

				throw new Error(e);
			}
			return list;
		}
        

	
}
