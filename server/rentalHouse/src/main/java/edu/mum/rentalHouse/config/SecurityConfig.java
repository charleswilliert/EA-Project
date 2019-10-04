package edu.mum.rentalHouse.config;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.method.configuration.EnableGlobalMethodSecurity;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.builders.WebSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;

//@Configuration
//@EnableWebSecurity
@Configuration
@EnableWebSecurity
@EnableGlobalMethodSecurity(securedEnabled = true, prePostEnabled = true)
public class SecurityConfig  extends WebSecurityConfigurerAdapter{

//	@Bean
//    public PasswordEncoder passwordEncoder() {
//        return new BCryptPasswordEncoder();
//    }

    @Autowired
    private DataSource dataSource;

//    @Value("${spring.queries.users-query}")
//    private String usersQuery;
//
//    @Value("${spring.queries.roles-query}")
//    private String rolesQuery;

    /*@Override
    protected void configure(AuthenticationManagerBuilder auth) throws Exception {
        auth.jdbcAuthentication()
                .usersByUsernameQuery(usersQuery)
                .authoritiesByUsernameQuery(rolesQuery)
                .dataSource(dataSource)
                .passwordEncoder(passwordEncoder());

    }*/

    @Override
    public void configure(WebSecurity web) throws Exception {
        web.ignoring().antMatchers("/resources/**", "/static/**", "/css/**", "/js/**", "/img/**", "/fonts/**", "/sass/**");
    }

   /* @Override
    protected void configure(HttpSecurity http) throws Exception {
        http.authorizeRequests().antMatchers("/h2-console/**").permitAll();

        http.authorizeRequests()
                .antMatchers("/", "/login", "/registration", "/h2-console/**").permitAll()
                .antMatchers("/admin/**").hasAuthority("ADMIN")
                .antMatchers("/dba/**").hasAuthority("DBA")
                .antMatchers("/user/**").hasAuthority("USER")
                .anyRequest().authenticated() //all other urls can be access by any authenticated role
                .and()
                .formLogin() //enable form login instead of basic login
                .loginPage("/login")
                .failureUrl("/login-error")
                .usernameParameter("email")
                .passwordParameter("password")
                .defaultSuccessUrl("/")
                .and()
                .logout()
                .invalidateHttpSession(true)
                .deleteCookies("JSESSIONID")
                .and().csrf()
                .ignoringAntMatchers("/h2-console/**") //don't apply CSRF protection to /h2-console
                .and()
                .exceptionHandling().accessDeniedPage("/error/access-denied")
                .and().rememberMe().rememberMeParameter("remember-me").tokenRepository(tokenRepository())
        ;
        http.rememberMe().rememberMeParameter("remember-me").key("uniqueAndSecret");
        http.headers().frameOptions().disable();

    }
*/
//    @Bean
//    public PersistentTokenRepository tokenRepository() {
//        JdbcTokenRepositoryImpl jdbcTokenRepositoryImpl=new JdbcTokenRepositoryImpl();
//        jdbcTokenRepositoryImpl.setDataSource(dataSource);
//        return jdbcTokenRepositoryImpl;
//    }

	
	@Override
	protected void configure(AuthenticationManagerBuilder auth) throws Exception {
//		auth.inMemoryAuthentication()
//		.withUser("hm").password("{noop}hm").roles("ADMIN");
		auth.jdbcAuthentication().dataSource(dataSource)
		.usersByUsernameQuery("select email, password, 1 from user u where u.email=?")
		.authoritiesByUsernameQuery("select user_mail, role_name from user_roles u where u.user_mail=?")
		.passwordEncoder(passwordEncoder()).rolePrefix("ROLE_")
		;
	}

	@Bean
	public PasswordEncoder passwordEncoder() {
		return new BCryptPasswordEncoder();
	}

	@Override
	protected void configure(HttpSecurity http) throws Exception {
		
		http
		.authorizeRequests()
		.antMatchers("/register","/","/about","/login","/resources/**","/static/**","/css/**","/js/**","/images/**","/webjars/**").permitAll()
		.and().authorizeRequests().antMatchers("/allTenant").permitAll()
		.and().authorizeRequests().antMatchers("/addTenant").hasRole("ADMIN")
		.and().authorizeRequests().antMatchers("/addHouse").hasAnyRole("ADMIN")
		.and().authorizeRequests().antMatchers("/addApartment").hasAnyRole("ADMIN")
		.and().authorizeRequests().antMatchers("/addContract").hasAnyRole("ADMIN")
		.and().authorizeRequests().antMatchers("/addPayment").hasAnyRole("ADMIN")
		.and()
		.formLogin().loginPage("/login")
		.failureUrl("/login?error=true")
		.usernameParameter("name")
		.passwordParameter("password")
		.defaultSuccessUrl("/")
		.and().logout().logoutUrl("/logout").logoutSuccessUrl("/login");

//		.permitAll().defaultSuccessUrl("/profile").and().logout().logoutSuccessUrl("/login");
	}

/*	protected void configure(HttpSecurity http) throws Exception {
		http.authorizeRequests().antMatchers("/register","/","/about","/login","/css/**","/webjars/**").permitAll()
		.antMatchers("/profile").hasAnyRole("USER,ADMIN")
		.antMatchers("/users","/addTask").hasRole("ADMIN")
		.and().formLogin().loginPage("/login")
		.permitAll().defaultSuccessUrl("/profile").and().logout().logoutSuccessUrl("/login");
	}*/
	
}
