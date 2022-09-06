package co.sol.main;

import javax.validation.constraints.NotEmpty;

import lombok.Data;

@Data
public class LoginCommand {

	@NotEmpty(message = "아이디를 입력해주세요")
	private String id;
	
	@NotEmpty(message = "비밀번호를 입력해주세요")
	private String pw;
	private boolean rememberId;
	
}
