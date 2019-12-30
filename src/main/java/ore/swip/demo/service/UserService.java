package ore.swip.demo.service;

import lombok.Data;
import ore.spring.web.initializr.service.impl.NoDtoRpService;
import ore.swip.demo.domain.User;
import ore.swip.demo.repository.UserRepository;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Service;

@Data
@Service
public class UserService implements NoDtoRpService<User, Long> {

  private final UserRepository userRepository;

  @Override
  public CrudRepository<User, Long> getRepository() {
    return userRepository;
  }
}
