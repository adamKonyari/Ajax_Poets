package com.codecool.web.dao;


import com.codecool.web.model.Poem;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

public interface PoemDao {

    List<Poem> findAllById(int id) throws SQLException;
    Poem fetchPoem(ResultSet resultSet) throws SQLException;

}
