package ore.swip.demo.controller.rest;

import lombok.AllArgsConstructor;
import ore.spring.web.initializr.controller.impl.RpRestController;
import ore.spring.web.initializr.service.api.ResourcePersistableService;
import ore.swip.demo.domain.UserDto;
import ore.swip.demo.service.UserDtoService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@AllArgsConstructor
@RequestMapping("/api/user/dto")
@Controller
public class UserDtoRestController implements RpRestController<UserDto, Long> {

    private final UserDtoService userDtoService;

    @Override
    public ResourcePersistableService<UserDto, Long> getService() {
        return userDtoService;
    }
}