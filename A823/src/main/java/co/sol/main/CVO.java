package co.sol.main;

import java.util.Date;

import lombok.Data;

@Data
public class CVO {
	
	private int c_no;
	private String c_writer;
	private String c_con;
	private int b_no;
	private int c_level;
	private int c_step;
	private Date c_wdate;
	private Date c_udate;

}
