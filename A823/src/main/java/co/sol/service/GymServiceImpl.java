package co.sol.service;

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
	public List<GVO> getList(String search) {
		return mpr.getList(search);
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
