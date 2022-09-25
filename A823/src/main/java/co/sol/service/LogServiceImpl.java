package co.sol.service;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;

import co.sol.main.LVO;
import co.sol.main.UVO;
import co.sol.mapper.LogMapper;
import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j;

@Service
@Log4j
@RequiredArgsConstructor 
public class LogServiceImpl implements LogService {
	
	private final LogMapper mpr;

//	@Override
//	public List<Map<String, Object>> getList(UVO user) {
//		return mpr.getList(user);
//	}
	
	@Override
	public List<LVO> getList_Scrap(int u_no) {
		return mpr.getList_Scrap(u_no);
	}
	
	@Override
	public List<LVO> getList_Board(int u_no) {
		return mpr.getList_Board(u_no);
	}

	@Override
	public List<LVO> getList_Comment(int u_no) {
		return mpr.getList_Comment(u_no);
	}

	@Override
	public List<LVO> getList_Review(int u_no) {
		return mpr.getList_Review(u_no);
	}
	

	@Override
	public void scrap(LVO log) {
		mpr.scrap(log);
	}

	@Override
	public boolean checkscrap(LVO log) {
		if(mpr.checkscrap(log) == 0) {
			return true;
		}
		return false;
	}

	@Override
	public void deletescrap(int u_no, int b_no) {
		LVO tmp = new LVO();
		tmp.setB_no(b_no);
		tmp.setU_no(u_no);
		mpr.deletescrap(tmp);
	}

	@Override
	public void report(LVO log) {
		if(log.getC_no()!=0) {
			mpr.reportComment(log);
		}
		else if(log.getB_no()!=0) {
			mpr.reportBoard(log);
		}
		else if(log.getR_no()!=0) {
			mpr.reportReview(log);
		}
	}

	@Override
	public boolean checkreport(LVO log) {
		if(mpr.checkreport(log)==0) {
			return true;
		}
		return false;
	}



}
