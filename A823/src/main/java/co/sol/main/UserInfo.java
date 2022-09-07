package co.sol.main;

import lombok.Data;

@Data
public class UserInfo {

	private String id;
	private String addr;
	private String name;
	
	public UserInfo(String id, String addr, String name) {
		this.id = id;
		this.addr = addr;
		this.name = name;
	}
}
