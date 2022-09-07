package co.sol.service;

import java.util.List;

import org.springframework.stereotype.Service;

import co.sol.main.DVO;
import co.sol.main.UVO;
import co.sol.mapper.UMapper;
import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j;

@Service
@Log4j
@RequiredArgsConstructor
public class UServiceImpl implements UService {
	
	private final UMapper mpr;

	@Override
	public void join(UVO user, DVO discord) {
		mpr.join(user, discord);
	}

	@Override
	public void modify(UVO user) {
		mpr.modify(user);
	}

	@Override
	public void leave(UVO user) {
		mpr.leave(user);
	}

	@Override
	public String getId(UVO user) {
		return mpr.getId(user);
	}

	@Override
	public String getPw(UVO user) {
		return mpr.getPw(user);
	}

	@Override
	public String getEmail(UVO user) {
		return mpr.getEmail(user);
	}

	@Override
	public void newPw(UVO user) {
		mpr.newPw(user);
	}

	@Override
	public UVO getUser(UVO user) {
		return mpr.getUser(user);
	}

	@Override
	public void addDiscord(UVO user, DVO discord) {
		mpr.addDiscord(user, discord);
	}

	@Override
	public List<DVO> getDiscord(UVO user) {
		return mpr.getDiscord(user);
	}

}
