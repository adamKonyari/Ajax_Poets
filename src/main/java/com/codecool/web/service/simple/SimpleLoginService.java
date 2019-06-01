package com.codecool.web.service.simple;

import com.codecool.web.dao.PoetDao;
import com.codecool.web.model.Poet;
import com.codecool.web.service.LoginService;
import com.codecool.web.service.exception.ServiceException;

import java.sql.SQLException;

public class SimpleLoginService implements LoginService {

    private final PoetDao poetDao;

    public SimpleLoginService(PoetDao poetDao) {
        this.poetDao = poetDao;
    }

    @Override
    public Poet loginPoet(String username, String password) throws SQLException, ServiceException {
        try {
            Poet poet = poetDao.findByUserName(username);
            if (poet == null || !poet.getPassword().equals(password)) {
                throw new ServiceException("Login failed");
            }
        } catch (IllegalArgumentException ex) {
            throw new ServiceException(ex.getMessage());
        }
        return null;
    }
}
