package co.sol.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;

import co.sol.main.GVO;
import co.sol.main.RVO;
import co.sol.mapper.GymMapper;
import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j;

@Service
@Log4j
@RequiredArgsConstructor
public class GymServiceImpl implements GymService {
	
	private final GymMapper mpr;

	@Override
	public List<GVO> getList(String local) {
		//HashMap<String, String> search=new HashMap<String, String>();
		//search.put("search", local);
		return mpr.getList(local);
	}

	@Override
	public List<Map<String, Object>> getReview(int g_no) {
		return mpr.getReview(g_no);
	}

	@Override
	public GVO getOneGym(int g_no) {
		return mpr.getOneGym(g_no);
	}

	@Override
	public void newreview(RVO review) {
		mpr.newreview(review);
	}

}
