package co.sol.service;

import java.util.List;

import org.springframework.stereotype.Service;

import co.sol.main.CVO;
import co.sol.mapper.CMapper;
import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j;

@Service
@Log4j
@RequiredArgsConstructor 
public class CServiceImpl implements CService {
	
	private final CMapper mpr;
	
	@Override
	public List<CVO> getList(int b_no) {		
		return mpr.getList(b_no);
	}

	@Override
	public void insert(CVO comment) {
		mpr.insert(comment);
	}

	@Override
	public void modify(CVO comment) {
		mpr.modify(comment);
	}

	@Override
	public void delete(CVO comment) {
		mpr.delete(comment);
	}

}
