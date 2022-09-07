package co.sol.main;



import java.util.Date;


import lombok.Data;
import lombok.ToString;

@Data
public class UVO {
	
	private int u_no;
	
//	@NotEmpty(message = "값이 비어있습니다.")
	private String u_name;
	
//	@NotEmpty(message = "값이 비어있습니다.")
	private String u_id;
	
//	@NotEmpty(message = "값이 비어있습니다.")
	private String u_pw;
	
	private String u_addr;
	
//	@Email(message = "이메일 형식이 아닙니다.")
	private String u_email;
	
	private String u_admin;
	
	private Date u_joindate;
	
	public boolean matchPassword(String pw) {
		return this.u_pw.equals(pw);
	}
	
	
}
