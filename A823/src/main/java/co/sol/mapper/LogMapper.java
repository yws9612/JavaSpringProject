package co.sol.mapper;

import java.util.List;
import java.util.Map;

import co.sol.main.*;

public interface LogMapper {
	
	//public List<Map<String, Object>> getList(UVO user);
	public List<LVO> getList_Scrap(int u_no);
	public List<LVO> getList_Board(int u_no);
	public List<LVO> getList_Comment(int u_no);
	public List<LVO> getList_Review(int u_no);
	public void scrap(LVO log);
	public int checkscrap(LVO log);
	public void deletescrap(LVO log);
	public void reportBoard(LVO log);
	public void reportComment(LVO log);
	public void reportReview(LVO log);
	public int checkreport(LVO log);

}
