package co.sol.service;

import java.util.List;

import org.springframework.stereotype.Service;

import co.sol.main.EVO;
import co.sol.mapper.DataMapper;
import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j;

@Service
@Log4j
@RequiredArgsConstructor 
public class DataServiceImpl implements DataService {
	
	private final DataMapper mpr;

	@Override
	public List<EVO> getEList(EVO exercise) {
		return mpr.getEList(exercise);
	}

	@Override
	public void addExercise(EVO exercise) {
		mpr.addExercise(exercise);
	}

}
