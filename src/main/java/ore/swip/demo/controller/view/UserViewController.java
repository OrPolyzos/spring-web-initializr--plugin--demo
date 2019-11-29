package ore.swip.demo.controller.view;

import lombok.AllArgsConstructor;
import ore.spring.web.initializr.controller.impl.RpViewController;
import ore.spring.web.initializr.service.impl.NoDtoRpService;
import ore.swip.demo.domain.User;
import ore.swip.demo.service.UserService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@AllArgsConstructor
@RequestMapping("/view/user")
@Controller
public class UserViewController implements RpViewController<User, Long> {

    private final UserService userService;

    @Override
    public NoDtoRpService<User, Long> getService() {
        return userService;
    }
}
