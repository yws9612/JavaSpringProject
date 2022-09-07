package co.sol.service;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;

import co.sol.mapper.AdminMapper;
import lombok.RequiredArgsConstructor;


@Service
@RequiredArgsConstructor 
public class AdminServiceImpl implements AdminService {
	
	private final AdminMapper mpr;

	@Override
	public List<Map<String, Integer>> getBoardcnt() {
		return mpr.getBoardcnt();
	}

	@Override
	public List<Map<String, Integer>> getUsercnt() {
		return mpr.getUsercnt();
	}

}
