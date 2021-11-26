package data;



public class Product {
	String id;
	String name;
	String modelType;
	String manufacturer;
	int year;
	String body;
	Warehouse location;
	double msrp;
	double unitcost;
	double discount;
	int quantity;
	
	public Warehouse getLocation() {
		return location;
	}

	public void setLocation(Warehouse location) {
		this.location = location;
	}

	public double getDiscount() {
		return discount;
	}

	public void setDiscount(double discount) {
		this.discount = discount;
	}

	
	public String getStatus()
	{
		if(quantity == 0)
		{
			return "Out of Stock";
		} else
		{
			return "In Stock";
		}
	}



	@Override
	public String toString() {
		//return "Product [id=" + id + ", name=" + name + ", modelType=" + modelType + ", manufacturer=" + manufacturer
			//	+ ", year=" + year + ", body=" + body + ", location=" + location + ", msrp=" + msrp + ", unitcost="
				//+ unitcost + ", discount=" + discount + ", quantity=" + quantity + ", getStatus()=" + getStatus() + "]";
		

		
        return id +"  "+name+"  "+modelType+"  "+manufacturer+"  "+year+"  "+body+"  "+location+"  "+msrp+"  "+unitcost+"  "+discount+"  "+quantity+"  "+getStatus();
		
	}

	public String getId() {
		return id;
	}


	public void setId(String id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getModelType() {
		return modelType;
	}

	public void setModelType(String modelType) {
		this.modelType = modelType;
	}

	public String getManufacturer() {
		return manufacturer;
	}

	public void setManufacturer(String manufacturer) {
		this.manufacturer = manufacturer;
	}

	public int getYear() {
		return year;
	}

	public void setYear(int year) {
		this.year = year;
	}

	public String getBody() {
		return body;
	}

	public void setBody(String body) {
		this.body = body;
	}

	public double getMsrp() {
		return msrp;
	}

	public void setMsrp(double msrp) {
		this.msrp = msrp;
	}

	public double getUnitcost() {
		return unitcost;
	}

	public void setUnitcost(double unitcost) {
		this.unitcost = unitcost;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	int locationID;

	public int getLocationID() {
		return locationID;
	}

	public void setLocationID(int locationID) {
		this.locationID = locationID;
	}

	
	
	

}
