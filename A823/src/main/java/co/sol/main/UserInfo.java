package co.sol.main;

import lombok.Data;

@Data
public class UserInfo {

	private String u_id;
	private String u_addr;
	private String u_name;
	private int u_no; 
	
	public UserInfo(String u_id, String u_addr, String u_name, int u_no) {
		this.u_id = u_id;
		this.u_addr = u_addr;
		this.u_name = u_name;
		this.u_no = u_no;
	}
}
