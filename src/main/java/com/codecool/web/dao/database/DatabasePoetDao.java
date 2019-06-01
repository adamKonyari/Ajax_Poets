package com.codecool.web.dao.database;

import com.codecool.web.dao.PoetDao;
import com.codecool.web.model.Poem;
import com.codecool.web.model.Poet;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class DatabasePoetDao extends AbstractDao implements PoetDao {

    public DatabasePoetDao(Connection connection) {
        super(connection);
    }

    @Override
    public Poet findByUserName(String username) throws SQLException {
        if ("".equals(username) || username == null) {
            throw new IllegalArgumentException("User name cannot be empty or null");
        }
        String sql = "SELECT * FROM poets WHERE username = ?";
        try (PreparedStatement statement = connection.prepareStatement(sql)) {
            statement.setString(1, username);
            try (ResultSet resultSet = statement.executeQuery()) {
                if (resultSet.next()) {
                    return fetchPoet(resultSet);
                }
            }
        }
        return null;
    }

    @Override
    public Poet fetchPoet(ResultSet resultSet) throws SQLException {
        int id = resultSet.getInt("id");
        String forename = resultSet.getString("forename");
        String lastName = resultSet.getString("last_name");
        String username = resultSet.getString("username");
        String password = resultSet.getString("password");
        return new Poet(id, forename, lastName, username, password);
    }
}
