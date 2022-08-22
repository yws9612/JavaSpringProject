package co.sol.service;

import java.util.List;

import org.springframework.stereotype.Service;
import co.sol.main.BVO;
import co.sol.main.Basic;
import co.sol.mapper.BMapper;
import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j;

@Service
@Log4j
@RequiredArgsConstructor 
public class BServiceImpl implements BService{
	
	private final BMapper mapper;

	@Override
	public Long submit(BVO bo) {
		
		mapper.inkey(bo);
		return bo.getBnum();
	}

	@Override
	public BVO get(int bnum) {
		return mapper.sel(bnum);
		
	}

	@Override
	public int modify(BVO bo) {
		return mapper.up(bo);
	}

	@Override
	public int del(int bnum) {
		return mapper.del(bnum);
	}

	@Override
	public List<BVO> getList() {
		return mapper.getList();
	}

	@Override
	public List<BVO> getPage(Basic ba) {
		return mapper.getPage(ba);
	}
	
	@Override
	public int getTotal(Basic ba) {
		return mapper.getCount(ba);
	}
}




