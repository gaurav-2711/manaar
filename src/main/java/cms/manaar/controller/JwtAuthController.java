package cms.manaar.controller;

import cms.manaar.config.JwtUtils;
import cms.manaar.models.JwtRequest;
import cms.manaar.models.Role;
import cms.manaar.models.User;
import cms.manaar.models.UserCredentials;
import cms.manaar.service.UserService;
import jakarta.security.auth.message.AuthException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;
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
import org.springframework.security.core.Authentication;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import java.util.Collection;
import java.util.List;

@Controller
public class JwtAuthController {

    public static final Logger logger = LoggerFactory.getLogger(JwtAuthController.class);

    @Autowired
    private AuthenticationManager authenticationManager;

    @Autowired
    private JwtUtils jwtUtils;

    @Autowired
    private UserService userService;

    @RequestMapping(value = "/authlogin", method = RequestMethod.POST)
    public String login(@ModelAttribute("loginForm") JwtRequest authenticationRequest, HttpServletRequest request) throws Exception {
//        ModelAndView modelAndView = new ModelAndView();
        try {
            logger.warn("authenticationRequest ::"+authenticationRequest.getPassword());
            logger.warn("authenticationRequest ::"+authenticationRequest.getUserName());
            final User user = userService
                    .findByUserName(authenticationRequest.getUserName());

            UserCredentials credentials = new UserCredentials(user);

            authenticate(authenticationRequest.getUserName(), authenticationRequest.getPassword(), credentials.getAuthorities());

            String jwtToken = jwtUtils.generateToken(credentials);
            HttpSession session = request.getSession();
            session.setAttribute("jwtToken", jwtToken);

            return "redirect:/home";

//            modelAndView.setViewName("dashboard");
//            HttpHeaders headers = getJwtHeader(credentials);

        } catch (Exception e) {

//            modelAndView.setViewName("page-signin");
            HttpSession session = request.getSession(false); // Retrieve existing session if it exists
            if (session != null) {
                session.invalidate(); // Invalidate the session
            }
            return "redirect:/login";

        }

    }

    private HttpHeaders getJwtHeader(UserCredentials user) {
        HttpHeaders headers = new HttpHeaders();
        headers.add("Jwt-Token", jwtUtils.generateToken(user));
        return headers;
    }

    private void authenticate(String username, String password, Collection<? extends GrantedAuthority> roles) throws Exception {
        try {
           Authentication authentication = authenticationManager.authenticate(new UsernamePasswordAuthenticationToken(username, password, roles));
            SecurityContextHolder.getContext().setAuthentication(authentication);
        } catch (DisabledException e) {
            throw new Exception("USER_DISABLED", e);
        } catch (BadCredentialsException e) {
            throw new Exception("INVALID_CREDENTIALS", e);
        }
    }
}