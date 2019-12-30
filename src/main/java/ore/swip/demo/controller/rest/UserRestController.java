package ore.swip.demo.controller.rest;

import lombok.AllArgsConstructor;
import ore.spring.web.initializr.controller.impl.RpRestController;
import ore.spring.web.initializr.service.api.ResourcePersistableService;
import ore.swip.demo.domain.User;
import ore.swip.demo.service.UserService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@AllArgsConstructor
@RequestMapping("/api/user")
@Controller
public class UserRestController implements RpRestController<User, Long> {

  private final UserService userService;

  @Override
  public ResourcePersistableService<User, Long> getService() {
    return userService;
  }
}