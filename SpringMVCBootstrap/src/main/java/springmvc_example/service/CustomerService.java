package springmvc_example.service;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import springmvc_example.dao.CustomerDao;
import springmvc_example.model.Customer;

@Service
public class CustomerService implements IGenericService<Customer> {

	CustomerDao customerDao;

	@Autowired
	public void setCustomerDao(CustomerDao customerDao) {
		this.customerDao = customerDao;
	}

	@Override
	public List<Customer> findAll() {
		return customerDao.findAll();

	}

	@Override
	public Customer find(Integer id) {
		return customerDao.find(id);

	}

	@Override
	public void create(Customer customer) {
		customerDao.create(customer);
	}

	@Override
	public void update(Customer customer) {
		customerDao.update(customer);
	}

	@Override
	public void delete(Integer id) {
		customerDao.delete(id);

	}

}
