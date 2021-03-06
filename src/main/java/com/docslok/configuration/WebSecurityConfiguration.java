package com.docslok.configuration;

import com.docslok.service.UserDetails;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.builders.WebSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.web.util.matcher.AntPathRequestMatcher;

@Configuration
@EnableWebSecurity
public class WebSecurityConfiguration extends WebSecurityConfigurerAdapter {

	@Autowired
	private BCryptPasswordEncoder bCryptPasswordEncoder;

	@Autowired
	private UserDetails userDetailsService;

	@Override
	protected void configure(AuthenticationManagerBuilder auth) throws Exception {
		auth.userDetailsService(userDetailsService).passwordEncoder(bCryptPasswordEncoder);
	}

	@Override
	protected void configure(HttpSecurity http) throws Exception {

		http.authorizeRequests()
				.antMatchers("/login/**").permitAll()
				.antMatchers("/register/**").permitAll()
				.antMatchers("/post-registration/**").permitAll()
				.antMatchers("/contact-docslok/**").permitAll()
				.antMatchers("/about-docslok/**").permitAll()
				.antMatchers("/dashboard/**").hasRole("USER")
				.antMatchers("/dashboard/convert-documents/**").hasRole("USER")
				.antMatchers("/dashboard/issued-documents/**").hasRole("USER")
				.antMatchers("/dashboard/manage-account/**").hasRole("USER")
				.antMatchers("/dashboard/my-activities/**").hasRole("USER")
				.antMatchers("/dashboard//shared-documents/**").hasRole("USER")
				.antMatchers("/dashboard/storage-info/**").hasRole("USER")
				.antMatchers("/dashboard/update-profile/**").hasRole("USER")
				.antMatchers("/dashboard/upload-documents/**").hasRole("USER")
				.antMatchers("/confirm-account/**").hasRole("USER")
				.and().csrf().disable()
					.formLogin().loginPage("/login").failureUrl("/login?error=true").defaultSuccessUrl("/dashboard")
					.usernameParameter("username").passwordParameter("password")
				.and().logout().logoutRequestMatcher(new AntPathRequestMatcher("/logout")).logoutSuccessUrl("/login").and()
					.exceptionHandling();
	}

	@Override
	public void configure(WebSecurity web) throws Exception {
		web.ignoring().antMatchers("/resources/**", "/static/**","/css/**");
	}

}
