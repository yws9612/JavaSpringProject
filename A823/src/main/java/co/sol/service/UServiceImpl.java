package co.sol.service;

import org.springframework.stereotype.Service;

import co.sol.main.UVO;
import co.sol.mapper.UMapper;
import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j;

@Service
@Log4j
@RequiredArgsConstructor
public class UServiceImpl implements UService {
	
	private final UMapper mapper;
	
	
	@Override
	public String getId(UVO user) {
		
		return  mapper.getId(user);
	}

	@Override
	public String getPw(UVO user) {
		// TODO Auto-generated method stub
		return  mapper.getPw(user);
	}

}
