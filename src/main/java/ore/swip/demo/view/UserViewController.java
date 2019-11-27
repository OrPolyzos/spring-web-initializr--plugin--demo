package ore.swip.demo.view;

import lombok.AllArgsConstructor;
import ore.spring.web.initializr.controller.impl.RpViewController;
import ore.spring.web.initializr.service.impl.NoDtoRpService;
import ore.swip.demo.domain.User;
import ore.swip.demo.service.UserService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@AllArgsConstructor
@RequestMapping("/user")
@Controller
public class UserViewController implements RpViewController<User, Long> {

    private final UserService userService;

    @Override
    public Class<User> getRpClass() {
        return User.class;
    }

    @Override
    public NoDtoRpService<User, Long> getService() {
        return userService;
    }
}