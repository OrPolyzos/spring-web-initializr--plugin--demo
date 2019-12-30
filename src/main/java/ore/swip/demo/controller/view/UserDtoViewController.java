package ore.swip.demo.controller.view;

import lombok.AllArgsConstructor;
import ore.spring.web.initializr.controller.impl.RpViewController;
import ore.spring.web.initializr.service.impl.RpService;
import ore.swip.demo.domain.User;
import ore.swip.demo.dto.UserDto;
import ore.swip.demo.service.UserDtoService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@AllArgsConstructor
@RequestMapping("/view/userdto")
@Controller
public class UserDtoViewController implements RpViewController<UserDto, Long> {

  private final UserDtoService userService;

  @Override
  public RpService<User, Long, UserDto> getService() {
    return userService;
  }

}
