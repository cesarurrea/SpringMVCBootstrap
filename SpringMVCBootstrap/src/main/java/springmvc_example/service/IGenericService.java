package springmvc_example.service;

import java.util.List;

public interface IGenericService<T> {

	public List<T> findAll();

	public T find(Integer id);

	public void delete(Integer id);

	public void update(T entity);

	public void create(T entity);

}
