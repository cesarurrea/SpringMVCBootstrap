package springmvc_example.dao;

import org.springframework.stereotype.Repository;

import springmvc_example.model.Customer;

@Repository
public class CustomerDao extends AbstractDao<Customer> {

	public CustomerDao() {
		super(Customer.class);
	}

	@Override
	public void create(Customer entity) {
		StringBuilder sql = new StringBuilder();
		sql.append("INSERT INTO customer(firstname,lastname,gender,address) VALUES(?,?,?,?)");

		getJdbcTemplate().update(sql.toString(),
				new Object[] { entity.getFirstname(), entity.getLastname(), entity.getGender(), entity.getAddress() });

	}

	@Override
	public void update(Customer entity) {
		StringBuilder sql = new StringBuilder();
		sql.append("UPDATE customer SET firstname=?,lastname=?,gender=?,address=? WHERE id=?");

		getJdbcTemplate().update(sql.toString(), new Object[] { entity.getFirstname(), entity.getLastname(),
				entity.getGender(), entity.getAddress(), entity.getId() });

	}

}
