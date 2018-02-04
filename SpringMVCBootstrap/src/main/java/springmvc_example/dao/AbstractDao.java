package springmvc_example.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;

public abstract class AbstractDao<T> {

	@Autowired
	private JdbcTemplate jdbcTemplate;

	private Class<T> entityClass;

	public AbstractDao(Class<T> entityClass) {
		this.entityClass = entityClass;
	}

	public List<T> findAll() {
		StringBuilder query = new StringBuilder();
		query.append("SELECT * FROM ").append(entityClass.getSimpleName());

		List<T> lista = null;

		lista = jdbcTemplate.query(query.toString(), BeanPropertyRowMapper.newInstance(entityClass));

		return lista;

	}

	public T find(Integer id) {
		StringBuilder query = new StringBuilder();
		query.append("SELECT * FROM ").append(entityClass.getSimpleName()).append(" WHERE id=?");

		T entity = null;
		entity = jdbcTemplate.queryForObject(query.toString(), new Object[] { id },
				BeanPropertyRowMapper.newInstance(entityClass));

		return entity;

	}

	public void delete(Integer id) {
		StringBuilder query = new StringBuilder();
		query.append("DELETE FROM ").append(entityClass.getSimpleName()).append(" WHERE id=?");
		jdbcTemplate.update(query.toString(), new Object[] { id });

	}

	public JdbcTemplate getJdbcTemplate() {
		return jdbcTemplate;
	}

	public abstract void create(T entity);

	public abstract void update(T entity);
}
