package com.codecool.web.dao;


import com.codecool.web.model.Poet;

import java.sql.ResultSet;
import java.sql.SQLException;

public interface PoetDao {

    Poet findByUserName(String username) throws SQLException;
    Poet fetchPoet(ResultSet resultSet) throws SQLException;

}
