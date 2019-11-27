package ore.swip.demo.service;

import lombok.Data;
import ore.spring.web.initializr.service.impl.RpService;
import ore.swip.demo.domain.User;
import ore.swip.demo.domain.UserDto;
import ore.swip.demo.repository.UserRepository;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Service;

import java.util.function.Function;

@Data
@Service
public class UserDtoService implements RpService<User, Long, UserDto> {

    private final UserRepository userRepository;

    @Override
    public CrudRepository<User, Long> getRepository() {
        return userRepository;
    }

    @Override
    public Function<User, UserDto> getEntityToDtoConverter() {
        return user -> UserDto.builder()
                .id(user.getId())
                .firstName(user.getFirstName())
                .lastName(user.getLastName())
                .email(user.getEmail())
                .build();
    }

    @Override
    public Function<UserDto, User> getDtoToEntityConverter() {
        return userDto -> User.builder()
                .id(userDto.getId())
                .firstName(userDto.getFirstName())
                .lastName(userDto.getLastName())
                .email(userDto.getEmail())
                .build();
    }
}
