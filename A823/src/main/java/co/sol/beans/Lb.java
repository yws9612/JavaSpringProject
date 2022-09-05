package co.sol.beans;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.context.annotation.SessionScope;

import co.sol.main.UVO;

@Configuration
public class Lb {

	@Bean("loginBean")
	@SessionScope
	public UVO loginBean() {
		return new UVO();
	}
}
