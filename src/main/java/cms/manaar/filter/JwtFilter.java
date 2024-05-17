package cms.manaar.filter;

import java.io.IOException;

import cms.manaar.config.JwtUtils;
import cms.manaar.models.User;
import cms.manaar.models.UserCredentials;
import cms.manaar.service.impl.UserServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.InsufficientAuthenticationException;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.WebAuthenticationDetailsSource;
import org.springframework.web.filter.OncePerRequestFilter;


import io.jsonwebtoken.ExpiredJwtException;
import jakarta.servlet.FilterChain;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class JwtFilter extends OncePerRequestFilter {

    @Autowired
    private JwtUtils jwtUtils;

    @Autowired
    private UserServiceImpl userService;

    @Override
    protected void doFilterInternal(HttpServletRequest request, HttpServletResponse response, FilterChain chain)
            throws ServletException, IOException, InsufficientAuthenticationException {


        if (request.getRequestURI().equals("/login") || request.getRequestURI().equals("/register")) {
            chain.doFilter(request, response);
            return;
        }

        final String requestTokenHeader = request.getHeader("Authorization");
        logger.warn(requestTokenHeader);

        String username = null;
        String jwtToken = null;

        if (requestTokenHeader != null && requestTokenHeader.startsWith("Bearer ")) {
             jwtToken = requestTokenHeader.substring(7);

            try {
                username = jwtUtils.getUsernameFromToken(jwtToken);
                System.out.println("username : "+username);
                System.out.println("jwtToken : "+jwtToken);
            } catch (IllegalArgumentException e) {
                logger.error("Unable to get JWT Token: {}");
            } catch (ExpiredJwtException e) {
                logger.warn("JWT Token has expired: {}");
                throw new InsufficientAuthenticationException("Session Expired!");
            }
        } else {
            logger.warn("JWT Token does not begin with Bearer String");
        }

        if (username != null && SecurityContextHolder.getContext().getAuthentication() == null) {
            User loginUser = userService.findByUserName(username);

            if (loginUser != null) {
                UserCredentials user = new UserCredentials(loginUser);

                if (jwtUtils.validateToken(jwtToken, user)) {
                    UsernamePasswordAuthenticationToken authenticationToken =
                            new UsernamePasswordAuthenticationToken(user, null, user.getAuthorities());
                    authenticationToken.setDetails(new WebAuthenticationDetailsSource().buildDetails(request));
                    SecurityContextHolder.getContext().setAuthentication(authenticationToken);
                }
            }
        }

        chain.doFilter(request, response);
    }


}