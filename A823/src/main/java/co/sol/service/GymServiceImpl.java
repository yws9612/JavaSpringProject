package co.sol.service;

import java.util.HashMap;
import java.util.List;
import java.util.HashMap;

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
		return mpr.getList(local);
	}

	
	@Override
	public List<RVO> getReview(int g_no) {
		return mpr.getReview(g_no);
	}
	@Override
	public HashMap<String, Integer> review_info(int g_no) {
		List<RVO> li=mpr.getReview(g_no);
		//후기 점수 평균
		int sum=0;
		for(RVO r : li) {
			sum+=r.getR_score();
		}
		int avg=Math.round(sum/li.size());
		
		//후기 개수
		int cnt=0;
		if(li.size()>=10) {
			cnt=10;
		} else if (li.size()>=50) {
			cnt=50;
		} else if (li.size()>=100) {
			cnt=100;
		} else if (li.size()>=250) {
			cnt=250;
		} else if (li.size()>=500) {
			cnt=500;
		} else {
			cnt=li.size();
		}
		
		HashMap<String, Integer> rtn=new HashMap<>();
		rtn.put("avg_score", avg);
		rtn.put("cnt_review", cnt); 
		return rtn;
	}

	
	@Override
	public GVO getOneGym(int g_no) {
		return mpr.getOneGym(g_no);
	}

	
	@Override
	public void newreview(RVO review) {
		mpr.newreview(review);
	}


	@Override
	public void deleteReview(int r_no) {
		mpr.deleteReview(r_no);
	}

}
