package cms.manaar.repository;

import cms.manaar.models.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface UserRepository extends JpaRepository<User, Long> {
    public User findByUserName(String username);

    User findByEmail(String email);

    void deleteByEmail(String email);
}
