package co.sol.service;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
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
	
	private final UMapper mapper;
	
	
	@Resource(name = "loginBean")
	private UVO loginBean;
	
	
	@Override
	public String getId(UVO user) {
		
		return  mapper.getId(user);
	}

	@Override
	public void updatePw(UVO user) {
		// TODO Auto-generated method stub
		mapper.updatePw(user);
	}

	@Override
	public String getEmail(UVO user) {
		// TODO Auto-generated method stub
		return mapper.getEmail(user);
	}

	@Override
	public void join(UVO user, DVO data) {
		// TODO Auto-generated method stub
		mapper.join(user, data);
	}

	@Override
	public void getLoginUserInfo(UVO user) {
		// TODO Auto-generated method stub
		UVO user2 = mapper.getLoginUserInfo(user);
	
		if(user2 != null) {
			loginBean.setU_no(user2.getU_no());
			loginBean.setU_id(user2.getU_id());
			loginBean.setUserLogin(true);
		}else {
		}
	}

}
