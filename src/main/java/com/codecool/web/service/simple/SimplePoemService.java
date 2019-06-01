package com.codecool.web.service.simple;

import com.codecool.web.dao.PoemDao;
import com.codecool.web.model.Poem;
import com.codecool.web.service.PoemService;
import com.codecool.web.service.exception.ServiceException;

import java.sql.SQLException;
import java.util.List;

public class SimplePoemService implements PoemService {
    private final PoemDao poemDao;

    public SimplePoemService(PoemDao poemDao) {
        this.poemDao = poemDao;
    }

    @Override
    public List<Poem> getPoemsById(int id) throws SQLException, ServiceException {
        try {
            return poemDao.findAllById(id);
        } catch (IllegalArgumentException ex) {
            throw new ServiceException(ex.getMessage());
        }
    }
}
