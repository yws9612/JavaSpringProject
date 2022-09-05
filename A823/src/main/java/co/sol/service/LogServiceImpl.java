package co.sol.service;

import java.util.List;

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

	@Override
	public List<LVO> getList(UVO user) {
		return mpr.getList(user);
	}

	@Override
	public void scrap(LVO log) {
		mpr.scrap(log);
	}

}
