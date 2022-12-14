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
	public int submit(BVO bo) {
		if(bo.getB_open() == null) {
			bo.setB_open("Y");
		}
		mapper.insert(bo);
		return bo.getB_no();
	}

	
	@Override
	public BVO get(int b_no) {
		mapper.upViewcount(b_no);
		return mapper.sel(b_no);		
	}

	
	@Override
	public int modify(BVO bo) {
		if(bo.getB_open() == null) {
			bo.setB_open("Y");
		}
		return mapper.up(bo);
	}

	
	@Override
	public int del(int b_no) {
		return mapper.del(b_no);
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


	@Override
	public List<BVO> topList() {
		return mapper.topList();
	}


	@Override
	public List<BVO> BList() {
		// TODO Auto-generated method stub
		return mapper.BList();
	}


	@Override
	public List<BVO> BList_diary() {
		// TODO Auto-generated method stub
		return mapper.BList_diary();
	}
}




