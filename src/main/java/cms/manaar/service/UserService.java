package cms.manaar.service;

import cms.manaar.models.User;

import java.sql.SQLException;
import java.util.List;

public interface UserService {
    List<User> getAll();

    User addUser(User user);

    User findByUserName(String username) throws SQLException;

    User update(User user, String username);

    User getSpecificUser(String email);

    void deleteUser(String email);
}
