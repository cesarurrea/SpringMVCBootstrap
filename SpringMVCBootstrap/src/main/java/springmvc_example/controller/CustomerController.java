package springmvc_example.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import springmvc_example.model.Customer;
import springmvc_example.service.CustomerService;

@Controller
@RequestMapping(value = "/customers")
public class CustomerController {

	@Autowired
	CustomerService customerService;

	@RequestMapping(value = { "/", "/home" }, method = RequestMethod.GET)
	public ModelAndView home() {
		ModelAndView model = new ModelAndView("home/home");

		return model;
	}

	@RequestMapping(value = { "/list" }, method = RequestMethod.GET)
	public ModelAndView list() {
		ModelAndView model = new ModelAndView("customer/list");

		List<Customer> listCustomer = customerService.findAll();
		model.addObject("listCustomer", listCustomer);

		return model;
	}

	@RequestMapping(value = { "/update/{id}" }, method = RequestMethod.GET)
	public ModelAndView update(@PathVariable("id") int id) {
		ModelAndView model = new ModelAndView("customer/form");

		Customer customer = customerService.find(id);
		model.addObject("CustomerForm", customer);

		return model;

	}

	@RequestMapping(value = { "/add" }, method = RequestMethod.GET)
	public ModelAndView add() {
		ModelAndView model = new ModelAndView("customer/form");

		Customer customer = new Customer();
		model.addObject("CustomerForm", customer);

		return model;
	}

	@RequestMapping(value = { "/delete/{id}" }, method = RequestMethod.GET)
	public ModelAndView delete(@PathVariable("id") int id) {
		customerService.delete(id);
		return new ModelAndView("redirect:/customers/list");
	}

	@RequestMapping(value = { "/save" }, method = RequestMethod.POST)
	public ModelAndView save(@ModelAttribute("CustomerForm") Customer customer) {

		if (customer.getId() == null) {
			customerService.create(customer);
		} else {
			customerService.update(customer);
		}

		return new ModelAndView("redirect:/customers/list");

	}

}
