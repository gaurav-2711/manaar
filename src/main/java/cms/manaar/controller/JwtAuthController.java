package cms.manaar.controller;

import cms.manaar.config.JwtUtils;
import cms.manaar.models.JwtRequest;
import cms.manaar.models.User;
import cms.manaar.models.UserCredentials;
import cms.manaar.service.UserService;
import jakarta.security.auth.message.AuthException;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.BadCredentialsException;
import org.springframework.security.authentication.DisabledException;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class JwtAuthController {

    public static final Logger logger = LoggerFactory.getLogger(JwtAuthController.class);

    @Autowired
    private AuthenticationManager authenticationManager;

    @Autowired
    private JwtUtils jwtUtils;

    @Autowired
    private UserService userService;

    @RequestMapping(value = "/login", method = RequestMethod.POST)
    public ResponseEntity<?> login(@RequestBody JwtRequest authenticationRequest) throws Exception {

        try {
            logger.warn("authenticationRequest ::"+authenticationRequest.getPassword());
            logger.warn("authenticationRequest ::"+authenticationRequest.getUserName());
            final User user = userService
                    .findByUserName(authenticationRequest.getUserName());

            UserCredentials credentials = new UserCredentials(user);

            authenticate(authenticationRequest.getUserName(), authenticationRequest.getPassword());

            HttpHeaders headers = getJwtHeader(credentials);
            logger.warn("Headers :"+headers);
            return new ResponseEntity<>(user, headers, HttpStatus.OK);
        } catch (Exception e) {
            throw new AuthException("Username or Password not valid!");
        }
    }

    private HttpHeaders getJwtHeader(UserCredentials user) {
        HttpHeaders headers = new HttpHeaders();
        headers.add("Jwt-Token", jwtUtils.generateToken(user));
        return headers;
    }

    private void authenticate(String username, String password) throws Exception {
        try {
            authenticationManager.authenticate(new UsernamePasswordAuthenticationToken(username, password));
        } catch (DisabledException e) {
            throw new Exception("USER_DISABLED", e);
        } catch (BadCredentialsException e) {
            throw new Exception("INVALID_CREDENTIALS", e);
        }
    }
}