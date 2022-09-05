package co.sol.main;



import lombok.Data;

@Data
public class UVO {
	
	private int u_no;
	
//	@NotEmpty(message = "값이 비어있습니다.")
	private String u_name;
	
//	@NotEmpty(message = "값이 비어있습니다.")
	private String u_id;
	
//	@NotEmpty(message = "값이 비어있습니다.")
//	@Min(message = "비밀번호는 6자 이상이여야합니다.", value = 6)
	private String u_pw;
	
	private String u_addr;
	
//	@Email(message = "이메일 형식이 아닙니다.")
	private String u_email;
	
	private String u_admin;
	
	private boolean userLogin;
	
}
