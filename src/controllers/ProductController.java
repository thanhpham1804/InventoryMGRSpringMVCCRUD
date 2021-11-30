package controllers;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import data.Product;
import data.ProductDAO;
import services.ProductService;

@Controller
@SessionAttributes({ "inventory" })
public class ProductController {

	@ModelAttribute("product")
	public Product pro() {
		return new Product();
	}

	@Autowired
	private ProductService productService;

	@RequestMapping(path = "GetInventory.do", method = RequestMethod.GET)
	public ModelAndView getInventory() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("viewInventory");
		mv.addObject("inventory", productService.getInventory());
		return mv;
	}

	@RequestMapping(path = "EditProduct.do", method = RequestMethod.GET)
	public ModelAndView viewEdit(Integer ID) {
		ModelAndView mv = new ModelAndView();
		System.out.println(ID);
		if (ID != null) {
			Product p = productService.getProduct(ID);
			mv.addObject("product", p);
		}
		mv.addObject("inventory", productService.getInventory());
		mv.setViewName("editProduct");
		return mv;
	}

	@RequestMapping(path = "EditProductData.do", method = RequestMethod.POST)
	public ModelAndView editByID(@Valid Product product, Errors errors) {
		ModelAndView mv = new ModelAndView();
		if (errors.getErrorCount() != 0 ) {
			mv.setViewName("editProduct");
			return mv;
		} else {
			mv.addObject("inventory", productService.editProduct(product));
			mv.setViewName("viewInventory");
			return mv;			
		}
	}

	@RequestMapping(path = "AddProduct.do", method = RequestMethod.GET)
	public ModelAndView viewAdd() {
		ModelAndView mv = new ModelAndView();
		mv.addObject("inventory", productService.getInventory());
		mv.setViewName("addProduct");
		return mv;
	}


	@RequestMapping(path = "AddProductData.do", method = RequestMethod.POST)
	public ModelAndView addByID(@Valid Product product, Errors errors) {
		ModelAndView mv = new ModelAndView();
		if (errors.getErrorCount() != 0) {
			mv.setViewName("addProduct");
			return mv;
		} else {
			productService.addProduct(product);
			mv.addObject("inventory", productService.getInventory());
			mv.setViewName("viewInventory");
			return mv;
		}
	}
	@RequestMapping(path = "SearchInventory.do", method = RequestMethod.GET)
	public ModelAndView getInventorySearch() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("searchinventory");
		//mv.addObject("inventory", productService.getInventory());
		return mv;
	}
	
	@RequestMapping(path = "SearchInventoryData.do", method = RequestMethod.GET)
	public ModelAndView viewProduct1(@RequestParam("Company") String company) {
		ModelAndView mv = new ModelAndView();

		mv.addObject("product", productService.getproductbycompany(company));
		mv.setViewName("viewsearchresults");
		return mv;
	}
	@RequestMapping(path = "SearchInventoryDatabytype.do", method = RequestMethod.GET)
	public ModelAndView viewProduct2(@RequestParam("Type") String type) {
		ModelAndView mv = new ModelAndView();

		mv.addObject("product", productService.getproductbytype(type));
		mv.setViewName("viewsearchresults");
		return mv;
	}
	@RequestMapping(path = "SearchInventoryDatabyprice.do", method = RequestMethod.GET)
	public ModelAndView viewProduct3(@RequestParam("Price") int price) {
		ModelAndView mv = new ModelAndView();

		mv.addObject("product", productService.getproductbyprice(price));
		mv.setViewName("viewsearchresults");
		return mv;
	}
	@RequestMapping(path = "SearchInventoryDatabymodelname.do", method = RequestMethod.GET)
	public ModelAndView viewProduct4(@RequestParam("Mname") String Mname) {
		ModelAndView mv = new ModelAndView();

		mv.addObject("product", productService.getproductbymodelname(Mname));
		mv.setViewName("viewsearchresults");
		return mv;
	}
	@RequestMapping(path = "SearchInventoryDatabyyear.do", method = RequestMethod.GET)
	public ModelAndView viewProduct5(@RequestParam("Year") int year) {
		ModelAndView mv = new ModelAndView();

		mv.addObject("product", productService.getproductbyyear(year));
		mv.setViewName("viewsearchresults");
		return mv;
	}

	@RequestMapping(path = "DeleteProduct.do", method = RequestMethod.GET)
	public ModelAndView viewDelete() {
		ModelAndView mv = new ModelAndView();
		mv.addObject("inventory", productService.getInventory());
		mv.setViewName("deleteProduct");
		return mv;
	}

	@RequestMapping(path = "DeleteProductData.do", method = RequestMethod.POST)
	public ModelAndView viewDelete(@RequestParam("ID") String id) {
		ModelAndView mv = new ModelAndView();
		productService.deleteProduct(Integer.parseInt(id));
		mv.addObject("inventory", productService.getInventory());
		mv.setViewName("viewInventory");
		return mv;
	}

	@RequestMapping(path = "ViewProduct.do", method = RequestMethod.GET)
	public ModelAndView viewProduct(Integer ID) {
		ModelAndView mv = new ModelAndView();
		if (ID != null) {
			Product p = productService.getProduct(ID);
			mv.addObject("product", p);
		}
		mv.addObject("inventory", productService.getInventory());
		mv.setViewName("viewProduct");
		return mv;
	}

	@RequestMapping(path = "ViewProductData.do", method = RequestMethod.POST)
	public ModelAndView viewProduct(@RequestParam("ID") String id) {
		ModelAndView mv = new ModelAndView();
		mv.addObject("product", productService.getProduct(Integer.parseInt(id)));
		mv.setViewName("viewProduct");
		return mv;
	}
	
	@RequestMapping(path = "Login.do", method = RequestMethod.POST)
	public ModelAndView login(@RequestParam("Uname") String username, @RequestParam("Pass") String password
			, HttpServletRequest request) {
		ModelAndView mv = new ModelAndView();
		String passwordDB = productService.getPasswordByUser(username);
		
		/* default is group9/group9 */
		if(passwordDB != null && passwordDB.equals(password)) {
			request.getSession().setAttribute("username", username);
			mv.setViewName("index");
		} else {
			mv = new ModelAndView("redirect:/login.jsp");
		}
		return mv;
	}
	@RequestMapping(path = "Logout.do", method = RequestMethod.GET)
	public ModelAndView logout(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView("redirect:/login.jsp");
		request.getSession().setAttribute("username", null);
		return mv;
	}
	
	@RequestMapping(path = "Report.do", method = RequestMethod.GET)
	public ModelAndView report(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView();
		mv.addObject("quantityByManufacturer", productService.getQuantityGroupByManufacturer());
		mv.addObject("assetsByWarehouse", productService.getAssetsByWarehouse());
		mv.setViewName("report");
	
		return mv;
	}


}
