package co.sol.mapper;

import java.util.List;
import co.sol.main.*;

public interface LogMapper {
	
	public List<LVO> getList(UVO user);
	public void scrap(LVO log);

}
