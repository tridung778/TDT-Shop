package dao;

import java.util.List;

public interface Dao_Interface<T> {
	public boolean insert(T t);

	public boolean delete(int id);

	public boolean update(T t);

	public List<T> selectAll();

	public T selectById(int id);

}
