package cms.manaar.controller;

import cms.manaar.config.JwtUtils;
import cms.manaar.models.User;
import cms.manaar.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
public class UserController {

    @Autowired
    private UserService userService;

    @Autowired
    private JwtUtils utills;

    @Autowired
    private AuthenticationManager authenticationManager;

    @RequestMapping({"/user", "/user/"})
    public String user() {
        return "user";
    }

    @RequestMapping({"/user/addUser", "/user/addUser/"})
    public String addUser() {
        return "user-add";
    }

    @RequestMapping("/register")
    public String registerUser() {
        return "register";
    }

    @GetMapping("/getUsers")
    public ResponseEntity<List<User>> getAllUsers() {
        return ResponseEntity.ok(userService.getAll());
    }

    @PostMapping("/register")
    public ResponseEntity<User> register(@RequestBody User user) {
        userService.addUser(user);
        return ResponseEntity.ok(user);
    }

    @PutMapping("/updateUser/{username}")
    public ResponseEntity<User> updateUser(@PathVariable String username, @RequestBody User user) {
        userService.update(user, username);
        return ResponseEntity.ok(user);
    }

    @GetMapping("getSpecificUser/{email}")
    public ResponseEntity<User> getSpecific(@PathVariable String email) {
        return ResponseEntity.ok(userService.getSpecificUser(email));
    }

    @DeleteMapping("/deleteUser/{email}")
    public ResponseEntity<String> deleteUser(@PathVariable String email) {
        userService.deleteUser(email);
        return ResponseEntity.ok("Successfully Deleted");
    }

}
