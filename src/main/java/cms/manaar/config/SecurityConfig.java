package cms.manaar.config;

import cms.manaar.config.JwtAuthEntryPoint;
import cms.manaar.filter.JwtFilter;
import cms.manaar.service.impl.UserServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.http.HttpMethod;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.config.Customizer;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.authentication.configuration.AuthenticationConfiguration;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.http.SessionCreationPolicy;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.provisioning.InMemoryUserDetailsManager;
import org.springframework.security.web.SecurityFilterChain;
import org.springframework.security.web.authentication.UsernamePasswordAuthenticationFilter;


@Configuration
@EnableWebSecurity
public class SecurityConfig {

    @Autowired
    private JwtAuthEntryPoint jwtAuthEntryPoint;

    @Autowired
    public SecurityConfig(UserServiceImpl userService, JwtAuthEntryPoint jwtAuthEntryPoint) {
        this.jwtAuthEntryPoint = jwtAuthEntryPoint;
    }


    @Bean
    public SecurityFilterChain filterChain(HttpSecurity httpSecurity) throws Exception {

        httpSecurity.cors((cors) -> cors.disable())
                .csrf((csrf) -> csrf.disable())
                        .authorizeHttpRequests((req) -> req
                                .requestMatchers("/register","/login").permitAll()
                                .requestMatchers( "/page/**").permitAll()
                                .requestMatchers("/getUsers","/getSpecificUser").hasAnyAuthority("VIEWER","ADMIN", "EDITOR")
                                .requestMatchers(HttpMethod.PUT,"/updateUser/**").hasAnyAuthority("EDITOR", "ADMIN")
                                .anyRequest().authenticated()
                        ).httpBasic(Customizer.withDefaults());
//        httpSecurity.cors().and().csrf().disable().authorizeHttpRequests().requestMatchers("/register","/login").permitAll()
//                        .anyRequest().authenticated().and().exceptionHandling().authenticationEntryPoint(jwtAuthEntryPoint).and().sessionManagement()
//                .sessionCreationPolicy(SessionCreationPolicy.STATELESS);
//        httpSecurity.authorizeHttpRequests().requestMatchers(HttpMethod.GET, "/getUsers").hasAuthority("ADMIN");

        httpSecurity.addFilterBefore(jwtFilter(), UsernamePasswordAuthenticationFilter.class);
        return httpSecurity.build();
    }
   /* @Bean
    public void configure(AuthenticationManagerBuilder authenticationManagerBuilder) throws Exception{
        authenticationManagerBuilder.inMemoryAuthentication().withUser("ADMIN").password(encoder().encode("admin"))
    }*/

    @Bean
    public PasswordEncoder encoder() {
        return new BCryptPasswordEncoder();
    }

    @Bean
    public AuthenticationManager authenticationManager(
            AuthenticationConfiguration authenticationConfiguration) throws Exception {
        return authenticationConfiguration.getAuthenticationManager();
    }

    @Bean
    public JwtFilter jwtFilter() {
        return new JwtFilter();
    }

//    @Bean
//    public UserDetailsService userDetailsService() {
//        UserDetails admin = User.builder().username("admin").password(encoder().encode("admin")).roles("ADMIN").build();
//        UserDetails editor = User.builder().username("editor").password(encoder().encode("editor")).roles("EDITOR").build();
//
//        return new InMemoryUserDetailsManager(admin, editor);
//    }

}
