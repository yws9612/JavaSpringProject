package co.sol.main;

import lombok.Data;

@Data
public class UserInfo {

	private String id;
	private String addr;
	
	public UserInfo(String id, String addr) {
		this.id = id;
		this.addr = addr;
	}
}
