package co.sol.mapper;

import org.apache.ibatis.annotations.Select;

public interface TMapper {
	
	@Select("SELECT sysdate FROM dual")
	public String getTime();
	
	

}
