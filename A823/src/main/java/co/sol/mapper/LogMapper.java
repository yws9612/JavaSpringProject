package co.sol.mapper;

import java.util.List;
import java.util.Map;

import co.sol.main.*;

public interface LogMapper {
	
	public List<Map<String, Object>> getList(UVO user);
	public void scrap(LVO log);
	public int checkscrap(LVO log);

}
