package com.nlu.repository;

import java.sql.SQLException;
import java.util.Collection;
import java.util.List;

public interface Repository<T> {


    Collection<T> findAll() throws SQLException;

    T findById(Integer id) throws SQLException;

    List<T> findByName();

    T deleteById();


}
